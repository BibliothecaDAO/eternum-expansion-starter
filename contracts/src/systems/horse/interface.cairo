use eternum::alias::ID;

use dojo::world::IWorldDispatcher;


#[starknet::interface]
trait IHorseSystems<TContractState> {
    fn create_horse(self: @TContractState, world: IWorldDispatcher, entity_id:ID) -> ID;
}