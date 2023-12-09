//
//  Error.swift
//  SnowSeeker
//
//  Created by Nikki Wilde on 8/12/23.
//

import SwiftUI

enum DataError: Error, LocalizedError {
    case readError
    case saveImageError
    
    var errorDescription: String? {
        switch self {
        case .readError:
            return NSLocalizedString("Failed", comment: "")
        case .saveImageError:
            return NSLocalizedString("Failed to save", comment: "")
        }
    }
    
    struct ErrorType: Identifiable {
        let id = UUID()
        let error: DataError
        var message: String {
            error.localizedDescription
        }
        let button = Button("OK", role: .cancel) {}
    }
}
