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
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    //MARK: - Private Properties
    private var animation = Animation()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomAnimation()
        updateUI()
    }
    
    //MARK: - IBActions
    @IBAction func runButtonPressed() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        updateUI()
        
        getRandomAnimation()
        
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}

//MARK: - Private methods
extension ViewController {
    private func getRandomAnimation() {
        animation.preset = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        animation.curve = Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        animation.force = Double.random(in: 0.1...1.0)
        animation.duration = Double.random(in: 0.5...1.0)
        animation.delay = Double.random(in: 0.1...0.5)
    }
    
    private func updateUI() {
        presetLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
    }
}

