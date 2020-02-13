//
//  ContentView.swift
//  AddCity
//
//  Created by Masahiro on 2020/01/26.
//  Copyright © 2020 AddCity. All rights reserved.
//

//import SwiftUI
//struct ShopList: View {
//    var body: some View {
//        NavigationView {
//            List(ShopList) { landmark in
//                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                    ShopRow(landmark: landmark)
//                }
//            }
//            .navigationBarTitle(Text("Shop"))
//        }
//    }
//}
//
//struct ShopList_Previews: PreviewProvider {
//    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//           ShopList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
//    }
//}

//let ShopData: [AddCity] = load("ShopData.json")
//
//func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T { //チュートリアルからパクってきたようわからん
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
/*
struct ContentsView: View {
    var body: some View {
        Text(ShopData.name)
    }
}

struct AddCity_Previews: PreviewProvider {
    static var previews: some View {
        ContentsView()
    }
}
*/
 
