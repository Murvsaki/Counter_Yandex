import UIKit
import Foundation
class ViewController: UIViewController {
    private var countOfClicks: Int = 0
    
    @IBOutlet private weak var historyOfChangesTextView: UITextView!
    @IBOutlet private weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyOfChangesTextView.text = "                         История изменений:\n"
    }
    private func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter
    }
    
    @IBAction private func tapButtonPlus(_ sender: Any) {
        countOfClicks += 1
        counterLabel.text = "Значение счётчика: \(countOfClicks)"
        let time = dateFormatter().string(from: Date())
        historyOfChangesTextView.text += "[\(time)]: значение изменено на +1\n"
    }
    @IBAction private func tapButtonMinus(_ sender: Any) {
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
    @IBAction private func resetButton(_ sender: Any) {
        countOfClicks = 0
        counterLabel.text = "Значение счётчика: \(countOfClicks)"
        let time = dateFormatter().string(from: Date())
        historyOfChangesTextView.text += "[\(time)]: значение сброшено\n"
    }
}

