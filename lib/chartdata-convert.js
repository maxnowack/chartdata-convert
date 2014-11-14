(function() {
  var ChartdataConvert;

  module.exports = ChartdataConvert = (function() {
    function ChartdataConvert(options) {
      this.options = options;
    }

    ChartdataConvert.prototype.convert = function(data) {
      switch (this.options.output) {
        case 'chartist':
          return this._chartistConvert(data);
        case 'chartjs':
          return this._chartjsConvert(data);
      }
    };

    ChartdataConvert.prototype._chartistConvert = function(data) {
      var d, i, i2, obj, retVal, _i, _j, _len, _len1, _ref;
      retVal = {
        labels: [],
        series: []
      };
      for (i = _i = 0, _len = data.length; _i < _len; i = ++_i) {
        obj = data[i];
        retVal.labels.push(obj.label);
        _ref = obj.data;
        for (i2 = _j = 0, _len1 = _ref.length; _j < _len1; i2 = ++_j) {
          d = _ref[i2];
          if (typeof retVal.series[i2] === "undefined") {
            retVal.series.push([]);
          }
          retVal.series[i2].push(d);
        }
      }
      return retVal;
    };

    return ChartdataConvert;

  })();

}).call(this);
