import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class KarateRunnerTest {

    @Test
    public void testParallel() {
        System.setProperty("karate.env", "dev");
        Results results = Runner.path("classpath:").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    @Karate.Test
    Karate testAll() {
        System.setProperty("karate.env", "dev");
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate testHelloWorld() {
        return Karate.run().tags("HelloWorld").relativeTo(getClass());
    }

    @Karate.Test
    Karate testAirline() {
        System.setProperty("karate.env", "dev");
        return Karate.run().tags("Airline").relativeTo(getClass());
    }

    @Karate.Test
    Karate testJsonPayload() {
        return Karate.run().tags("JsonPayload").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGenerateRandomDataForPayload() {
        return Karate.run().tags("DataFaker").relativeTo(getClass());
    }

    @Karate.Test
    Karate testKarateConcepts() {
        return Karate.run().tags("KarateConcepts").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        System.setProperty("karate.env", "dev");
        return Karate.run()
                .tags("@Run") //run all @Run scenario
                //.tags("@Smoke") //run all @Smoke scenario
                //.tags("@Smoke", "@Sanity") //run all @Smoke and @Sanity scenario
                //.tags("~@Smoke") //run all use case except @Smoke
                //.tags("@Sanity, ~@Smoke") //run all @Sanity and exclude except @Smoke : run 2 use case
                //.tags("@Sanity", "~@Smoke") //run all @Sanity and exclude except @Smoke : run 1 use case. Strict matching
                .relativeTo(getClass());
    }

}
