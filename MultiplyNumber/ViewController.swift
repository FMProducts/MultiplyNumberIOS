//
//  ViewController.swift
//  MultiplyNumber
//
//  Created by ideal on 1/12/20.
//  Copyright © 2020 fmproduct.pager.app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLabel: UILabel!
    @IBOutlet weak var Button01: UIButton!
    @IBOutlet weak var Button02: UIButton!
    @IBOutlet weak var Button03: UIButton!
    @IBOutlet weak var Button04: UIButton!
    
    var n1 = 0
    var n2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initView()
    }
    
    func initView(){
        n1 = Int.random(in: 0..<10)
        n2 = Int.random(in: 0..<10)
        
        MainLabel.text = "\(n1) * \(n2) = ?"
        
        Button01.backgroundColor = .systemPurple
        Button02.backgroundColor = .systemOrange
        Button03.backgroundColor = .systemYellow
        Button04.backgroundColor = .systemGreen
        
        
        let buttons = [Button01 , Button02 , Button03 , Button04].shuffled()
        
        buttons[0]?.setTitle(String(n1 * n2), for: .normal)
        buttons[1]?.setTitle(String(Int.random(in: 0..<100)), for: .normal)
        buttons[2]?.setTitle(String(Int.random(in: 0..<100)), for: .normal)
        buttons[3]?.setTitle(String(Int.random(in: 0..<100)), for: .normal)
    }


    @IBAction func clickButton(_ sender: UIButton) {
        let number = Int(sender.titleLabel!.text ?? "")
        if number == (n1 * n2){
            self.initView()
        }
        else{
            sender.backgroundColor = .red
        }
        
    }
}

