//
//  ViewController.swift
//  Calculator
//
//  Created by TomoakiTANAKA on 2019/03/26.
//  Copyright © 2019 TomoakiTANAKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // @memo weak
    // @memo !（オプショナル）
    @IBOutlet weak var priceField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restart(_ segue: UIStoryboard) {
        priceField.text = "0"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // @memo as!とは
        let viewController = segue.destination as! ResultViewController
        
        // @memo !ってなに？
        if let price = Int(priceField.text!) {
            viewController.price = price
        }
    }

    
    func setTextField(_ number: String) {
        let value = priceField.text! + number
        
        // @memo アンラップ処理
        // @memo ; が無いとエラーがでたけどなぜ？ ↓↓↓ 自動生成が残ってたっぽい
        // @memo Editor placeholder in source file
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    // ===========================
    // ボタンを押したときの処理
    // ===========================
    
    // @memo Action とかの種類
    @IBAction func tap1Button(_ sender: Any) {
        setTextField("1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        setTextField("2")
    }
    
    
    @IBAction func tap3Button(_ sender: Any) {
        setTextField("3")
    }
    
    
    @IBAction func tap4Button(_ sender: Any) {
        setTextField("4")
    }
    
    
    @IBAction func tap5Button(_ sender: Any) {
        setTextField("5")
    }
    
    
    @IBAction func tap6Button(_ sender: Any) {
        setTextField("6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        setTextField("7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        setTextField("8")
    }
    
    
    
    @IBAction func tap9Button(_ sender: Any) {
        setTextField("9")
    }
    
    
    @IBAction func tap0Button(_ sender: Any) {
        setTextField("0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        setTextField("00")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    
    
    
    
    
    
    
    
}

