//
//  FileWriter.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

import Foundation

protocol FiberFileWriter {
    func bootstrap()
}

final class DefaultFileWriter {

    /// The Fiber database that is going to be used
    private let database: FiberDatabase

    /// A serializer used to convert Codable models to strings
    private let serializer: CodableSerializer

    /// The file manager used to create and boostrap a Fiber
    private let fileManager: FileManager

    init(
        database: FiberDatabase,
        serializer: CodableSerializer,
        fileManager: FileManager
    ) {
        self.database = database
        self.serializer = serializer
        self.fileManager = fileManager
    }
}

extension DefaultFileWriter: FiberFileWriter {

    func bootstrap() {
        guard !database.isExisting else { return }

        let emptyFiberFile = FiberFile(
            createdAt: Int(Date().timeIntervalSince1970),
            models: []
        )

        let writable = serializer.stringify(emptyFiberFile)
        try? writable.write(to: database.path, atomically: true, encoding: .utf8)
    }
}
