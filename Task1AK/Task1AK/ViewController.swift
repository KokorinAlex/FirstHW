//
//  ViewController.swift
//  Task1AK
//
//  Created by administrator on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var labelCounter: UILabel!
    var result = 0
    @IBAction func buttonPlus(_ sender: Any) {
    
      if result < 10 {
        result += 1
        labelCounter.text = String(result)
    }
        else {
            let alertController = UIAlertController (title: "Внимание!", message: "Максимальное значение!", preferredStyle: .alert)
            let action = UIAlertAction (title: "ok", style: .default)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func buttonMinus(_ sender: Any) {
        if result > -10 {
          result -= 1
          labelCounter.text = String(result)
      }
          else {
              let alertController = UIAlertController (title: "Внимание!", message: "Минимальное значение!", preferredStyle: .alert)
              let action = UIAlertAction (title: "ok", style: .default)
              alertController.addAction(action)
              self.present(alertController, animated: true, completion: nil)
          }
        
    }
    
    
    @IBAction func buttonZero(_ sender: Any) {
       result = 0
        labelCounter.text = String(result)
        
    }
    
    
    
    
    
}

