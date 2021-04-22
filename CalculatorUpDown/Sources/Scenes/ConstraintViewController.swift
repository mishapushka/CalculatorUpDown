//
//  ConstraintViewController.swift
//  CalculatorUpDown
//
//  Created by mac on 19.04.2021.
//

import UIKit

class ConstraintViewController: UIViewController {

    private lazy var label: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: Metric.labelSize, weight: .light)
        label.textColor = .white
        label.text = "0"
        return label
    }()

    private lazy var divisionButton = createButton(with: "/", backgroundColor: .systemOrange)
    private lazy var multiplyButton = createButton(with: "x", backgroundColor: .systemOrange)
    private lazy var subtractionButton = createButton(with: "-", backgroundColor: .systemOrange)
    private lazy var additionButton = createButton(with: "+", backgroundColor: .systemOrange)
    private lazy var equalityButton = createButton(with: "=", backgroundColor: .systemOrange)

    private lazy var percentButton = createButton(with: "%",
                                                  titleColor: .black,
                                                  backgroundColor: .gray)
    private lazy var nineButton = createButton(with: "9")
    private lazy var sixButton = createButton(with: "6")
    private lazy var threeButton = createButton(with: "3")
    private lazy var commaButton = createButton(with: ",")

    private lazy var plusMinusButton = createButton(with: "+/-",
                                                    titleColor: .black,
                                                    backgroundColor: .gray)
    private lazy var eightButton = createButton(with: "8")
    private lazy var fiveButton = createButton(with: "5")
    private lazy var twoButton = createButton(with: "2")

    private lazy var dischargeButton = createButton(with: "AC",
                                                    titleColor: .black,
                                                    backgroundColor: .gray)
    private lazy var sevenButton = createButton(with: "7")
    private lazy var fourButton = createButton(with: "4")
    private lazy var oneButton = createButton(with: "1")

    private lazy var zeroButton = createButton(with: "0")

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
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.oneLineBottomAnchor).isActive = true

        divisionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        divisionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.twoLineBottomAnchor).isActive = true
        multiplyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.threeLineBottomAnchor).isActive = true
        subtractionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        subtractionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fourLineBottomAnchor).isActive = true
        additionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        additionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fiveLineBottomAnchor).isActive = true
        equalityButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.fourColumnRightAnchor).isActive = true
        equalityButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.sixLineBottomAnchor).isActive = true

        percentButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.threeColumnRightAnchor).isActive = true
        percentButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.twoLineBottomAnchor).isActive = true
        nineButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.threeColumnRightAnchor).isActive = true
        nineButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.threeLineBottomAnchor).isActive = true
        sixButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.threeColumnRightAnchor).isActive = true
        sixButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fourLineBottomAnchor).isActive = true
        threeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.threeColumnRightAnchor).isActive = true
        threeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fiveLineBottomAnchor).isActive = true
        commaButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.threeColumnRightAnchor).isActive = true
        commaButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.sixLineBottomAnchor).isActive = true

        plusMinusButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.twoColumnRightAnchor).isActive = true
        plusMinusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.twoLineBottomAnchor).isActive = true
        eightButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.twoColumnRightAnchor).isActive = true
        eightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.threeLineBottomAnchor).isActive = true
        fiveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.twoColumnRightAnchor).isActive = true
        fiveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fourLineBottomAnchor).isActive = true
        twoButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.twoColumnRightAnchor).isActive = true
        twoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fiveLineBottomAnchor).isActive = true

        dischargeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.oneColumnRightAnchor).isActive = true
        dischargeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.twoLineBottomAnchor).isActive = true
        sevenButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.oneColumnRightAnchor).isActive = true
        sevenButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.threeLineBottomAnchor).isActive = true
        fourButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.oneColumnRightAnchor).isActive = true
        fourButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fourLineBottomAnchor).isActive = true
        oneButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.oneColumnRightAnchor).isActive = true
        oneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.fiveLineBottomAnchor).isActive = true

        zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.zeroLeadingAnchor).isActive = true
        zeroButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.zeroTrailingAnchor).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.sixLineBottomAnchor).isActive = true
    }

    private func setupView() {
        view.backgroundColor = .black
    }

    // MARK: - Private functions

    private func createButton(with title: String,
                              titleColor: UIColor = .white,
                              backgroundColor: UIColor = .darkGray) -> UIButton {
        let button = UIButton(type: .system)

        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: Metric.titleLabelSize, weight: .light)
        button.backgroundColor = backgroundColor

        button.layer.masksToBounds = true
        button.layer.cornerRadius = Metric.buttonWidth / 2

        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: Metric.buttonWidth).isActive = true
        button.heightAnchor.constraint(equalToConstant: Metric.buttonHeight).isActive = true

        return button
    }
}

// MARK: - Constants

extension ConstraintViewController {

    enum Metric {
        static let fourColumnRightAnchor: CGFloat = -15
        static let threeColumnRightAnchor: CGFloat = -105
        static let twoColumnRightAnchor: CGFloat = -195
        static let oneColumnRightAnchor: CGFloat = -285

        static let oneLineBottomAnchor: CGFloat = -495
        static let twoLineBottomAnchor: CGFloat = -410
        static let threeLineBottomAnchor: CGFloat = -320
        static let fourLineBottomAnchor: CGFloat = -230
        static let fiveLineBottomAnchor: CGFloat = -140
        static let sixLineBottomAnchor: CGFloat = -50

        static let zeroLeadingAnchor: CGFloat = 53
        static let zeroTrailingAnchor: CGFloat = -195

        static let buttonWidth: CGFloat = 75
        static let buttonHeight: CGFloat = 75

        static let labelSize: CGFloat = 70
        static let titleLabelSize: CGFloat = 30
    }
}
