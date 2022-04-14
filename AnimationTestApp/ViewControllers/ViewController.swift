//
//  ViewController.swift
//  AnimationTestApp
//
//  Created by Dinmukhammed Sagyntkan on 05.04.2022.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    //MARK: - Private Properties
    var animation = Animation.getRandomAnimation()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    //MARK: - IBActions
    @IBAction func runButtonPressed(_ sender: UIButton) {
        updateUI()
        
        springAnimationView.animation = animation.preset
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.curve = animation.curve
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

//MARK: - Private methods
extension ViewController {
  
    private func updateUI() {
        
        descriptionLabel.text =
"""
Preset: \(animation.preset)
Curve: \(animation.curve)
Force: \(String(format: "%.2f", animation.force))
Duration: \(String(format: "%.2f",animation.duration))
Delay: \(String(format: "%.2f",animation.delay))
"""
    }
}

