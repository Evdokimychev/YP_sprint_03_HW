//
//  ViewController.swift
//  YP_sprint_03_HW2
//
//  Created by Для учёбы   on 05/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var historyLabel: UITextView!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    
    var count: Int = 0
//    var change: Int = 0
//    var dateFormat: String! { get set }
//    let dateFormatter = NSDateFormatString ()
//    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        //        buttonPlus.titleLabel?.text = "-"
        //        buttonMinus.titleLabel?.text = "+"
        buttonPlus.backgroundColor = .red
        buttonMinus.backgroundColor = .blue
        historyLabel.text = "..."
    }
    @IBAction func buttonPlusDidTap(_ sender: Any) {
        count += 1
        //        print(count)
        updateCounter()
        updateHistory()
        //        counterLabel.text = "Значение счётчика: \(count)"
    }
    @IBAction func buttonMinusDidTap(_ sender: Any) {
        if count != 0 {
            count -= 1
        }
        //        print(count)
        updateCounter()
        updateHistory()
    }
    
    @IBAction func buttonResetDidTap(_ sender: Any) {
        count = 0
        //        print(count)
        updateCounter()
        updateHistory()
    }
    
    
    func updateCounter() {
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
    func updateHistory() {
        
        var date = Date()
        if count == 0 {
            historyLabel.text += "\n«\(date): значение сброшено"
        }
        else {
            historyLabel.text += "\n«\(date): значение изменено на 1»"
        }
    }
    
}
