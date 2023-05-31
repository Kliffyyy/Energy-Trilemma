//
//  Data.swift
//  Energy Trilemma
//
//  Created by klifton Cheng stu on 31/5/23.
//

import Foundation

struct EnergyTypes : Identifiable, Hashable {
    var id = UUID()
    
    var name: energyType
    var sustainable: Bool
    var costPerKWH: Double
    var availibility: Bool
}

enum energyType : String {
    case geothermal
    case nuclear
    case solar
    case naturalGas
    case fossilFuel
    
    var description : String {
        switch self {
        case .geothermal : return "Geothermal"
        case .nuclear : return "Nuclear"
        case .solar : return "Solar"
        case .naturalGas : return "Natural Gas"
        case .fossilFuel : return "Fossil Fuels"
        }
    }
}

let listEnergyTypes : [EnergyTypes] = [.init(name: .geothermal, sustainable: true, costPerKWH: 0.07, availibility: false),
                                       .init(name: .nuclear, sustainable: false, costPerKWH: 0.25, availibility: false),
                                       .init(name: .solar, sustainable: true, costPerKWH: 0.05, availibility: true),
                                       .init(name: .naturalGas, sustainable: false, costPerKWH: 0.07, availibility: true),
                                       .init(name: .fossilFuel, sustainable: false, costPerKWH: 0.15, availibility: true)]
