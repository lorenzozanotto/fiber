//
//  CodableSerializer.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

import Foundation

struct CodableSerializer {
    static let `default` = CodableSerializer()

    func stringify<Model: Codable>(_ model: Model) -> String {
        guard let dictionary = try? model.toDictionary() else {
            return .empty
        }

        guard let data = try? JSONSerialization.data(
            withJSONObject: dictionary,
            options: .prettyPrinted
        ) else {
            return .empty
        }

        return String(data: data, encoding: String.Encoding.utf8) ?? ""
    }
}
