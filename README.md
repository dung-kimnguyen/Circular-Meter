# SSCircularMeter


A simple and powerful circular ring slider, written in swift and fully customizable.

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![Platform][platform-image]][platform-url]
[![PRs Welcome][PR-image]][PR-url]

![Alt text](https://github.com/simformsolutions/SSCircularMeter/blob/master/CircularMeterDemo.gif)

# Features!
  - Circular ring slider
  - Customizable slider color
  - Customizable slider knob
  - Customizable sider end point buttons
  - Adjust slider by editing center label
  - Dynammic values of slider


# Requirements
  - iOS 10.0+
  - Xcode 9+

# Installation

-   Download and drop **SSCircularMeter** folder in your project.
-   Congratulations you are done with installation!

# Usage example

-   In the storyboard add a UIView and change its class to SSCircularMeter
   ![Alt text](https://github.com/simformsolutions/SSCircularMeter/blob/master/CircularRingSiderStoryBoard.png)
   
    **SetValues**
        
        let arrValues: [Int] = [Int](0...30)
        CircularRingMeter.setArrayValues(labelValues: arrValues, currentIndex: indexOfValue)
    
    **SetInitialValue**
        
        let arrValues: [Int] = [Int](0...30)
        indexOfValue = 0
        CircularRingMeter.setValues(initialValue: arrValues[indexOfValue].toCGFloat(), minValue: arrValues[0].toCGFloat(), maxValue: arrValues[arrValues.count-1].toCGFloat())
    
    **SetKnobImage**
    
        CircularRingMeter.setKnobOfSlider(knobSize: 40, knonbImage: UIImage(named: "iconKnobRed")!)
        
    **SetTextFieldDelegate**
    
        CircularRingMeter.setValueTextFieldDelegate(viewController: self)
    
    **SetRingWidth**
        
        CircularRingMeter.setCircularRingWidth(innerRingWidth: 18, outerRingWidth: 18)
        
    **SetBackgroundColorOfAllButtons**
    
        CircularRingMeter.setBackgroundColorOfAllButtons(startPointColor: UIColor.red, endPointColor: UIColor.lightGray, knobColor: UIColor.white)
        
    **SetEndPointImages**
        
        CircularRingMeter.setEndPointsImage(startPointImage: iconMinus, endPointImage: iconPlus)
        
    **SetProgressLayerColor(Gradient Colors)**
        
        CircularRingMeter.setProgressLayerColor(colors: [UIColor.red.cgColor, UIColor.red.cgColor])
        
    **SetCircularMeterDelegate**
        
        extension ViewController: SSCircularRingMeterDelegate {
            func controlValueUpdated(value: Int) {
                print("current control value:\(value)")
                // Your code here
            }
        }

 
#  Meta
-    Distributed under the MIT license. See LICENSE for more information.

# Circular-Meter
# Circular-Meter
