//
//  EWTextField.swift
//  EWNumberTextField
//
//  Created by Ethan.Wang on 2019/5/14.
//  Copyright © 2019 王利权. All rights reserved.
//

import UIKit

class EWTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        drawMyView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func drawMyView(){
        self.keyboardType = .numbersAndPunctuation
    }
}
