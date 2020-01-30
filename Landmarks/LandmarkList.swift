//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Sarim Khan on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
//            NavigationLink(destination: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                     LandmarkRow(landmark: landmark)
                }
                       
                      
                   }
        .navigationBarTitle("Destinations")
        }
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
