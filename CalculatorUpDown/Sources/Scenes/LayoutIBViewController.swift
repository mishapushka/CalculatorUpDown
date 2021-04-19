//
//  LayoutIBViewController.swift
//  CalculatorUpDown
//
//  Created by mac on 17.04.2021.
//

import UIKit

class LayoutIBViewController: UIViewController {

    // MARK: - IBOutlet

    @IBOutlet var divisionButton: UIButton!
    @IBOutlet var multiplyButton: UIButton!
    @IBOutlet var subtractionButton: UIButton!
    @IBOutlet var additionButton: UIButton!
    @IBOutlet var equalityButton: UIButton!

    @IBOutlet var percentButton: UIButton!
    @IBOutlet var nineButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var commaButton: UIButton!

    @IBOutlet var plusMinusButton: UIButton!
    @IBOutlet var eightButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var twoButton: UIButton!

    @IBOutlet var dischargeButton: UIButton!
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var fourButton: UIButton!
    @IBOutlet var oneButton: UIButton!

    @IBOutlet var zeroButton: UIButton!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    // MARK: - Settings

    private func setupView() {
        addCornerRadius(for: [
            divisionButton, multiplyButton, subtractionButton, additionButton, equalityButton,
            percentButton, nineButton, sixButton, threeButton, commaButton,
            plusMinusButton, eightButton, fiveButton, twoButton,
            dischargeButton, sevenButton, fourButton, oneButton,
            zeroButton
        ])
    }

    private func addCornerRadius(for buttons: [UIButton]) {
        buttons.forEach {
            $0.layer.masksToBounds = true
            $0.layer.cornerRadius = $0.frame.height / 2
        }
    }
}

