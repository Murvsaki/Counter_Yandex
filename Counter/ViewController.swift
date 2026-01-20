//
//  ViewController.swift
//  Counter
//
//  Created by Nikita on 20.01.26.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    @IBOutlet weak var historyOfChangesTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    var countOfClicks: Int = 0
    @IBAction func counterButtonPlus(_ sender: Any) {
        countOfClicks += 1
        counterLabel.text = "Значение счётчика: \(countOfClicks)"
        let time = dateFormatter().string(from: Date())
        historyOfChangesTextView.text += "[\(time)]: значение изменено на +1\n"
    }
    @IBAction func counterButtonMinus(_ sender: Any) {
        if(countOfClicks >= 1){
            countOfClicks -= 1
            counterLabel.text = "Значение счётчика: \(countOfClicks)"
            let time = dateFormatter().string(from: Date())
            historyOfChangesTextView.text += "[\(time)]: значение изменено на -1\n"
        }
        else{
            let time = dateFormatter().string(from: Date())
            historyOfChangesTextView.text += "[\(time)]: попытка уменьшить значение счётчика ниже 0\n"
        }
    }
    @IBAction func counterResetButton(_ sender: Any) {
        countOfClicks = 0
        counterLabel.text = "Значение счётчика: \(countOfClicks)"
        let time = dateFormatter().string(from: Date())
        historyOfChangesTextView.text += "[\(time)]: значение сброшено\n"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        historyOfChangesTextView.text = "                         История изменений:\n"
        // Do any additional setup after loading the view.
    }
    func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter
    }

}

