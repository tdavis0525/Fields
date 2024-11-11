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
    
    func update(field: ParticleField) -> Particle {
        // Calculate the force on the particle
        let force = field.force(at: position)
        
        // Update velocity and position based on the force
        // ...
        
        return Particle(position: position, velocity: velocity, properties: properties)

        func force(at point: SpacetimePoint) -> Vector // Calculate force at a point
    }
}


