//
//  ResultViewController.swift
//  TipsDesign
//
//  Created by ADSS on 17.08.2021.
//

import UIKit

class ResultViewController: UIViewController {

    var resultInFirst = ""
    
    @IBAction func recalcButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var resultLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultInFirst
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
