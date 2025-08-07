package runners;

import com.intuit.karate.junit5.Karate;

class UserRunner {
    @Karate.Test
    Karate runUser() {
        return Karate.run("classpath:features/user").relativeTo(getClass());
    }
}
