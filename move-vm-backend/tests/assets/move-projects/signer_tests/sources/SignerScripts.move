script {
    use TestAccount::BasicCoin;

    fun publish_balance_under_the_signer__signer_the_first_arg(s: signer, a: u32) {
        BasicCoin::publish_balance(&s);
    }
}

script {
    use TestAccount::BasicCoin;

    fun publish_balance_under_the_signer__signer_the_second_arg(a: u32, s: signer) {
        BasicCoin::publish_balance(&s);
    }
}

script {
    use TestAccount::BasicCoin;
    use std::vector;

    fun publish_balance_where_signer_is_within_the_vector(a: &mut vector<signer>) {
        let s = vector::pop_back(a);
        BasicCoin::publish_balance(&s);
    }
}
