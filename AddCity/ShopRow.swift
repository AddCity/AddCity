//
//  ShopRow.swift
//  AddCity
//
//  Created by Masahiro on 2020/01/27.
//  Copyright © 2020 AddCity. All rights reserved.
//

import SwiftUI

struct ShopRow: View {
    var AddCity: AddCity

    var body: some View {
        VStack{
        Text(verbatim: AddCity.name)
        Spacer()
        }
    }
}



 struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ShopRow(AddCity: ShopData[0])
            ShopRow(AddCity: ShopData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
 }

