//
//  PathProvider.swift
//  Facade
//
//  Created by Вячеслав Квашнин on 03.08.2022.
//

import Foundation

class PathProvider {
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(
            for: .documentDirectory,
               in: .userDomainMask).first else {
                   throw ImageError.couldNotCreateDestinationPath
               }
        let destinationPath = path.appendingPathComponent("\(fileName)")
        print(destinationPath)
        return destinationPath
    }
}
