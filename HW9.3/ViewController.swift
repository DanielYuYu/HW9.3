//
//  ViewController.swift
//  HW9.3
//
//  Created by Daniel on 2018/7/30.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        birthDatePicker.isHidden = false

    }

    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    @IBAction func calculationButton(_ sender: UIButton) {
        //將DatePicker的日期以yyyymmdd存在dateString
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: birthDatePicker.date)
        
        //呼叫calculation之後所產生的靈數
        outputTextView.text = ("您的生命靈數為：" + calculation(dateString))

    }
    
    func calculation(_ dateString:String)->String{
        var sum1 = 0
        for char in dateString {
            let number = Int(String(char))
            sum1 = sum1 + number!
        }
        //數字存成字串
        let fString = "\(sum1)"
        //當結果大於10的時候，再次呼叫function
        if ( sum1 > 10 ){
            return calculation(fString)
        }
        else {
        //小於10，直接回傳
            return  fString
        }
    }
    

    
}

