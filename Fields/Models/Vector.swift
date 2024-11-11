//
//  Vectors.swift
//  Fields
//
//  Created by Terrance Davis on 11/11/24.
//
import SwiftUI

struct Vector {
    var x: Double
    var y: Double
    var z: Double

    static func / (lhs: Vector, rhs: Double) -> Vector {
        return Vector(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs)
    }

    static func + (lhs: Vector, rhs: Vector) -> Vector {
        return Vector(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
    }
}
