//
//  SpacetimePoint.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//

import Foundation

protocol SpacetimePoint {
    var x: Double { get set }
    var y: Double { get set }
    var z: Double { get set }
    var t: Double { get set }
}

struct SpacetimePoint3D: SpacetimePoint {
    var x: Double
    var y: Double
    var z: Double
    var t: Double
}
