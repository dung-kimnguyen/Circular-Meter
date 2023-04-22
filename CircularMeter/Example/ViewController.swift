//
//  ViewController.swift
//  SSCircularMeter
//
//  Created by Dung Kim Nguyen on 02/10/18.
//  Copyright © 2018 Dung Kim Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var CircularRingMeter: SSCircularRingMeter!
    
    // MARK: - variable declaration
    let arrValues: [Int] = [Int](0...30)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CircularRingMeter.delegate = self
        self.setCircularRingMeterColor()
    }
    
    // MARK: -
    // MARK: - Circular Meter setup
    fileprivate func setCircularRingMeterColor() {
        let indexOfValue = 0
        let titleColor = UIColor(red: 31.0/255.0, green: 0.0/255.0, blue: 5.0/255.0, alpha: 1.0)
        let shadowColor = UIColor.black
        CircularRingMeter.setValues(initialValue: arrValues[indexOfValue].toCGFloat(), minValue: arrValues[0].toCGFloat(), maxValue: arrValues[arrValues.count-1].toCGFloat())
        CircularRingMeter.setCircluarRingShadow(shadowColor: shadowColor, radius: 2)
        CircularRingMeter.setShadowOfAllButtons(color: shadowColor, opacity: 0.5, offset: 0, radius: 1)
        CircularRingMeter.setTextLabel(labelFont: UIFont.systemFont(ofSize: 60), textColor: titleColor)
        CircularRingMeter.setValueTextFieldDelegate(viewController: self)
        CircularRingMeter.setArrayValues(labelValues: arrValues, currentIndex: indexOfValue)
        CircularRingMeter.setCircluarRingColor(innerCirlce: UIColor.white, outerCircle: UIColor.red)
        CircularRingMeter.setBackgroundColorOfAllButtons(startPointColor: UIColor.red, endPointColor: UIColor.lightGray, knobColor: UIColor.white)
        CircularRingMeter.setEndPointsImage(startPointImage: UIImage(named: "iconMinusRed")!, endPointImage: UIImage(named: "iconPlusRed")!)
        CircularRingMeter.setProgressLayerColor(colors: [UIColor.red.cgColor, UIColor.red.cgColor])
        CircularRingMeter.setKnobOfSlider(knobSize: 40, knonbImage: UIImage(named: "iconKnobRed")!)
        CircularRingMeter.setCircularRingWidth(innerRingWidth: 18, outerRingWidth: 18)
    }

}

// MARK: -
// MARK: - Extensions

// MARK: - Circular sider delegate
extension ViewController: SSCircularRingMeterDelegate {
    
    // This function will be called after updating Circular Meter Control value
    func controlValueUpdated(value: Int) {
        print("current control value\(value)")
    }
    
}

// MARK: - Textfield delegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let str = textField.text!
        guard let number = NumberFormatter().number(from: str) else {
            return
        }
        guard let offset = CircularRingMeter.getClosestElementFromArray(arrValues: arrValues, enteredValue: Int(truncating: number)) else { return }
        CircularRingMeter.setCurrentIndexAndUpdate(offset)
    }

}
