//
//  PlaySound.swift
//  Squid-Invaders
//
//  Created by A.M. Student on 5/11/21.
//

import AVFoundation

var musicPlayer: AVAudioPlayer?

func playMusic(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            musicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            musicPlayer?.play()
        } catch {
            print("ERROR: Couldn't play music")
        }
    }
}
