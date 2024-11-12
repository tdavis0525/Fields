//
//  ParticleProperties.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//


protocol ParticleProperties {
    var mass: Double { get }
    var charge: Double { get }
    var spin: Double { get }
    // ... other properties
    
    init(mass: Double, charge: Double) {
        self.mass = mass
        self.charge = charge
    }
}
struct ElectronProperties: ParticleProperties {
    let mass: Double = 9.1093837e-31 // kg
    let charge: Double = -1.60217663e-19 // Coulombs
    let spin: Double = 0.5 // in units of ħ (reduced Planck constant)
}

struct ProtonProperties: ParticleProperties {
    let mass: Double = 1.6726219e-27 // kg
    let charge: Double = 1.60217663e-19 // Coulombs
    let spin: Double = 0.5
}

struct NeutronProperties: ParticleProperties {
    let mass: Double = 1.67492747e-27 // kg
    let charge: Double = 0
    let spin: Double = 0.5
}

struct PhotonProperties: ParticleProperties {
    let mass: Double = 0 // Photons are massless
    let charge: Double = 0
    let spin: Double = 1
}
