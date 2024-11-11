//
//  QuantumField.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//

import Foundation

protocol QuantumField {
    associatedtype FieldValue // Type of the field value (e.g., Complex)
    associatedtype SpacetimePoint // Representation of spacetime points

    func value(at: SpacetimePoint) -> FieldValue
    mutating func registerObserver(_ observer: Observer)
    func notifyObservers(of event: Event)

    enum Event {
        case particleCreated(at: SpacetimePoint, properties: ParticleProperties)
        case particleAnnihilated(at: SpacetimePoint)
        // ... other events (e.g., field interactions, scattering)
    }
}
