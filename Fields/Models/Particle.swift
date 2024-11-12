//
//  Particle.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//

import SwiftUI

struct Particle {
    var position: SpacetimePoint
    var velocity: Vector
    var properties: ParticleProperties

    func update(field: ParticleFieldProtocol) -> Particle {
        let force = field.force(at: position)
        // Update velocity and position based on force (e.g., using numerical integration)
        let acceleration = force / properties.mass
        let newVelocity = velocity + acceleration * 0.01 // Example time step
        let newPosition = position + newVelocity * 0.01 // Example time step

        return Particle(position: newPosition, velocity: newVelocity, properties: properties)
    }
}
