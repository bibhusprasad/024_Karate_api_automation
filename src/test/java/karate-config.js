function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        env: env,
        createAirlineUrl: "https://api.instantwebtools.net/v1/airlines"
    }
    if (env == 'dev') {
        config.getAirlineUrl = "https://api.instantwebtools.net/v1/airlines/"
    } else if (env == 'e2e') {
        // customize
    }
    return config;
}