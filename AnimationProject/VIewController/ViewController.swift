

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationSpringView: SpringView!
    
    @IBOutlet weak var nextPresetNameButton: SpringButton!

    
    let presets = Animation.getPresets()
    let curves = Animation.getCurves()
    
    let animations = Animation()

    override func viewDidLoad() {
        super.viewDidLoad()
        animationSpringView.layer.cornerRadius = 10
        nextPresetNameButton.layer.cornerRadius = 10
        nextPresetNameButton.setTitle(presets[0], for: .normal)
    }
    

    @IBAction func changeAnimation() {
        performFirstAnimation()
    }
    
    

   private func performFirstAnimation() {
        animationSpringView.animation = presets[0]
        animationSpringView.curve = presets[0]
        animationSpringView.force = animations.force
        animationSpringView.duration = animations.duration
        animationSpringView.delay = animations.delay
        animationSpringView.animate()
    }

    
    
    
}

