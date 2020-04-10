//
//  ViewController.swift
//  ChartDemo
//
//  Created by Rajesh Kumar M on 06/04/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var viewChatcontainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Bar chart with Image.
        //let childView = UIHostingController(rootView: BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly",style: Styles.barChartStyleNeonBlueLight))/        
        
        // Bar chart with  out Image.
        let childView = UIHostingController(rootView: BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly",style: Styles.barChartStyleNeonBlueLight,cornerImage: nil))
        
        addChild(childView)

        childView.view.frame = viewChatcontainer.bounds
        viewChatcontainer.addSubview(childView.view)

    }


}


struct LineCharts:View {
    var body: some View {
        VStack{
            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
        }
    }
}

struct LineChartsFull: View {
    var body: some View {
        VStack{
            LineView(data: [10,20,5,15,40,30], title: "Line chart", legend: "Full screen").padding()
            // legend is optional, use optional .padding()
        }
    }
}

struct PieCharts:View {
    var body: some View {
        VStack{
            PieChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title", legend: "Full screen").padding()
        }
    }
}



// TODO: Need to check it this

struct BarCharts:View {
    var body: some View {
        VStack{
            BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly",style: Styles.barChartStyleNeonBlueDark) // legend is optional

        }
    }
    
    
}


//============================
/*
struct PieCharts:View {
    var body: some View {
        VStack{
           // PieChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
            PieChartRow(data: [8,23,54,32,12,37,7,23,43], backgroundColor: Color(red: 252.0/255.0, green: 236.0/255.0, blue: 234.0/255.0), accentColor:  Color(red: 252.0/255.0, green: 236.0/255.0, blue: 234.0/255.0))
        }
    }
}*/
