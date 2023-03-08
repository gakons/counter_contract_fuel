contract;

storage {
    counter: u64 = 0,
}

abi Counter {
    #[storage(read, write)]
    fn increment();

    #[storage(read)]
    fn counter() -> u64;
}

impl Counter for Contract {
    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }

    #[storage(read)]
    fn counter() -> u64 {
        storage.counter
    }
}