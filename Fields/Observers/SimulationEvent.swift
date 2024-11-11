//
//  SimulationEvent.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

enum SimulationEventType {
    case ParticleMoved
    case FieldUpdated
    case TimeStepCompleted
}

struct SimulationEvent {
    let type: SimulationEventType
    let data: Any // Additional event data
}
