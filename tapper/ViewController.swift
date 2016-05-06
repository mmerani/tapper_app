//
//  ViewController.swift
//  tapper
//
//  Created by Michael Merani on 5/6/16.
//  Copyright © 2016 Michael Merani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var taps_max: Int = 0
    var taps_curr: Int = 0
    //My Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func OnCoinTap(sender: UIButton){
        taps_curr += 1
        updateTaps()
        if Gameover(){
            Restart()
        }
        
    }
    
    @IBAction func OnPlay(sender: UIButton!){
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""
        {
            logoImg.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            taps_max = Int(howManyTapsTxt.text!)!
            taps_curr = 0
            updateTaps()
            
        }
     }
    func Restart(){
        taps_max = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        tapButton.hidden = true
        tapsLabel.hidden = true
        
    }
    func Gameover() -> Bool{
        if taps_curr >= taps_max{
            return true
        }
        else{
            return false
        }
    }
    func updateTaps(){
        tapsLabel.text = "\(taps_curr) Taps"
    }
}

