//
//  ViewController.swift
//  EWNumberTextField
//
//  Created by Ethan.Wang on 2019/5/14.
//  Copyright © 2019 王利权. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let textField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        textField.keyboardType = .decimalPad
        textField.backgroundColor = UIColor.gray
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawMyView()
    }
    private func drawMyView(){
        textField.delegate = self
        self.view.addSubview(textField)
    }

}
extension ViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard string == "." || string == "0" else { return true }
        guard let text = textField.text else { return true }
        if text.count == 0 {
            textField.text = "0."
            return false
        }
        if text.range(of: ".") != nil && string == "." {
            return false
        }
        return true
    }
}
