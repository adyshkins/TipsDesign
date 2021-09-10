//
//  ViewController.swift
//  TipsDesign
//
//  Created by ADSS on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zeroButtons: UIButton! // ноль процентов
    @IBOutlet weak var tenButtons: UIButton! // десять процентов
    @IBOutlet weak var twentyButtons: UIButton! // двадцать процентов
    @IBOutlet weak var summTextField: UITextField! // сумма в чеке
    @IBOutlet weak var countPeople: UILabel! // количество человек
    
    var summa = 0.0
    var procent = 0.0
    var countPeopleGlobal = 0
    var result = 0.0
    
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        zeroButtons.isSelected = false
        tenButtons.isSelected = false
        twentyButtons.isSelected = false
        sender.isSelected  = true
        summTextField.endEditing(true)
        procent = Double(sender.tag)
    }
    
    @IBAction func pressStepper(_ sender: UIStepper) {
        countPeople.text = String(Int(sender.value))
    }
    
    @IBAction func calcButton(_ sender: UIButton) {
        summa = Double(summTextField.text!)!
        countPeopleGlobal = Int(countPeople.text!)!
        
        result = summa * procent / 100 / Double(countPeopleGlobal)
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.value = 2
        
        summTextField.keyboardType = .numberPad
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           guard segue.identifier == "showResult" else { return }
           guard let destination = segue.destination as? ResultViewController else { return }
        destination.resultInFirst = String(self.result)
       }

}

