# ANUBarChart

A fully customisable Bar Chart which provides complete flexibility in design
..* colors
* size
* view frame fits any parent view
* axis or without axis
* many more


  pod 'ANUBarChartView'
  
  
  If you face any problem with the pod, keep it simple. 
  Download the [all the files in BarChartVw folder](https://github.com/AnubhabRay/ANUBarChart/tree/master/BarChartView/BarChartVw) and add them in your project.
  
  Take a view and assign its class to 'AnuBarChartView' and carry on with your work. It is that simple.
  
  For any modification, drag an outlet and assign the properties to your wish.
  
  For example:
  ```
   @IBOutlet weak var vwBarChart: AnuBarChartView!
   ```
   
  ```
        vwBarChart.arrItems = arrData
        vwBarChart.isShowAxis = true
        vwBarChart.barSpacing = 5
        vwBarChart.barWidth = 25
        vwBarChart.fontText =  UIFont(name: "AvenirNext-Regular", size: 10.0)
        vwBarChart.fontAxistext =  UIFont(name: "AvenirNext-Bold", size: 10.0)
        vwBarChart.isShowItemText = false
        vwBarChart.axisColor = UIColor.lightGray
        vwBarChart.updateChart()
  ```
  
  
  Download the full project for demo purpose.
