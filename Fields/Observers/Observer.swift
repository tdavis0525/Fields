//
//  FieldGridView.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

class StatisticsObserver: Observer {
    var particlePositions: [SpacetimePoint] = []

    func update(with event: SimulationEvent) {
        switch event.type {
        case .ParticleMoved:
            if let particle = event.data as? Particle {
                particlePositions.append(particle.position)
            }
        default:
            break
        }
    }
}
