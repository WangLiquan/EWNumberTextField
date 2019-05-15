//
//  ViewController.swift
//  EWNumberTextField
//
//  Created by Ethan.Wang on 2019/5/14.
//  Copyright © 2019 王利权. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let textField: EWTextField = {
        let textField = EWTextField(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
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
        if string == "." {
            if ((textField.text?.range(of: ".")) != nil) {
                return false
            }
        }
        return true
    }
}
