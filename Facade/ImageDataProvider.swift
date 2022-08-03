//
//  ImageDataProvider.swift
//
//  Created by Александр Михайлов on 03.08.2022.
//

import UIKit

class ImageDataProvider {
    public func data(from image: UIImage, type: ImageType) throws -> Data {
        switch type {
        case .png:
            return try pngData(from: image)
        case .jpeg(let compressionQuality):
            return try jpegData(from: image, compressionQuality: compressionQuality)
        }
    }
    
    private func pngData(from image: UIImage) throws -> Data {
        guard let imageData = image.pngData() else {
            throw ImageError.couldNotCreatePNGDataFromImage
        }
        return imageData
    }
    
    private func jpegData(from image: UIImage, compressionQuality: CGFloat) throws -> Data {
        guard let imageData = image.jpegData(compressionQuality: compressionQuality) else {
            throw ImageError.couldNotCreateJPEGDataFromImage
        }
        return imageData
    }
}
