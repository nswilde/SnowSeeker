//
//  FileManager.swift
//  SnowSeeker
//
//  Created by Nikki Wilde on 8/12/23.
//

import Foundation
import UIKit

let fileName = "favorites.json"
let loadError = "There was an error loading favorites."



extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func readDocument() throws -> Data {
        let url = Self.documentsDirectory.appendingPathComponent(fileName)
        do {
            return try Data(contentsOf: url)
        } catch {
            throw DataError.readError
        }
    }
    
}
