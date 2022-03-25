import Spring

struct Animation {
    
    var preset: String!
    var curve: String!
    
    var force: Float!
    var duration: Float!
    var delay: Float!

    var description: String {
 
        """
            Preset: \(preset ?? "")
            Curve: \(curve ?? "")
            Force: \(CGFloat(force) )
            Duration: \(CGFloat(duration) )
            Delay: \(CGFloat(delay))
        """
    }
    
}

extension Animation {
    
    static func newAnimation()  -> Animation {
        let name = Data.shared.presetsList.randomElement()
        let curveName = Data.shared.curvesList.randomElement()
        let newForce = Float.random(in: 0.5...1.5)
        let roundForce = Float(round(100*newForce/100))
        let newDuration = Float.random(in: 2.0...3.0)
        let roundNewDuration = Float(round(100*newDuration/100))
        let newDelay = Float.random(in: 0.0...0.3)
        let roundNewDelay = Float(round(100*newDelay/100))
        
        let animation = Animation(
            preset: name,
            curve: curveName,
            force: roundForce,
            duration: roundNewDuration,
            delay: roundNewDelay
        )
        return animation
    }
}

