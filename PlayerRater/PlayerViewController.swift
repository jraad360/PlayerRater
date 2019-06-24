//
//  PlayerViewController.swift
//  PlayerRater
//
//  Created by Jorge Alejandro Raad on 6/12/19.
//  Copyright © 2019 Jorge Alejandro Raad. All rights reserved.
//

import UIKit
import os.log

class PlayerViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Properties
    @IBOutlet weak var playerTextField: UITextField!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set delegate
        playerTextField.delegate = self
    }

    // MARK: Navigation
    override func prepar(for: segue, sender: sender) {
        
    }
    
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // hide keyboard
        playerTextField.resignFirstResponder()
        
        // view controller that enables picking from library
        let imagePickerController = UIImagePickerController()
        
        // allow photos to be picked
        imagePickerController.sourceType = .photoLibrary
        
        // notify ViewController when user picks an image
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // dismiss picker if user cancels
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage else {
                fatalError("Expected a dictionary containing an image, but wwas provided the following: \(info)")
        }
        
        playerImage.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
}

