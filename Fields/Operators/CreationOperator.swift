//
//  CreationOperator.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
// CreationOperator.swift

struct CreationOperator<F: ParticleField>: Operator where F.FieldValue == Complex {
    typealias Field = F

    let properties: ParticleProperties

    func apply(to field: Field, at location: Field.SpacetimePoint) -> Field {
        var newField = field // Create a mutable copy of the field

        // Logic to create a particle in the field
        // This is a simplified example, and the actual implementation
        // would depend on the specific field type and particle properties
        let newValue = field.value(at: location) + Complex(1.0, 0.0) // Example: Increase field value
        newField.fieldValues[location] = newValue

        print("Particle created at \(location) with properties \(properties)")

        return newField
    }
}
