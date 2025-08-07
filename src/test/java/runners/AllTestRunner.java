package runners;

import com.intuit.karate.junit5.Karate;

class AllTestRunner {
    @Karate.Test
    Karate runAll() {
        return Karate.run().relativeTo(getClass());
    }
}
