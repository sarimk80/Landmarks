//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Sarim Khan on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark:Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width:32,height:32)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "Star.fill")
                    .imageScale(.medium)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        LandmarkRow(landmark: landmarkData[0])
         LandmarkRow(landmark: landmarkData[1])
    }.previewLayout(.fixed(width:300,height:70))
    }
}
