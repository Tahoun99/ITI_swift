//
//  ViewController.swift
//  AppEventCount
//
//  Created by Ahmad Mohsen on 29/07/2024.
//

import UIKit

class ViewController: UIViewController {

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    
    @IBOutlet weak var willConnectToLabel: UILabel!
    var willConnectCount = 0
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    var didBecomeActiveCount = 0
    
    @IBOutlet weak var willResignActiveLabel: UILabel!
    var willResignActiveCount = 0
    
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    var willEnterForegroundCount = 0
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    var didEnterBackgroundCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        
        configurationForConnectingLabel.text = "The App has configured for connecting \(appDelegate.configurationForConnectionCount) time(s)"
        
        willConnectToLabel.text = "Will conect to \(willConnectCount) time(s)"
        
        didBecomeActiveLabel.text = "Did become Active \(didBecomeActiveCount) time(s)"
        
        willResignActiveLabel.text = "Will resign active \(willResignActiveCount) time(s)"
        
        willEnterForegroundLabel.text = "Will enter forground \(willEnterForegroundCount) times(s)"
        
        didEnterBackgroundLabel.text = "Did enter background \(didEnterBackgroundCount) time(s)"
        
        
    }

}

