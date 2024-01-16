//
//  ViewController.swift
//  colorPicker
//
//  Created by Erin Novoa on 1/14/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label1: UILabel!
  
  @IBOutlet weak var label2: UILabel!
  
  @IBOutlet weak var label3: UILabel!
  
  @IBOutlet weak var label4: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func changeBackgroundColor(_ sender: UIButton) {
    func changeColor() -> UIColor{
      let red = CGFloat.random(in: 0...1)
      let green = CGFloat.random(in: 0...1)
      let blue = CGFloat.random(in: 0...1)
      
      return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    let randomColor = changeColor()
    view.backgroundColor = randomColor
  }
  
  @IBAction func changeTextColor(_ sender: UIButton) {
    
    func changeColor() -> UIColor {
      if label1.textColor == UIColor.white {
        return UIColor.black
      }
      return UIColor.white
    }
    let color = changeColor()
    label1.textColor = color
    label2.textColor = color
    label3.textColor = color
    label4.textColor = color
  }
  
    
}


