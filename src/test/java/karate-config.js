function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        env: env,
        fNameGloVal: "bibhu global",
        lNameGloVal: "samal global"
    }
    if (env == 'dev') {
        config.airlineUrl = "https://api.instantwebtools.net/v1/airlines/"
    } else if (env == 'e2e') {
        // customize
    }
    return config;
}