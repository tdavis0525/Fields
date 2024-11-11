//
//  ElectronField.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

struct ElectronField: ParticleFieldProtocol {
    let charge: Double // e.g., -1.602e-19 coulombs
    let permittivity: Double // e.g., 8.854e-12 F/m

    func force(at point: SpacetimePoint) -> Vector {
        // Implement your force calculation here (e.g., Coulomb's Law)
        let distance = point.distance(to: SpacetimePoint(x: 0, y: 0, z: 0, t: 0)) // Example: Assuming the charge is at the origin
        let k = 1 / (4 * Double.pi * permittivity)
        let forceMagnitude = k * abs(charge) / (distance * distance)

        return Vector(x: forceMagnitude * (point.x / distance),
                      y: forceMagnitude * (point.y / distance),
                      z: forceMagnitude * (point.z / distance))
    }

    func potential(at point: SpacetimePoint) -> Double {
        // Implement your potential calculation here (e.g., Coulomb's Law)
        let distance = point.distance(to: SpacetimePoint(x: 0, y: 0, z: 0, t: 0)) // Example: Assuming the charge is at the origin
        let k = 1 / (4 * Double.pi * permittivity)
        return k * charge / distance
    }
}
