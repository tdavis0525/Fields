//
//  FieldGridView.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

struct FieldGridView: View {
    let field: ParticleFieldProtocol
    let particle: Particle
    let gridSize: Int = 10 // Adjust for your grid size

    var body: some View {
        VStack {
            ForEach(0..<gridSize) { row in
                HStack {
                    ForEach(0..<gridSize) { col in
                        let point = SpacetimePoint(x: Double(col) / Double(gridSize - 1),
                                                   y: Double(row) / Double(gridSize - 1),
                                                   z: 0,
                                                   t: 0) // You can adjust the z-coordinate
                        let force = field.force(at: point)
                        let potential = field.potential(at: point)

                        Circle()
                            .fill(force.magnitude > 0 ? Color.red : Color.blue) // Example: Color based on force
                            .frame(width: 10, height: 10)
                            .overlay(
                                Text("\(potential, specifier: "%.2f")")
                                    .font(.caption)
                            )
                    }
                }
            }
        }
    }
}
