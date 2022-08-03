//
//  ViewController.swift
//  Facade
//
//  Created by Вячеслав Квашнин on 03.08.2022.
//

import UIKit

enum ImageError: Error {
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDestinationPath
}

enum ImageType {
    case png
    case jpeg(compressionQuality: CGFloat)
}

class ViewController: UIViewController {
    
    let imageSaver = ImageSaverFacade()
    let image = UIImage(named: "image")!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        do {
            try imageSaver.save(image: image, type: .png, fileName: "myFile", overwrite: true)
        } catch {
            print(error)
        }
    }
}

