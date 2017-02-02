//
//  ViewController.swift
//  IntrinsicTorutsumeSample
//
//  Created by { Kazunori } on 2017/02/02.
//  Copyright © 2017年 Yamamoto Kazunori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBOutlet weak var buttonLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var switchLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var switchWidthConstraint: NSLayoutConstraint!
    
    var buttonWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        // ボタンの横幅を0にする制約
        buttonWidthConstraint = NSLayoutConstraint(
            item: self.button
            , attribute: NSLayoutAttribute.width
            , relatedBy: NSLayoutRelation.equal
            , toItem: nil
            , attribute: NSLayoutAttribute.width
            , multiplier: 1.0
            , constant: 0)
    }
    
    @IBAction func pressToolbarLabel(_ sender: Any) {
        if label.text == nil {
            label.text = "HogeGehoString"
            labelLeadingConstraint.constant = 8
        }
        else {
            label.text = nil
            labelLeadingConstraint.constant = 0
        }
    }
    
    @IBAction func pressToolbarButton(_ sender: Any) {
        if button.isHidden {
            buttonLeadingConstraint.constant = 8
            NSLayoutConstraint.deactivate([buttonWidthConstraint])
            button.isHidden = false
        }
        else {
            buttonLeadingConstraint.constant = 0
            NSLayoutConstraint.activate([buttonWidthConstraint])
            button.isHidden = true
        }
    }
    
    @IBAction func pressToolbarSwitch(_ sender: Any) {
        if switchButton.isHidden {
            switchLeadingConstraint.constant = 8
            switchWidthConstraint.constant = 49
            switchButton.isHidden = false
        }
        else {
            switchLeadingConstraint.constant = 0
            switchWidthConstraint.constant = 0
            switchButton.isHidden = true
        }
    }
}

