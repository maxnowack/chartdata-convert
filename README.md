chartdata-convert
=================

Library for converting data in the format for a specific library

Supported libraries:
* chartist
* chart.js

Installation
```
npm install chartdata-convert
```

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
  }];

chartjsdata = chartdata.convert(data);

```
