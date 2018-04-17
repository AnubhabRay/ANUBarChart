//
//  ViewController.swift
//  BarChartView
//
//  Created by Anubhab Ray on 10/04/18.
//  Copyright © 2018 Anubhab Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwBarChart: AnuBarChartView!
    var arrData = [BarModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prepareData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func prepareData()  {
        var c = 0
        while c < 17 {
            let m = BarModel()
            m.color = c % 2 == 0 ? .blue : .orange
            m.ratio = Float(c) / 30.0
            m.text  = "\(c)"
             m.textAxis = "200\(c%10)"
            c = c + 1
           
            arrData.append(m)
        }
        setData()
    }
    func setData() {
        vwBarChart.arrItems = arrData
        vwBarChart.isShowAxis = true
        vwBarChart.barSpacing = 5
        vwBarChart.barWidth = 25
        vwBarChart.fontText =  UIFont(name: "AvenirNext-Regular", size: 10.0)
        vwBarChart.fontAxistext =  UIFont(name: "AvenirNext-Bold", size: 10.0)
        vwBarChart.isShowItemText = false
        vwBarChart.axisColor = UIColor.lightGray
        vwBarChart.updateChart()
        
    }
}
// Baah khub sundor. Well done - Soham
