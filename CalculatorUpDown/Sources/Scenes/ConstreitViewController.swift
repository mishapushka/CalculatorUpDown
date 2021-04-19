//
//  ConstreitViewController.swift
//  CalculatorUpDown
//
//  Created by mac on 19.04.2021.
//

import UIKit

class ConstreitViewController: UIViewController {

    private lazy var label: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 70)
        label.textColor = .white
        label.text = "0"
        return label
    }()

    private lazy var divisionButton: UIButton = {
        var divisionButton = UIButton()
        divisionButton.setTitle("/", for: .normal)
        divisionButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return divisionButton
    }()

    private lazy var multiplyButton: UIButton = {
        var multiplyButton = UIButton()
        multiplyButton.setTitle("x", for: .normal)
        multiplyButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return multiplyButton
    }()

    private lazy var subtractionButton: UIButton = {
        var subtractionButton = UIButton()
        subtractionButton.setTitle("-", for: .normal)
        subtractionButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return subtractionButton
    }()

    private lazy var additionButton: UIButton = {
        var additionButton = UIButton()
        additionButton.setTitle("+", for: .normal)
        additionButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return additionButton
    }()

    private lazy var equalityButton: UIButton = {
        var equalityButton = UIButton()
        equalityButton.setTitle("=", for: .normal)
        equalityButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return equalityButton
    }()

    private lazy var percentButton: UIButton = {
        var percentButton = UIButton()
        percentButton.setTitle("%", for: .normal)
        percentButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return percentButton
    }()

    private lazy var nineButton: UIButton = {
        var nineButton = UIButton()
        nineButton.setTitle("9", for: .normal)
        nineButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return nineButton
    }()

    private lazy var sixButton: UIButton = {
        var sixButton = UIButton()
        sixButton.setTitle("6", for: .normal)
        sixButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return sixButton
    }()

    private lazy var threeButton: UIButton = {
        var threeButton = UIButton()
        threeButton.setTitle("3", for: .normal)
        threeButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return threeButton
    }()

    private lazy var commaButton: UIButton = {
        var commaButton = UIButton()
        commaButton.setTitle(",", for: .normal)
        commaButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return commaButton
    }()

    private lazy var plusMinusButton: UIButton = {
        var plusMinusButton = UIButton()
        plusMinusButton.setTitle("+/-", for: .normal)
        plusMinusButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return plusMinusButton
    }()

    private lazy var eightButton: UIButton = {
        var eightButton = UIButton()
        eightButton.setTitle("9", for: .normal)
        eightButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return eightButton
    }()

    private lazy var fiveButton: UIButton = {
        var fiveButton = UIButton()
        fiveButton.setTitle("5", for: .normal)
        fiveButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return fiveButton
    }()

    private lazy var twoButton: UIButton = {
        var twoButton = UIButton()
        twoButton.setTitle("2", for: .normal)
        twoButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return twoButton
    }()

    private lazy var dischargeButton: UIButton = {
        var dischargeButton = UIButton()
        dischargeButton.setTitle("AC", for: .normal)
        dischargeButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return dischargeButton
    }()

    private lazy var sevenButton: UIButton = {
        var sevenButton = UIButton()
        sevenButton.setTitle("7", for: .normal)
        sevenButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return sevenButton
    }()

    private lazy var fourButton: UIButton = {
        var fourButton = UIButton()
        fourButton.setTitle("4", for: .normal)
        fourButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return fourButton
    }()

    private lazy var oneButton: UIButton = {
        var oneButton = UIButton()
        oneButton.setTitle("1", for: .normal)
        oneButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return oneButton
    }()

    private lazy var zeroButton: UIButton = {
        var zeroButton = UIButton()
        zeroButton.setTitle("0", for: .normal)
        zeroButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return zeroButton
    }()


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(divisionButton)
        view.addSubview(multiplyButton)
        view.addSubview(subtractionButton)
        view.addSubview(additionButton)
        view.addSubview(equalityButton)
        view.addSubview(percentButton)
        view.addSubview(nineButton)
        view.addSubview(sixButton)
        view.addSubview(threeButton)
        view.addSubview(commaButton)
        view.addSubview(plusMinusButton)
        view.addSubview(eightButton)
        view.addSubview(fiveButton)
        view.addSubview(twoButton)
        view.addSubview(dischargeButton)
        view.addSubview(sevenButton)
        view.addSubview(fourButton)
        view.addSubview(oneButton)
        view.addSubview(zeroButton)
    }

    private func setupLayout() {

    }

    private func setupView() {
        view.backgroundColor = .black

    }


    // MARK: - Actions

    @objc private func buttonAction() {

    }

}
