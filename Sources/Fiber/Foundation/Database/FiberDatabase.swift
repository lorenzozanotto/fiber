//
//  DefaultFiberDatabase.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

import Foundation

struct FiberDatabase: Database {
    let fileManager: FileManager

    static let `default` = FiberDatabase(fileManager: .default)

    init(fileManager: FileManager) {
        self.fileManager = fileManager
    }

    private var appDocumentsDirectory: URL {
        fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }

    var path: URL {
        appDocumentsDirectory.appendingPathComponent("default.fiber")
    }

    var isExisting: Bool {
        (try? path.checkPromisedItemIsReachable()) != nil
    }
}
