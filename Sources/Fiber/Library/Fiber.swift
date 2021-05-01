//
//  Fiber.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

import Foundation

final class Fiber {

    /// An instance of the file writer
    private let fileWriter: FiberFileWriter

    init() {
        self.fileWriter = DefaultFileWriter(
            database: .default,
            serializer: .default,
            fileManager: .default
        )

        fileWriter.bootstrap()
    }
}
