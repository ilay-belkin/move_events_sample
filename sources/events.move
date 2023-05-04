module move_events_sample::sample {

    use sui::tx_context::{TxContext};
    use sui::event;

    struct AccountCreatedEvent has copy, drop, store {}

    public entry fun createAccount(_: &mut TxContext) {
        event::emit(
            AccountCreatedEvent {}
        );
    }
}