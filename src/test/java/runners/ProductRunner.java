package runners;

import com.intuit.karate.junit5.Karate;

class ProductRunner {
    @Karate.Test
    Karate runProduct() {
        return Karate.run("classpath:features/product").relativeTo(getClass());
    }
}
