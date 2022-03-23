import Spring

struct Animation {
    
    var preset: String!
    var curve: String!
    
    var force: CGFloat {
        CGFloat.random(in: 0.5...1.2)
    }
    var duration: CGFloat {
        CGFloat.random(in: 1.0...3.0)
    }
    var delay: CGFloat {
        CGFloat.random(in: 0.1...0.5)
    }
    
}

extension Animation {
    
    static func getPresets() -> [String] {
        let newPresets = Data.shared.presetsList.shuffled()
        return newPresets
    }
    
    static func getCurves() -> [String] {
        let newCurves = Data.shared.curvesList.shuffled()
        return newCurves
    }
    
//    func newPresetName() -> String {
//        let animations = Animation.getPresets()
//        let newName = animations[0]
//        return newName
//    }
//    
//  func newCurveName() -> String {
//        let curves = Animation.getCurves()
//        let newCurvesName = curves[0]
//        return newCurvesName
//    }
    
 
}
