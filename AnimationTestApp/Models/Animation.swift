
import Spring

struct Animation {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getAnimation() -> Animation {
        return Animation(
            preset: "",
            curve: "",
            force: 0,
            duration: 0,
            delay: 0
        )
    }
}




