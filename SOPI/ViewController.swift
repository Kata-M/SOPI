//
//  ViewController.swift
//  SOPI
//
//  Created by Katariina Martikainen on 11/04/2018.
//  Copyright © 2018 Kata-M. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    //__________________________________//
    //Send button
    @IBOutlet weak var Send: UIButton!
    
    //__________________________________//
    
    //Camera button
    @IBOutlet weak var Camera: UIButton!
    
    //Photo Library button
    @IBOutlet weak var PhotoLibrary: UIButton!
    
    
    //UIImageView
    @IBOutlet weak var ImageDisplay: UIImageView!
    

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func PhotoLibraryAction(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
    
        present(picker, animated:true, completion:nil)
    }
    
    @IBAction func CameraAction(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated:true, completion:nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage]as? UIImage;dismiss(animated: true,completion: nil)
    }
    
    
}


