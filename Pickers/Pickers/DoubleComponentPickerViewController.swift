//
//  DoubleComponentPickerViewController.swift
//  Pickers
//

//

import UIKit

class DoubleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var doublePicker: UIPickerView!
    private let fillingComponent = 0
    private let breadComponent = 1
    private let fillingTypes = [
        "安徽省", "湖北省", "湖南省", "山东省",
        "河北省", "河南省", "江苏省"]
    private let breadTypes = [
        "合肥市", "长沙市", "武汉市", "济南市",
        "南京市"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    


    @IBAction func onButtonPressed(_ sender: UIButton) {
        let fillingRow =
            doublePicker.selectedRow(inComponent: fillingComponent)
        let breadRow =
            doublePicker.selectedRow(inComponent: breadComponent)
        
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        let message = "你选择了\(filling)  \(bread)."
        
        let alert = UIAlertController(
            title: "谢谢你的选择",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "好",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent {
            return breadTypes.count
        } else {
            return fillingTypes.count
        }
    }
    
    // MARK:-
    // MARK: Picker Delegate Methods

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == breadComponent {
            return breadTypes[row]
        } else {
            return fillingTypes[row]
        }
    }
    
}
