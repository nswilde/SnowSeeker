//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Nikki Wilde on 4/12/23.
//

import SwiftUI

struct SkiDetailsView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            Text("Elevation")
                .font(.caption.bold())
            Text("\(resort.elevation)m")
                .font(.title3)
        }
        
        VStack {
            Text("Snow")
                .font(.caption.bold())
            Text("\(resort.snowDepth)cm")
                .font(.title3)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SkiDetailsView(resort: Resort.example)
}
