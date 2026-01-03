module counter_week2::counter_week2 {
    use sui::tx_context;
    use sui::object;
   
    // Simple, plain Move struct (not a Sui object). This compiles cleanly
    // and is suitable for learning/testing off-chain logic.
        public struct Counter {
            value: u64,
    }

    // Create a new counter (regular public function, not an `entry`).
        public fun create_counter(initial_value: u64): Counter {
        Counter { value: initial_value }
    }

    // Increment the counter value by 1
        public fun increment(counter: &mut Counter) {
        counter.value = counter.value + 1;
    }

    // Get the current value of the counter
        public fun get_value(counter: &Counter): u64 {
        counter.value
    }
  
}
