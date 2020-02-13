//
//  ShopList.swift
//  AddCity
//
//  Created by Masahiro on 2020/01/26.
//  Copyright © 2020 AddCity. All rights reserved.
//
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct ShopList: View {
    var body: some View {
           List(ShopData) { AddCity in
                ShopRow(AddCity: AddCity)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            ShopList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
