//
//  ViewController.swift
//  SegueExercise3
//
//  Created by Field Employee on 2/16/21.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    var items = ["card2", "card10"]
    //pickerView = UIPickerView()
    var num = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if row == 0{
            num = 2
        }
        else {
        num = 10
        }
        
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryTextField.text = items[row]
        countryTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }
    
    
    @IBAction func toNextButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toSecondViewSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewSegue" {
            
            if let destination = segue.destination as? SecondViewController {
            
                destination.theNum = num
                
            }
        }
    }
}

