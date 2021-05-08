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
        view.addSubviews(label, divisionButton, multiplyButton, subtractionButton,
                         additionButton, equalityButton, percentButton,
                         nineButton, sixButton, threeButton, commaButton,
                         plusMinusButton, eightButton, fiveButton, twoButton,
                         dischargeButton, sevenButton, fourButton, oneButton,
                         zeroButton)
    }

    private func setupLayout() {
        label.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                             bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.oneLineBottomAnchor)

        divisionButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                                      bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.twoLineBottomAnchor)
        multiplyButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                                      bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.threeLineBottomAnchor)
        subtractionButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                                         bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fourLineBottomAnchor)
        additionButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                                      bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fiveLineBottomAnchor)
        equalityButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.fourColumnRightAnchor,
                                      bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.sixLineBottomAnchor)

        percentButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.threeColumnRightAnchor,
                                     bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.twoLineBottomAnchor)
        nineButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.threeColumnRightAnchor,
                                  bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.threeLineBottomAnchor)
        sixButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.threeColumnRightAnchor,
                                 bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fourLineBottomAnchor)
        threeButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.threeColumnRightAnchor,
                                   bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fiveLineBottomAnchor)
        commaButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.threeColumnRightAnchor,
                                   bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.sixLineBottomAnchor)

        plusMinusButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.twoColumnRightAnchor,
                                       bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.twoLineBottomAnchor)
        eightButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.twoColumnRightAnchor,
                                   bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.threeLineBottomAnchor)
        fiveButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.twoColumnRightAnchor,
                                  bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fourLineBottomAnchor)
        twoButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.twoColumnRightAnchor,
                                 bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fiveLineBottomAnchor)

        dischargeButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.oneColumnRightAnchor,
                                       bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.twoLineBottomAnchor)
        sevenButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.oneColumnRightAnchor,
                                   bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.threeLineBottomAnchor)
        fourButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.oneColumnRightAnchor,
                                  bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fourLineBottomAnchor)
        oneButton.addConstraints(right: view.rightAnchor, paddingRight: Metric.oneColumnRightAnchor,
                                 bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.fiveLineBottomAnchor)

        zeroButton.addConstraints(leading: view.safeAreaLayoutGuide.leadingAnchor, paddingLeading: Metric.zeroLeadingAnchor,
                                  trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTrailing: Metric.zeroTrailingAnchor,
                                  bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: Metric.sixLineBottomAnchor)
//        zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.zeroLeadingAnchor).isActive = true
//        zeroButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.zeroTrailingAnchor).isActive = true
//        zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.sixLineBottomAnchor).isActive = true
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
