//
//  ViewController.swift
//  Graph Demo
//
//  Created by Fahim Rahman on 9/4/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit
import SwiftChart

class ViewController: UIViewController {
    
    @IBOutlet weak var graphView: Chart!
    
    let data: [Double] = [35.92, 34.3, 31.76, 29.23, 27.58, 26.43]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let labelsAsString = ["" ,"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", ""]
        
        let labelsAsString = ["1" ,"2", "3", "4", "5", "6"]
        
        let series = ChartSeries(data)
        series.colors = (
            above: ChartColors.purpleColor(),
            below: ChartColors.orangeColor(),
            zeroLevel: 26.43
        )
        series.area = true
        
        graphView.add(series)
        print("###",data)
        // Set minimum and maximum values for y-axis
        graphView.minY = 26.43
        graphView.maxY = 35.92

        // Format y-axis, e.g. with units
        graphView.yLabelsFormatter = { String(Int($1)) + " ºC" }
        
        
        graphView.xLabelsFormatter = { (labelIndex: Int, labelValue: Double) -> String in

            return labelsAsString[labelIndex]
        }

    }
    
//    func showControllerWithLabel() {
//
//        label.countFrom(23.01 - 1, to: 23.01, withDuration: 0.7)
//
//        label.setUpdateBlock { value, label in
//            label.text = String(format: "%.2f%", value)
//        }
//    }
}
