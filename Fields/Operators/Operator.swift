//
//  Operator.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
// Operator.swift

protocol Operator {
    associatedtype Field: QuantumField  // The type of field this operator acts on

    func apply(to field: Field, at location: Field.SpacetimePoint) -> Field
    // Applies the operator to the field at a specific spacetime point
}
