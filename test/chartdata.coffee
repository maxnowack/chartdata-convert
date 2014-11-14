ChartDataConvert = require '../lib/chartdata-convert'
expect = require('chai').expect

describe 'chartdata convert', (done)->
  it 'should covert to chartist format', (done)->
    chartdata = new ChartDataConvert
      output: 'chartist'
    testdata = [
      label: 'January'
      data: [10,100,200]
    ,
      label: 'February'
      data: [20,200,300]
    ,
      label: 'March'
      data: [30,300,400]
    ]

    expected = {
      labels: ['January', 'February', 'March']
      series: [
        [10, 20, 30]
        [100, 200, 300]
        [200, 300, 400]
      ]
    }
    output = chartdata.convert(testdata)
    console.log output
    expect(output).to.eql expected
    done()
