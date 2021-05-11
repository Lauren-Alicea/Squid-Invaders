//
//  GameViewController.swift
//  Squid-Invaders
//
//  Created by A.M. Student on 5/11/21.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        playMusic(sound: "background_music", type: "mp3")
        super.viewDidLoad()
        
        let scene = GameScene(size: CGSize(width: 1536, height: 2048))
        // Configure the view
        let skView = self.view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        
        //Sprite kit applies additional optimizations to improve rendering performance.
        skView.ignoresSiblingOrder = true
        
        //Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        skView.presentScene(scene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
