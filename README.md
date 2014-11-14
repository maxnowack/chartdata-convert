chartdata-convert
=================

Library for converting data in the format for a specific library

Supported libraries:
* chartist
* chart.js

##Installation
```
npm install chartdata-convert
```

##Usage
```javascript
ChartDataConvert = require('chartdata-convert');

options = {
  output: 'chartjs'
};
chartdata = new ChartDataConvert(options);

data = [{
    label: 'January'
    data: [10,100,200]
  },{
    label: 'February'
    data: [20,200,300]
  },{
    label: 'March'
    data: [30,300,400]
  }
];

chartjsdata = chartdata.convert(data);
/*
{
  labels: ['January', 'February', 'March']
  datasets: [
    { data: [10, 20, 30] },
    { data: [100, 200, 300] },
    { data: [200, 300, 400] }
  ]
}
*/
```
