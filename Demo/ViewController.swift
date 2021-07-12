//
//  ViewController.swift
//  Demo
//
//  Created by 楊昕蕾 on 2021/7/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sadakoImage: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var flashlight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sadakoDidAppear(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            sadakoImage.image = UIImage(named: "transparent")
        case 1:
            sadakoImage.image = UIImage(named: "sadako")
        default:
            sadakoImage.image = UIImage(named: "transparent")
        }
        
    }
    
    
    @IBAction func sliderDidSlide(_ sender: UISlider) {
            sadakoImage.alpha = CGFloat(
                  slider.value / slider.maximumValue)
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            flashlight.image = UIImage(named: "flashlight")
        }
        else
        {
            flashlight.image = UIImage(named: "transparent")
        }
    }
    
    
    
}

