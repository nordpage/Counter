//
//  ViewController.swift
//  Counter
//
//  Created by Анастасия Хоревич on 16.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private @IBOutlet weak var counter: UILabel!
    private @IBOutlet weak var info: UITextView!
    
    var countValue: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCounter(value: countValue)
        
    }
    
    
    @IBAction func plusDidClick(_ sender: UIButton) {
        countValue += 1
        updateCounter(value: countValue)
        updateInfo(value: "значение изменено на +1")
    }
    
    @IBAction func minusDidClick(_ sender: UIButton) {
        if (countValue > 0) {
            countValue -= 1
            updateCounter(value: countValue)
            updateInfo(value: "значение изменено на -1")
        } else {
            updateInfo(value: "попытка уменьшить значение счётчика ниже 0")
        }
        
    }
    
    @IBAction func refreshDidClick(_ sender: UIButton) {
        countValue = 0
        updateCounter(value: countValue)
        updateInfo(value: "значение сброшено")
    }
    
    
    func updateCounter(value: Int) {
        counter.text = String(value)
    }
    
    func updateInfo(value: String) {
        info.text?.append("\(Date.getCurrentDate()): \(value)")
        info.text.append("\n")
        info.scrollToBottom()
    }
    
}

