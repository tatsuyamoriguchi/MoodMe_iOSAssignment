//
//  ViewController.swift
//  MoodMe_iOSAssignment
//
//  Created by Tatsuya Moriguchi on 10/30/24.
//

import UIKit
import CoreData
import AVFoundation

class VideoScreenViewController: UIViewController, AVCaptureFileOutputRecordingDelegate {
    
    let session = AVCaptureSession()
    let videoOutput = AVCaptureMovieFileOutput()
    var mustacheImageView = UIImageView(image: UIImage(named: "defaultMustache"))
    var mustacheList = ["mustach1", "mustache2", "mustach3"]
    var currentMustacheIndex = 0
    var startTime: Date?
    
    
    func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: (any Error)?) {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func setupSession() {
        
    }

}

