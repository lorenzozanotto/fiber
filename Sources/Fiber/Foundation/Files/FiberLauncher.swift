//
//  FiberLauncher.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

import Foundation

final class FiberLauncher {
    private let fileWriter: FiberFileWriter

    init(fileWriter: FiberFileWriter) {
        self.fileWriter = fileWriter
    }

    func launch() {
        fileWriter.bootstrap()
    }
}
