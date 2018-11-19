//
//  ViewController.swift
//  TrashorNot
//
//  Created by Ruchi Gupta on 7/25/2018.
//  Copyright © 2018 Ruchi Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated 
    }

    @IBAction func Camerabutton(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
        let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        self.present(imagePicker, animated: true, completion: nil)
        }

    }
    
    @IBAction func Librarybutton(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            
            let library = UIImagePickerController()
            library.delegate = self
            library.sourceType = UIImagePickerController.SourceType.photoLibrary
            self.present(library, animated: true, completion: nil)
        }
    } 
}

