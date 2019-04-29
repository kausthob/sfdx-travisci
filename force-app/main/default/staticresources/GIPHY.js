window._GIPHY = (function() {
    var apiKey = "2SO7tGFxcwXeEuG8dNeQkJuUvEAKsY3S";
    var _results = null;

    return { //public API
        getApiKey: function() {
            return apiKey;
        },
        getResults: function() {
            return _results;
        },
        setResults: function(results) {
          _results = results
        }
    };
}());

