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

            Text("Particle Position: \(particle.position.x), \(particle.position.y), \(particle.position.z)")
        }
        .onAppear {
            // Start your simulation loop here (update the particle and notify observers)
            Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
                particle = particle.update(field: electronField)
                
                // Notify observers
                NotificationCenter.default.post(name: Notification.Name("ParticleMoved"), object: nil, userInfo: ["particle": particle])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
