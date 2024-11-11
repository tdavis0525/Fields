//
//  ParticleField.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import Foundation

class ParticleField: QuantumField {
    typealias FieldValue = Complex // Using Complex numbers for field values
    typealias SpacetimePoint = SpacetimePoint3D // Using our SpacetimePoint3D struct

    private var fieldValues: [SpacetimePoint: FieldValue] = [:] // Store field values
    private var observers: [Observer] = []

    init() {} // Initialize an empty field

    func force(at point: SpacetimePoint) -> Vector // Calculate force at a point
    
    func value(at location: SpacetimePoint) -> FieldValue {
        return fieldValues[location] ?? .zero // Return 0 if no value at that point
    }

    mutating func registerObserver(_ observer: Observer) {
        observers.append(observer)
    }

    func notifyObservers(of event: Event) {
        observers.forEach { $0.onEvent(event) }
    }

    enum Event {
        case particleCreated(at: SpacetimePoint, properties: ParticleProperties)
        case particleAnnihilated(at: SpacetimePoint)
        // ... other events
    }

    // Methods to be implemented by subclasses
    func updateField(with event: Event) {
        // Logic to update the field based on the event
        fatalError("Must be implemented by subclasses")
    }

    func createParticle(at location: SpacetimePoint, with properties: ParticleProperties) {
        // Logic to create a particle in the field
        fatalError("Must be implemented by subclasses")
    }

    func annihilateParticle(at location: SpacetimePoint) {
        // Logic to annihilate a particle in the field
        fatalError("Must be implemented by subclasses")
    }
    
}
