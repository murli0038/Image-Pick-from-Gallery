//
//  ViewController.swift
//  ImagePickerFromPhotos
//
//  Created by Nikunj Prajapati on 23/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate
{

    
    @IBOutlet weak var ImagePick: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    
    
    @IBAction func SetImageBtn(_ sender: AnyObject)
    {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
     
        present(imagePicker ,animated: true , completion: nil)
    
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
       let PickedImage = info[.originalImage] as? UIImage
        
            ImagePick.contentMode = .scaleAspectFill
            ImagePick.image = PickedImage
        
        dismiss(animated: true, completion: nil)
    }


    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }

  
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        // Do any additional setup after loading the view.
    }


}

