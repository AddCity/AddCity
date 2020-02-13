//
//  drian.swift
//  AddCity
//
//  Created by Masahiro on 2020/02/11.
//  Copyright © 2020 AddCity. All rights reserved.
//

class JSONDecoder {

struct GroceryProduct: Codable {
    var name: String
    var points: Int
    var description: String?
}

let json = """
{
    "name": "Durian",
    "points": 600,
    "description": "A fruit with a distinctive scent."
}
""".data(using: .utf8)!

let decoder = JSONDecoder()
let product = try decoder.decode(GroceryProduct.self, from: json)

print(product.name) // Prints "Durian"
}
