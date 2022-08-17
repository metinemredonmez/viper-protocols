//
//  ViewController.swift
//  ProtocolDataBinding
//
//  Created by Apple on 17.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

   
    }

    @IBAction func buttonGecis(_ sender: Any) {
        performSegue(withIdentifier: "todetay", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "todetay" {
            let gidilecekVC = segue.destination as! DetayVCViewController
            
            gidilecekVC.delegate = self
            
        }
    }
    
}



extension ViewController: detayVCtoViewContProtocol {
    func verigonder(mesaj: String) {
        labelSonuc.text! = mesaj
    }
    
    
    
    
}
