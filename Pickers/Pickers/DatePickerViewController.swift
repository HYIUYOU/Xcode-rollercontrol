//
//  DatePickerViewController.swift
//  Pickers
//
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        let message = "你选择的日期是： \(date)"
        let alert = UIAlertController(
            title: "日期选择",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "操作正确!",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)

    }
}
