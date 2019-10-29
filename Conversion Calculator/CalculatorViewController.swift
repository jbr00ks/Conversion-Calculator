//
//  CalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Joshua Brooks on 10/29/19.
//  Copyright © 2019 Joshua Brooks. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var converters = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "celcius to farenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    var selectedConverter: Converter?
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBAction func converter(_ sender: Any) {
        let alert = UIAlertController(title: "Choose converter", message: "", preferredStyle: UIAlertController.Style.actionSheet)
        for converter in converters {
            alert.addAction(UIAlertAction(title: converter.label, style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                self.selectedConverter = converter
                self.outputDisplay.text = converter.outputUnit
                self.inputDisplay.text = converter.inputUnit
            }))
        }
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedConverter = converters[0]
        outputDisplay.text = selectedConverter?.outputUnit
        inputDisplay.text = selectedConverter?.inputUnit
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
