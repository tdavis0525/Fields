//
//  ParticleFieldProtocol.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//

import SwiftUI

protocol ParticleFieldProtocol {
    func force(at point: SpacetimePoint) -> Vector // Calculate force at a point
    func potential(at point: SpacetimePoint) -> Double // Calculate potential at a point
}
