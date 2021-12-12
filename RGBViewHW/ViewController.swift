//
//  ViewController.swift
//  RGBViewHW
//
//  Created by imatchyn on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rgbBlock: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redColorValue: UILabel!
    @IBOutlet weak var greeColorValue: UILabel!
    @IBOutlet weak var blueColorValue: UILabel!
    
    private var redColor = CGFloat(0.5)
    private var greenColor = CGFloat(0.5)
    private var blueColor = CGFloat(0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbBlock.layer.cornerRadius = 20
        rgbBlock.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redColorValue.text = String(format: "%.2f", redSlider.value)
        redColor = CGFloat(redSlider.value)
        rgbBlock.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greeColorValue.text = String(format: "%.2f", greenSlider.value)
        greenColor = CGFloat(greenSlider.value)
        rgbBlock.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
        blueColor = CGFloat(blueSlider.value)
        rgbBlock.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }

}

