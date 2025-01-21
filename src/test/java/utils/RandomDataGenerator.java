package utils;

import net.datafaker.Faker;

public class RandomDataGenerator {

    static Faker faker = new Faker();

    public static String generateRandomNumber(int length) {
        return faker.number().digits(length);
    }

    public static String getRandomFullName() {
        return faker.name().fullName();
    }

    public static String getRandomFullName(String name) {
        return faker.name().fullName();
    }

}
