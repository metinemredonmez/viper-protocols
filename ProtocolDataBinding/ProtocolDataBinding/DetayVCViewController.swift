//
//  DetayVCViewController.swift
//  ProtocolDataBinding
//
//  Created by Apple on 17.08.2022.
//

import UIKit

class DetayVCViewController: UIViewController {

    @IBOutlet weak var textFieldGirdi: UITextField!
    
    var delegate: detayVCtoViewContProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }
    
    @IBAction func buttonGonder(_ sender: Any) {
        
        if let  mesaj = textFieldGirdi.text {
            delegate?.verigonder(mesaj: mesaj)
    }

}


}
