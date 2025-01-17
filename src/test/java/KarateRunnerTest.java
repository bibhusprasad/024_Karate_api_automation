import com.intuit.karate.junit5.Karate;

public class KarateRunnerTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate testHelloWorld() {
        return Karate.run().tags("HelloWorld").relativeTo(getClass());
    }

    @Karate.Test
    Karate testAirline() {
        return Karate.run().tags("Airline").relativeTo(getClass());
    }
}
