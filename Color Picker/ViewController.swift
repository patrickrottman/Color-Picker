//
//  ViewController.swift
//  Color Picker
//
//  Created by Patrick Rottman on 10/5/18.
//  Copyright © 2018 Patrick Rottman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var label: UILabel!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    var colors = [Color(name: "red", uiColor: UIColor.red),
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow", uiColor: UIColor.yellow),
                  Color(name: "green", uiColor: UIColor.green),
                  Color(name: "blue", uiColor: UIColor.blue),
                  Color(name: "purple", uiColor: UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = colors[0].uiColor
        label.text = colors[0].name
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
    }
    
}
