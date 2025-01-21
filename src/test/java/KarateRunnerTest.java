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
}
