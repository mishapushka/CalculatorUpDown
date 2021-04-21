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
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true //горизонтальная
//        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true


        divisionButton.translatesAutoresizingMaskIntoConstraints = false
//        divisionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = false
        divisionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        divisionButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30).isActive = true
        divisionButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        divisionButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        divisionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true

        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
//        multiplyButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        multiplyButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        multiplyButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
//        multiplyButton.rightAnchor.constraint(equalTo: divisionButton.rightAnchor, constant: 15).isActive = true
        multiplyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -290).isActive = true

        dischargeButton.translatesAutoresizingMaskIntoConstraints = false
        dischargeButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        dischargeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        dischargeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 363).isActive = true
        dischargeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true

        plusMinusButton.translatesAutoresizingMaskIntoConstraints = false
        plusMinusButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        plusMinusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        plusMinusButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 363).isActive = true
        plusMinusButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 105).isActive = true

        percentButton.translatesAutoresizingMaskIntoConstraints = false
        percentButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        percentButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        percentButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 363).isActive = true
        percentButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 210).isActive = true


        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        zeroButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
//        zeroButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 30).isActive = true
        zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        zeroButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -217).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
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
