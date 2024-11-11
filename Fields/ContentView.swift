//
//  ContentView.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
//
import SwiftUI

struct ContentView: View {
    @State var electronField = ElectronField()

    var body: some View {
        VStack {
            // ... your UI elements (using FieldGridView, ParticleView, etc.)

            Button("Create Electron") {
                let location = SpacetimePoint3D(x: 0, y: 0, z: 0, t: 0) // Example location
                let properties = ElectronProperties()
                electronField.createParticle(at: location, with: properties)
            }
        }
    }
}
#Preview {
    ContentView()
}
