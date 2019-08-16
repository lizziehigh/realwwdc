//
//  ViewController.swift
//  realwwdc
//
//  Created by Lizzie High on 3/23/19.
//  Copyright © 2019 Lizzie High. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var snare:UIButton!
    var floorTom:UIButton!
    var kick:UIButton!
    var midTom:UIButton!
    var hiTom:UIButton!
    var ride:UIButton!
    var crash:UIButton!
    var hiHats:UIButton!
    var gregorianChant:UIButton!
    
    var snareAudio:AVAudioPlayer?
    var kickAudio:AVAudioPlayer?
    var floorTomAudio:AVAudioPlayer?
    var midTomAudio:AVAudioPlayer?
    var hiTomAudio:AVAudioPlayer?
    var crashAudio:AVAudioPlayer?
    var rideAudio:AVAudioPlayer?
    var hiHatAudio:AVAudioPlayer?
    var gregorianChantAudio:AVAudioPlayer?
    
    let drumTop = UIImage(named: "drumTop")
    let cymbal = UIImage(named: "cymbal")
    let gregorianChantImg = UIImage(named: "gregorianChantImg")


    override func viewDidLoad() {
        super.viewDidLoad()
        
        gregorianChant = UIButton()
        gregorianChant.frame = CGRect(x: 260, y: 20, width: 260, height: 60)
        gregorianChant.setTitle("GREGORIAN CHANT", for: UIControl.State.normal)
        gregorianChant.setTitleColor(UIColor.black, for: UIControl.State.normal)
        gregorianChant.backgroundColor = UIColor.white
        gregorianChant.layer.borderWidth = 5
        gregorianChant.setBackgroundImage(gregorianChantImg, for: .normal)
        gregorianChant.layer.cornerRadius = 40
        gregorianChant.addTarget(self, action: #selector(gregorianChantInAction), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(gregorianChant)
        
        snare = UIButton()
        snare.frame = CGRect(x: 230, y: 220, width: 140, height: 140)
        snare.setTitle("SNARE", for: UIControl.State.normal)
        snare.setTitleColor(UIColor.black, for: UIControl.State.normal)
        snare.backgroundColor = UIColor.white
        snare.layer.borderWidth = 5
        snare.setBackgroundImage(drumTop, for: .normal)
        snare.layer.cornerRadius = 70
        snare.addTarget(self, action: #selector(snareInAction), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(snare)
        
        
        floorTom = UIButton()
        floorTom.frame = CGRect(x: 530, y: 220, width: 160, height: 160)
        floorTom.setTitle("FLOOR TOM", for: UIControl.State.normal)
        floorTom.setTitleColor(UIColor.black, for: UIControl.State.normal)
        floorTom.backgroundColor = UIColor.white
        floorTom.layer.borderWidth = 5
        floorTom.layer.cornerRadius = 77
        floorTom.addTarget(self, action: #selector(floorTomInAction), for: UIControl.Event.touchUpInside)
        floorTom.setBackgroundImage(drumTop, for: .normal)
        
        self.view.addSubview(floorTom)
        
        
        kick = UIButton()
        kick.frame = CGRect(x: 360, y: 170, width: 175, height: 175)
        kick.setTitle("BASS", for: UIControl.State.normal)
        kick.setTitleColor(UIColor.black, for: UIControl.State.normal)
        kick.backgroundColor = UIColor.white
        kick.layer.borderWidth = 5
        kick.layer.cornerRadius = 85
        kick.addTarget(self, action: #selector(kickInAction), for: UIControl.Event.touchUpInside)
        kick.setBackgroundImage(drumTop, for: .normal)
        
        self.view.addSubview(kick)
        
        
        midTom = UIButton()
        midTom.frame = CGRect(x: 300, y: 80, width: 130, height: 130)
        midTom.setTitle("MID TOM", for: UIControl.State.normal)
        midTom.setTitleColor(UIColor.black, for: UIControl.State.normal)
        midTom.backgroundColor = UIColor.white
        midTom.layer.borderWidth = 5
        midTom.layer.cornerRadius = 65
        midTom.addTarget(self, action: #selector(midTomInAction), for: UIControl.Event.touchUpInside)
        midTom.setBackgroundImage(drumTop, for: .normal)
        
        self.view.addSubview(midTom)
        
        
        hiTom = UIButton()
        hiTom.frame = CGRect(x: 430, y: 65, width: 120, height: 120)
        hiTom.setTitle("HI TOM", for: UIControl.State.normal)
        hiTom.setTitleColor(UIColor.black, for: UIControl.State.normal)
        hiTom.backgroundColor = UIColor.white
        hiTom.layer.borderWidth = 5
        hiTom.layer.cornerRadius = 60
        hiTom.addTarget(self, action: #selector(hiTomInAction), for: UIControl.Event.touchUpInside)
        hiTom.setBackgroundImage(drumTop, for: .normal)
        
        self.view.addSubview(hiTom)

        
        ride = UIButton()
        ride.frame = CGRect(x: 550, y: 65, width: 173, height: 173)
        ride.setTitle("RIDE", for: UIControl.State.normal)
        ride.setTitleColor(UIColor.black, for: UIControl.State.normal)
        ride.backgroundColor = UIColor.white
        ride.layer.borderWidth = 6
        ride.layer.cornerRadius = 82
        ride.addTarget(self, action: #selector(rideInAction), for: UIControl.Event.touchUpInside)
        ride.setBackgroundImage(cymbal, for: .normal)
        
        self.view.addSubview(ride)
        
        crash = UIButton()
        crash.frame = CGRect(x: 135, y: 60, width: 173, height: 173)
        crash.setTitle("CRASH", for: UIControl.State.normal)
        crash.setTitleColor(UIColor.black, for: UIControl.State.normal)
        crash.backgroundColor = UIColor.white
        crash.layer.borderWidth = 6
        crash.layer.cornerRadius = 82
        crash.addTarget(self, action: #selector(crashInAction), for: UIControl.Event.touchUpInside)
        crash.setBackgroundImage(cymbal, for: .normal)
        
        self.view.addSubview(crash)
        
        
        hiHats = UIButton()
        hiHats.frame = CGRect(x: 100, y: 220, width: 133, height: 133)
        hiHats.setTitle("HI HATS", for: UIControl.State.normal)
        hiHats.setTitleColor(UIColor.black, for: UIControl.State.normal)
        hiHats.backgroundColor = UIColor.white
        hiHats.layer.borderWidth = 6
        hiHats.layer.cornerRadius = 65
        hiHats.addTarget(self, action: #selector(hiHatInAction), for: UIControl.Event.touchUpInside)
        hiHats.setBackgroundImage(cymbal, for: .normal)
        
        self.view.addSubview(hiHats)
    }
    @objc func snareInAction() {
        guard let path = Bundle.main.path(forResource: "snare", ofType: "mp3")
            else {
                return
        }
        let urlSnare = URL(fileURLWithPath: path)
        snareAudio = try? AVAudioPlayer(contentsOf: urlSnare, fileTypeHint: nil)
        snareAudio?.prepareToPlay()

        snareAudio?.play()
        
        snare.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.snare.transform = .identity
            },
                       completion: nil)
        
    }

    @objc func kickInAction() {
        guard let path = Bundle.main.path(forResource: "kick", ofType: "wav")
            else {
                return
        }
        let urlKick = URL(fileURLWithPath: path)
        kickAudio = try? AVAudioPlayer(contentsOf: urlKick, fileTypeHint: nil)
        kickAudio?.prepareToPlay()
        
        kickAudio?.play()
        
        kick.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.kick.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func floorTomInAction() {
        guard let path = Bundle.main.path(forResource: "floorTom", ofType: "wav")
            else {
                return
        }
        let urlFloorTom = URL(fileURLWithPath: path)
        floorTomAudio = try? AVAudioPlayer(contentsOf: urlFloorTom, fileTypeHint: nil)
        floorTomAudio?.prepareToPlay()
        
        floorTomAudio?.play()
        
        floorTom.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.floorTom.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func midTomInAction() {
        guard let path = Bundle.main.path(forResource: "midTom", ofType: "wav")
            else {
                return
        }
        let urlMidTom = URL(fileURLWithPath: path)
        midTomAudio = try? AVAudioPlayer(contentsOf: urlMidTom, fileTypeHint: nil)
        midTomAudio?.prepareToPlay()
        
        midTomAudio?.play()
        
        midTom.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.midTom.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func hiTomInAction() {
        guard let path = Bundle.main.path(forResource: "hiTom", ofType: "wav")
            else {
                return
        }
        let urlHiTom = URL(fileURLWithPath: path)
        hiTomAudio = try? AVAudioPlayer(contentsOf: urlHiTom, fileTypeHint: nil)
        hiTomAudio?.prepareToPlay()
        
        hiTomAudio?.play()
        
        hiTom.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.hiTom.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func crashInAction() {
        guard let path = Bundle.main.path(forResource: "crash", ofType: "wav")
            else {
                return
        }
        let urlCrash = URL(fileURLWithPath: path)
        crashAudio = try? AVAudioPlayer(contentsOf: urlCrash, fileTypeHint: nil)
        crashAudio?.prepareToPlay()
        
        crashAudio?.play()
        
        crash.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.crash.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func rideInAction() {
        guard let path = Bundle.main.path(forResource: "ride", ofType: "wav")
            else {
                return
        }
        let urlRide = URL(fileURLWithPath: path)
        rideAudio = try? AVAudioPlayer(contentsOf: urlRide, fileTypeHint: nil)
        rideAudio?.prepareToPlay()
        
        rideAudio?.play()
        
        ride.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.ride.transform = .identity
            },
                       completion: nil)
    }
    
    @objc func hiHatInAction() {
        guard let path = Bundle.main.path(forResource: "hiHat", ofType: "mp3")
            else {
                return
        }
        let urlHiHat = URL(fileURLWithPath: path)
        hiHatAudio = try? AVAudioPlayer(contentsOf: urlHiHat, fileTypeHint: nil)
        hiHatAudio?.prepareToPlay()
        
        hiHatAudio?.play()
        
        hiHats.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.hiHats.transform = .identity
            },
                       completion: nil)
        
    }
    
    
    @objc func gregorianChantInAction() {
        guard let path = Bundle.main.path(forResource: "gregorianChant", ofType: "wav")
            else {
                return
        }
        let urlGregorianChant = URL(fileURLWithPath: path)
        gregorianChantAudio = try? AVAudioPlayer(contentsOf: urlGregorianChant, fileTypeHint: nil)
        gregorianChantAudio?.prepareToPlay()
        
        gregorianChantAudio?.play()
        
        gregorianChant.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.gregorianChant.transform = .identity
            },
                       completion: nil)
        
    }
}

