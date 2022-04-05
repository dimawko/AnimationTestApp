
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        let animation = Animation(
            preset: Spring.AnimationPreset.allCases.randomElement()!.rawValue,
            curve: Spring.AnimationCurve.allCases.randomElement()!.rawValue,
            force: Double.random(in: 0.1...1.0),
            duration: Double.random(in: 0.5...3.0),
            delay: Double.random(in: 0.1...1.0)
        )
        return animation
    }
}




