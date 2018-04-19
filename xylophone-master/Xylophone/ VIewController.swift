//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
var audio = AVAudioPlayer()
    var note1 = Bundle.main.url(forResource: "note1", withExtension: "wav")
    var note2 = Bundle.main.url(forResource:"note2", withExtension: "wav")
    var note3 = Bundle.main.url(forResource: "note3", withExtension: "wav")
    var note4 = Bundle.main.url(forResource:"note4", withExtension: "wav")
    var note5 = Bundle.main.url(forResource:"note5", withExtension: "wav")
    var note6 = Bundle.main.url(forResource:"note6", withExtension: "wav")
var note7=Bundle.main.url(forResource:"note7",withExtension:"wav")

    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        if sender.tag == 1{
            do {
                print("the first note was accessed")
                try audio = AVAudioPlayer(contentsOf: note1!)
            }
            catch { print(error)}
            audio.play()
    }
        if sender.tag == 2{
        do {
            print(" the second note was accessed")
            try audio = AVAudioPlayer(contentsOf: note2!)
            }
        catch { print (error) }
            audio.play()
        }
        if sender.tag == 3 {
            do {
                print("the third note was accessed")
                try audio = AVAudioPlayer(contentsOf:note3!)
            }
            catch {print(error)}
            audio.play()
        }
        if sender.tag == 4 {
            do {
                print("the fourth note was accessed")
                try audio = AVAudioPlayer(contentsOf:note4!)
            }
            catch{print(error)}
            audio.play()
        }
        if sender.tag == 5 {
            do {try audio = AVAudioPlayer(contentsOf:note5!)
                print("the fifth note was accessed")
            }
            catch{print(error)}
            audio.play()
        }
        if sender.tag == 6 {
            do {try audio = AVAudioPlayer(contentsOf:note6!)
                print("the sixth note was accessed")
            }
            catch{print(error)}
            audio.play()
        }
        if sender.tag == 7 {
            do {try audio = AVAudioPlayer(contentsOf:note7!)
                print("the seventh note was accessed")
            }
            catch{print(error)}
            audio.play()
        }
  

}

}
