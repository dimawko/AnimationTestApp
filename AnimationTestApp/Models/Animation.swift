//
//  ViewController.swift
//  AnimationTestApp
//
//  Created by Dinmukhammed Sagyntkan on 05.04.2022.
//

struct Animation {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    
    static func getRandomAnimation() -> Animation {
        return Animation(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.1...1.0),
            duration: Double.random(in: 0.5...1.0),
            delay: Double.random(in: 0.1...0.5)
        )
    }
}

