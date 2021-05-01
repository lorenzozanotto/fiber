//
//  FiberDatabase.swift
//  Fiber
//
//  Created by Lorenzo Zanotto on 01/05/21.
//

protocol Database {

    /// The location where the fiber file can be found
    var path: URL { get }

    /// Tells whether the fiber file is existing
    var isExisting: Bool { get }
}
