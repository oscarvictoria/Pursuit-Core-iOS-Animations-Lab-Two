//
//  ViewController.swift
//  AnimationsTwoLab
//
//  Created by Oscar Victoria Gonzalez  on 2/5/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        animate()
        animateTwo()
        animateThree()
        animateFour()
        resetButton()
        animateButton()
    }
    
    func animate() {
        mainView.linearButton.addTarget(self, action: #selector(animateLinear), for: .touchUpInside)
    }
    
    func animateTwo() {
        mainView.easeInButton.addTarget(self, action: #selector(animateEaseIn), for: .touchUpInside)
    }
    
    func animateThree() {
        mainView.easeOutButton.addTarget(self, action: #selector(animateEaseOut), for: .touchUpInside)
    }
    
    func animateFour() {
        mainView.easeInOutButton.addTarget(self, action: #selector(animateEseInOut), for: .touchUpInside)
    }
    
    func resetButton() {
        mainView.resetButton.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
    }
    
    func animateButton() {
        mainView.animateButton.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
    }
    
    
    
    
    @objc func animateLinear() {
        if mainView.beahBallOne.alpha == 1 {
            mainView.beahBallOne.alpha = 0
        } else {
            mainView.beahBallOne.alpha = 1
        }
        
    }
    
    @objc func animateEaseIn() {
        if mainView.beachBallTwo.alpha == 1 {
            mainView.beachBallTwo.alpha = 0
        } else {
            mainView.beachBallTwo.alpha = 1
        }
        
    }
    
    @objc func animateEaseOut() {
        if mainView.beachBallThree.alpha == 1 {
            mainView.beachBallThree.alpha = 0
        } else {
            mainView.beachBallThree.alpha = 1
        }
        
    }
    
    @objc func animateEseInOut() {
        if mainView.beachBallFour.alpha == 1 {
            mainView.beachBallFour.alpha = 0
        } else {
            mainView.beachBallFour.alpha = 1
        }
    }
    
    @objc func resetButtonPressed() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.beahBallOne.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.beachBallTwo.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.beachBallThree.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.beachBallFour.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
    }
    
    @objc func animateButtonPressed() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.beahBallOne.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.beachBallTwo.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.beachBallThree.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.beachBallFour.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
    }
    
}

