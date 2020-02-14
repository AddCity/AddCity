//
//  ShopData.swift
//  AddCity
//
//  Created by Masahiro on 2020/01/27.
//  Copyright © 2020 AddCity. All rights reserved.
//


//うんちぶりぶり3


import UIKit
import SwiftUI

let ShopData: [AddCity] = load("ShopData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T { //チュートリアルからパクってきたようわからん
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

