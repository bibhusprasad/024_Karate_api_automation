function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    karate.configure('retry', {count : 5, interval : 5000})
    var config = {
        env: env,
        fNameGloVal: "bibhu global",
        lNameGloVal: "samal global"
    }
    if (env == 'dev') {
        config.airlineUrl = "https://api.instantwebtools.net/v1/airlines/"
        config.authEndPointUrl = "https://dev-457931.okta.com/oauth2/aushd4c95QtFHsfWt4x6/v1/token"
        config.airlineAuthUrl = "https://api.instantwebtools.net/v2/airlines/"
    } else if (env == 'e2e') {
        // customize
    }
    return config;
}