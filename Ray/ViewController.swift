//
//  ViewController.swift
//  Ray
//
//  Created by Ashish Kumar Maurya on 10/11/17.
//  Copyright © 2017 Ashish. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func openGallry(_ sender: Any) {
        
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum
        imagePicker.allowsEditing = false
        
        self.present(imagePicker, animated: true, completion: nil)
        
        
     }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
       // selectimageview.image = image
        //  GlobalVariables.meterimage = image
        self.dismiss(animated: true, completion: nil)
    }
    
}

