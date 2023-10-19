#[dojo::contract]
mod horse_systems {
    use eternum::alias::ID;
    use eternum::models::owner::Owner;
    use eternum::models::position::{Position};
    use eternum::models::realm::Realm;
    use eternum::models::capacity::Capacity;
    use eternum::models::resources::Resource;
    use eternum::models::movable::{Movable, ArrivalTime};
    use eternum::constants::ResourceTypes;
    use starter::constants::{
        HORSE_SPEED_SEC_PER_KM, HORSE_CAPACITY_GRAMS, RESOURCE_COST_AMOUNT
    };

    use starter::systems::horse::interface::{
        IHorseSystems
    };

    use core::poseidon::poseidon_hash_span;

    #[external(v0)]
    impl HorseSystemsImpl of IHorseSystems<ContractState>{

        /// Creates a horse
        ///
        /// Horses are entities that can move to different positions
        /// with a certain speed and that can carry other entities 
        /// or resources
        ///
        /// # Arguments
        ///
        /// * `entity_id` - The id of the realm that creates the horse
        ///
        fn create_horse(
            self: @ContractState, world: IWorldDispatcher,
             entity_id: u128
        ) -> ID {
            // Ensure that the entity is a realm
            let (owner, realm, position) = get!(world, entity_id, (Owner, Realm, Position));

            // Ensure the entity is owned by the caller
            let caller = starknet::get_caller_address();
            assert(caller == owner.address, 'entity is not owned by caller');

            let entity_resource = get!(world, (entity_id, ResourceTypes::WHEAT), Resource);
            assert(entity_resource.balance >= RESOURCE_COST_AMOUNT, 'not enough resources');
            set!(world, (
                Resource { 
                    entity_id, 
                    resource_type: ResourceTypes::WHEAT, 
                    balance: entity_resource.balance - RESOURCE_COST_AMOUNT 
                }
            ));

            // Instantiate the new horse
            let id = world.uuid();
            set!(world, (
                    Position {
                        entity_id: id.into(), 
                        x: position.x, 
                        y: position.y
                    }, 
                    Owner {
                        entity_id: id.into(), 
                        address: caller
                    }, 
                    Movable {
                        entity_id: id.into(), 
                        sec_per_km: HORSE_SPEED_SEC_PER_KM, 
                        blocked: false, 
                    }, 
                    ArrivalTime {
                        entity_id: id.into(), 
                        arrives_at: 0, 
                    }, 
                    Capacity {
                        entity_id: id.into(), 
                        weight_gram: HORSE_CAPACITY_GRAMS,
                    }
                )
            );
            id.into()
        }
    }
}
