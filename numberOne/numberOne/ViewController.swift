//
//  ViewController.swift
//  numberOne
//
//  Created by Fedor Aristov on 28.02.2021.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var firstDateLabel: UILabel!
    @IBOutlet weak var secondDateLabel: UILabel!
    @IBAction func dateButton(_ sender: UIButton) {
        let date = dateTextField.text!.split(separator: ".")
        var msg: String
        if date.count == 3 {
            switch Int(date[0])! {
            case 1...10:
                msg = "первая декада"
            case 11...20:
                msg = "вторая декада"
            case 21...30:
                msg = "третья декада"
            default:
                msg = "введены некорректные данные"
            }
            switch Int(date[1])! {
            case 1:
                msg += " " + "января"
            case 2:
                msg += " " + "февраля"
            case 3:
                msg += " " + "марта"
            case 4:
                msg += " " + "апреля"
            case 5:
                msg += " " + "мая"
            case 6:
                msg += " " + "июня"
            case 7:
                msg += " " + "июля"
            case 8:
                msg += " " + "августа"
            case 9:
                msg += " " + "сентября"
            case 10:
                msg += " " + "октября"
            case 11:
                msg += " " + "ноября"
            case 12:
                msg += " " + "декабря"
            default:
                msg = "введены некорректные данные"
            }
            if msg != "введены некорректные данные"{
                if Int(date[2])! % 4 != 0 || Int(date[2])! % 100 == 0 && Int(date[2])! % 400 != 0 {
                    secondDateLabel.text = "невисокосного года"
                }
                else {
                    secondDateLabel.text = "високосного года"
                }
            }
        }
        else {
            msg = "введены некорректные данные"
            secondDateLabel.text = ""
        }
        firstDateLabel.text = msg
        firstDateLabel.isHidden = false
        secondDateLabel.isHidden = false
    }
}
