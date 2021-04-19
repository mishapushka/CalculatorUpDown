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

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings

    private func setupHierarchy() {

    }

    private func setupLayout() {

    }

    private func setupView() {

    }

}

