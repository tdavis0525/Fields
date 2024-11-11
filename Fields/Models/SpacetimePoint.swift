//
//  SpacetimePoint.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

struct SpacetimePoint {
    var x: Double
    var y: Double
    var z: Double
    var t: Double // Time component

    func distance(to other: SpacetimePoint) -> Double {
        let dx = x - other.x
        let dy = y - other.y
        let dz = z - other.z
        return sqrt(dx * dx + dy * dy + dz * dz)
    }
}
