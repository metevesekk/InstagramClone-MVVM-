//
//  Extensions.swift
//  InstagramClone
//
//  Created by Mete Vesek on 23.02.2024.
//

import UIKit

extension UIApplication{
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
