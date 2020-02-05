//
//  MainView.swift
//  AnimationsTwoLab
//
//  Created by Oscar Victoria Gonzalez  on 2/5/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var animateButton: UIButton = {
    let button = UIButton()
    button.setTitle("Animate", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    return button
    }()
    
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    public lazy var beachBallFour: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        image.contentMode = .scaleAspectFit
        image.alpha = 1
        return image
    }()
    
    public lazy var beachBallThree: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        image.contentMode = .scaleAspectFit
        image.alpha = 1
        return image
    }()
    
    public lazy var beachBallTwo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        image.contentMode = .scaleAspectFit
        image.alpha = 1
        return image
    }()
    
    public lazy var beahBallOne: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        image.contentMode = .scaleAspectFit
        image.alpha = 1
        return image
    }()
    
    public lazy var easeInOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeInOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    public lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    public lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeIn", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    public lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        commonInit()
    }
    
    
    private func commonInit() {
        configureLinearButton()
        configureEaseInButton()
        configureEaseOutButton()
        configureEaseInOut()
        configureBeachBallOne()
        configureBeachBallTwo()
        configureBeachBallThree()
        configureBeachBallFour()
        configureResetButton()
        configureAnimateButton()
    }
    
    private func configureLinearButton() {
        addSubview(linearButton)
        linearButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            linearButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,  constant: 40),
            linearButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
        ])
    }
    
    private func configureEaseInButton() {
        addSubview(easeInButton)
        easeInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            easeInButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            easeInButton.leadingAnchor.constraint(equalTo: linearButton.trailingAnchor, constant: 50)
        ])
    }
    
    private func configureEaseOutButton() {
        addSubview(easeOutButton)
        easeOutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            easeOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            easeOutButton.leadingAnchor.constraint(equalTo: easeInButton.trailingAnchor, constant: 50)
        ])
    }
    
    private func configureEaseInOut() {
        addSubview(easeInOutButton)
        easeInOutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            easeInOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 45),
            easeInOutButton.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor, constant: 40)
        ])
    }
    
    private func configureBeachBallOne() {
        addSubview(beahBallOne)
        beahBallOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beahBallOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            beahBallOne.topAnchor.constraint(equalTo: linearButton.bottomAnchor, constant: 20),
            beahBallOne.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
            beahBallOne.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
            
        ])
    }
    
    private func configureBeachBallTwo() {
        addSubview(beachBallTwo)
        beachBallTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beachBallTwo.topAnchor.constraint(equalTo: easeInOutButton.bottomAnchor, constant: 20),
            beachBallTwo.leadingAnchor.constraint(equalTo: beahBallOne.trailingAnchor, constant: 70),
            beachBallTwo.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
            beachBallTwo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
        ])
    }
    
    private func configureBeachBallThree() {
        addSubview(beachBallThree)
        beachBallThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beachBallThree.topAnchor.constraint(equalTo: easeOutButton.bottomAnchor, constant: 20),
            beachBallThree.leadingAnchor.constraint(equalTo: easeInButton.trailingAnchor, constant: 70),
            beachBallThree.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
            beachBallThree.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
        ])
    }
    
    private func configureBeachBallFour() {
        addSubview(beachBallFour)
        beachBallFour.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beachBallFour.topAnchor.constraint(equalTo: easeInOutButton.bottomAnchor, constant: 20),
            beachBallFour.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor, constant: 50),
            beachBallFour.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
            beachBallFour.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
        ])
    }
    
    private func configureResetButton() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resetButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            resetButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 8)
        ])
    }
    
    private func configureAnimateButton() {
        addSubview(animateButton)
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animateButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            animateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 8)
        ])
    }
    
}
