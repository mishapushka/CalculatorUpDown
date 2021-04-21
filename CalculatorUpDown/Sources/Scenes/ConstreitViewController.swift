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
        label.font = .systemFont(ofSize: 70, weight: .light)
        label.textColor = .white
        label.text = "0"
        return label
    }()

    private lazy var divisionButton = createButton(with: "/", titleColor: .white, backgroundColor: .systemOrange)
    private lazy var multiplyButton = createButton(with: "x", titleColor: .white, backgroundColor: .systemOrange)
    private lazy var subtractionButton = createButton(with: "-", titleColor: .white, backgroundColor: .systemOrange)
    private lazy var additionButton = createButton(with: "+", titleColor: .white, backgroundColor: .systemOrange)
    private lazy var equalityButton = createButton(with: "=", titleColor: .white, backgroundColor: .systemOrange)

    private lazy var percentButton = createButton(with: "%", titleColor: .black, backgroundColor: .gray)
    private lazy var nineButton = createButton(with: "9", titleColor: .white, backgroundColor: .darkGray)
    private lazy var sixButton = createButton(with: "6", titleColor: .white, backgroundColor: .darkGray)
    private lazy var threeButton = createButton(with: "3", titleColor: .white, backgroundColor: .darkGray)
    private lazy var commaButton = createButton(with: ",", titleColor: .white, backgroundColor: .darkGray)

    private lazy var plusMinusButton = createButton(with: "+/-", titleColor: .black, backgroundColor: .gray)
    private lazy var eightButton = createButton(with: "8", titleColor: .white, backgroundColor: .darkGray)
    private lazy var fiveButton = createButton(with: "5", titleColor: .white, backgroundColor: .darkGray)
    private lazy var twoButton = createButton(with: "2", titleColor: .white, backgroundColor: .darkGray)

    private lazy var dischargeButton = createButton(with: "AC", titleColor: .black, backgroundColor: .gray)
    private lazy var sevenButton = createButton(with: "7", titleColor: .white, backgroundColor: .darkGray)
    private lazy var fourButton = createButton(with: "4", titleColor: .white, backgroundColor: .darkGray)
    private lazy var oneButton = createButton(with: "1", titleColor: .white, backgroundColor: .darkGray)

    private lazy var zeroButton = createButton(with: "0", titleColor: .white, backgroundColor: .darkGray)


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
        label.translatesAutoresizingMaskIntoConstraints = false
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -495).isActive = true


        divisionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        divisionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        multiplyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        subtractionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        subtractionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        additionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        additionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true

        equalityButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        equalityButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true


        percentButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        percentButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        nineButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        nineButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        sixButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        sixButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        threeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        threeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true

        commaButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        commaButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true


        plusMinusButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        plusMinusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        eightButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        eightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        fiveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        fiveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        twoButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        twoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true


        dischargeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -285).isActive = true
        dischargeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        sevenButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -285).isActive = true
        sevenButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        fourButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -285).isActive = true
        fourButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        oneButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -285).isActive = true
        oneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true


        zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 53).isActive = true
        zeroButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -195).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
    }

    private func setupView() {
        view.backgroundColor = .black

    }




    //MARK: - Private functions

    private func createButton(with title: String, titleColor: UIColor, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)

        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .light)
        button.backgroundColor = backgroundColor

        button.layer.masksToBounds = true
        button.layer.cornerRadius = 75 / 2

        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 75).isActive = true
        button.heightAnchor.constraint(equalToConstant: 75).isActive = true

        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        return button
    }

    // MARK: - Actions

    @objc private func buttonAction() {

    }
}
