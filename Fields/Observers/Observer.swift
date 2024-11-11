//
//  FieldGridView.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//

protocol Observer {
    func update(with event: SimulationEvent)
    // Could be more specific, e.g., onParticleCreated, onFieldUpdated
}

