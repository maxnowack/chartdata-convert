module.exports = class ChartdataConvert

  constructor: (@options) ->

  convert: (data)->
    switch @options.output
      when 'chartist' then @_chartistConvert data
      when 'chartjs' then @_chartjsConvert data

  _chartistConvert: (data)->
    retVal =
      labels: []
      series: []

    for obj, i in data
      retVal.labels.push obj.label
      for d, i2 in obj.data
        retVal.series.push [] if typeof(retVal.series[i2]) is "undefined"
        retVal.series[i2].push d
    retVal

  _chartjsConvert: (data)->
    retVal =
      labels: []
      datasets: []

    for obj, i in data
      retVal.labels.push obj.label
      for d, i2 in obj.data
        retVal.datasets.push (data:[]) if typeof(retVal.datasets[i2]) is "undefined"
        retVal.datasets[i2].data.push d
    retVal
