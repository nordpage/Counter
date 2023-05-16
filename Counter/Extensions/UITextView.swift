//
//  UITextView.swift
//  Counter
//
//  Created by Анастасия Хоревич on 16.05.2023.
//

import Foundation

import UIKit

extension UITextView{
    
    func scrollToBottom(){
        var _optionBeforeModifyingLayoutManager = false
        
        if layoutManager.allowsNonContiguousLayout {
            _optionBeforeModifyingLayoutManager = true
            layoutManager.allowsNonContiguousLayout = false
        }
        
        let stringLength:Int = text.count
        scrollRangeToVisible(NSMakeRange(stringLength - 1, 0))
        
        layoutManager.allowsNonContiguousLayout = _optionBeforeModifyingLayoutManager
    }
    
}
