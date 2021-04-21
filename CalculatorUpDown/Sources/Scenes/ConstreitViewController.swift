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
//        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true //горизонтальная
//        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
//        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 15).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -495).isActive = true


        divisionButton.translatesAutoresizingMaskIntoConstraints = false
        divisionButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        divisionButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        divisionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        divisionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        divisionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        multiplyButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        multiplyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        multiplyButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        subtractionButton.translatesAutoresizingMaskIntoConstraints = false
        subtractionButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        subtractionButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        subtractionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        subtractionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        subtractionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        additionButton.translatesAutoresizingMaskIntoConstraints = false
        additionButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        additionButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        additionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        additionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        additionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true

        equalityButton.translatesAutoresizingMaskIntoConstraints = false
        equalityButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        equalityButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        equalityButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        equalityButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        equalityButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true


        percentButton.translatesAutoresizingMaskIntoConstraints = false
        percentButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        percentButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        percentButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        percentButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        percentButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        nineButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        nineButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        nineButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        nineButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        nineButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        sixButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        sixButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        sixButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        sixButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        threeButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        threeButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        threeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        threeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        threeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true

        commaButton.translatesAutoresizingMaskIntoConstraints = false
        commaButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        commaButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        commaButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
        commaButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        commaButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true


        plusMinusButton.translatesAutoresizingMaskIntoConstraints = false
        plusMinusButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        plusMinusButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        plusMinusButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        plusMinusButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        plusMinusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true

        eightButton.translatesAutoresizingMaskIntoConstraints = false
        eightButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        eightButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        eightButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        eightButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        eightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -320).isActive = true

        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        fiveButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        fiveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        fiveButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        fiveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -230).isActive = true

        twoButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        twoButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        twoButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -195).isActive = true
        twoButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        twoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140).isActive = true


        dischargeButton.translatesAutoresizingMaskIntoConstraints = false
        dischargeButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        dischargeButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        dischargeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -285).isActive = true
        dischargeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        dischargeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -410).isActive = true


//        dischargeButton.translatesAutoresizingMaskIntoConstraints = false
//        dischargeButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
//        dischargeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        dischargeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 363).isActive = true
//        dischargeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true


        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.widthAnchor.constraint(equalToConstant: 75).isActive = true //ширина якоря
        zeroButton.heightAnchor.constraint(equalToConstant: 75).isActive = true //высота якоря
//        zeroButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 30).isActive = true //верхний якорь
        zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true //ведущий якорь
        zeroButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -217).isActive = true //задний якорь
        zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true //нижний якорь
//        zeroButton.heightAnchor.constraint(equalToConstant: 1.0 / 1.0).isActive = true
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

        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        return button
    }

    // MARK: - Actions

    @objc private func buttonAction() {

    }
}
