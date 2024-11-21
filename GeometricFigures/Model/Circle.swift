//
//  Circle.swift
//  GeometricFigures
//
//  Created by Ahmet Kaan Caliskan on 2024-10-03.
//
protocol Describable {
    var description: String { get }
}

struct Sphere: Describable {
    var radius : Double
    var area: Double {
        return 4 * Double.pi * radius * radius
    }
    var volume: Double {
        return (4 * Double.pi * radius * radius * radius) / 3
    }
    var description: String {
        return "The surface area of this Sphere is \(area) units."
    }
}


let sphereOne = Sphere(radius: 10)
 

