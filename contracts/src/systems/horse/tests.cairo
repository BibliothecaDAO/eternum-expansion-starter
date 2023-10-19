use starter::systems::horse::interface::{IHorseSystemsDispatcher, IHorseSystemsDispatcherTrait};
use starter::systems::horse::horse_systems::horse_systems;

use eternum::utils::testing::{spawn_eternum, deploy_system};

use dojo::world::{IWorldDispatcher, IWorldDispatcherTrait};

use starknet::contract_address_const;

use core::array::ArrayTrait;
use core::traits::TryInto;
use core::option::OptionTrait;

#[test]
#[available_gas(3000000000000)]  
fn test_create_horse() {
    #let world = spawn_eternum();

    // settle a realm
    // set realm entity
    //let realm_systems_address 
        //= deploy_system(test_realm_systems::TEST_CLASS_HASH);
    //let realm_systems_dispatcher = IRealmSystemsDispatcher {
        //contract_address: realm_systems_address
    //};

        //let realm_entity_id = realm_systems_dispatcher.create(
        //world,
        //1, // realm id
        //starknet::get_contract_address(), // owner
        //0x20309, // resource_types_packed // 2,3,9 // stone, coal, gold
        //3, // resource_types_count
        //5, // cities
        //5, // harbors
        //5, // rivers
        //5, // regions
        //1, // wonder
        //1, // order
        //Position { x: 500200, y: 1, entity_id: 1_u128 }, // position  
                //// x needs to be > 470200 to get zone
    //);

    //// set some resources to realm entity
    //starknet::testing::set_contract_address(world.executor());
        //set!(world, ( 
        //Owner { entity_id, address: contract_address_const::<'entity'>()},
        //Resource {
            //entity_id,
            //resource_type: ResourceTypes::STONE,
            //balance: 400
        //},
        //Resource {
            //entity_id,
            //resource_type: ResourceTypes::WOOD,
            //balance: 400
        //},
    //));

    //starknet::testing::set_contract_address(contract_address_const::<'entity'>());

    //// declare horse contract
    //let horse_systems_address = deploy_system(horse_systems::TEST_CLASS_HASH);
    //let horse_systems_dispatcher = IHorseSystemsDispatcher {
        //contract_address: horse_systems_address
    //};

    //// create horse
    //let horse_id = horse_systems_dispatcher.create_horse(
        //world,
        //realm_entity_id,
    //);


    //let (owner, capacity, position, movable) = get!(world, horse_id, (Owner, Capacity, Position, Movable))

    //assert(owner.address == contract_address_const::<'entity'>, 'wrong owner');
    //assert(movable.sec_per_km == HORSE_SPEED_SEC_PER_KM, 'wrong speed');
    //assert(position.x == 500200, 'wrong x');
    //assert(position.y == 1, 'wrong y');
    //assert(capacity.weight_gram == HORSE_CAPACITY_GRAMS, 'wrong capacity');
}





