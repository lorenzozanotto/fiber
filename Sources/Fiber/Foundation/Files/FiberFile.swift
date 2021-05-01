//
//  FiberFile.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

struct FiberFile: Codable {
    let createdAt: Int
    let models: [FiberModelLocation]
}

struct FiberModelLocation: Codable {
    let name: String
    let path: String
}
