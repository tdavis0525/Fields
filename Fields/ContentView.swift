//
//  ContentView.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
//
import SwiftUI

struct ContentView: View {
    @State private var particle: Particle = Particle(position: SpacetimePoint(x: 0, y: 0, z: 0, t: 0), velocity: Vector(x: 0, y: 0, z: 0), properties: ParticleProperties(mass: 9.109e-31, charge: -1.602e-19))
    @State private var electronField: ElectronField = ElectronField(charge: -1.602e-19, permittivity: 8.854e-12)

    var body: some View {
        VStack {
            Text("Simulation")
                .font(.largeTitle)
            
            // Display the particle's position (replace with visual representation)
            Text("Particle Position: \(particle.position.x), \(particle.position.y), \(particle.position.z)")
        }
        .onAppear {
            // Start your simulation loop here
            // ...
            // Update particle state, notify observers
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
