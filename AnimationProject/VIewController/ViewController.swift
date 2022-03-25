

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var newAnimationSpringView: SpringView!
    
    @IBOutlet weak var nextPresetNameButton: SpringButton!
    
   

    
    private var animation = Animation.newAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        newAnimationSpringView.layer.cornerRadius = 10
        nextPresetNameButton.layer.cornerRadius = 10
        descriptionLabel.text = animation.description
        
    }
    

    @IBAction func changeAnimation() {
        
        descriptionLabel.text = animation.description
        
        newAnimationSpringView.animation = animation.preset
        newAnimationSpringView.curve = animation.curve
        newAnimationSpringView.force = CGFloat(animation.force)
        newAnimationSpringView.duration = CGFloat(animation.duration)
        newAnimationSpringView.delay = CGFloat(animation.delay)
        newAnimationSpringView.animate()
        
        animation = Animation.newAnimation()

        nextPresetNameButton.setTitle(animation.preset, for: .normal)
        }
    
    

    

    
}

