//
//  CompareView.swift
//  Energy Trilemma
//
//  Created by klifton Cheng stu on 1/6/23.
//

import SwiftUI

struct CompareView: View {
    
    @State private var selectedEnergy1 : EnergyTypes = listEnergyTypes[0]
    @State private var selectedEnergy2 : EnergyTypes = listEnergyTypes[0]
    
    @State var count1 = 0
    @State var count2 = 0
    
    var body: some View {
        NavigationView {
            List {
                Section("Selection") {
                    Picker("Energy Type 1", selection: $selectedEnergy1) {
                        ForEach(listEnergyTypes, id: \.self) {
                            Text($0.name.description)
                        }
                    }
                    
                    Picker("Energy Type 2", selection: $selectedEnergy2) {
                        ForEach(listEnergyTypes, id: \.self) {
                            Text($0.name.description)
                        }
                    }
                }
                
                Section("Information") {
                    HStack {
                        Text("Energy Type 1")
                        Spacer()
                        Text("Energy Type 2")
                    }
                    .padding(.vertical)
                    .bold()
                    .font(.title3)
                    
                    HStack(alignment: .center) {
                        Text("$\(selectedEnergy1.costPerKWH, specifier: "%.2f")")
                            .frame(width: 80)
                        Spacer()
                        Text("Cost per kWH")
                        Spacer()
                        Text("$\(selectedEnergy2.costPerKWH, specifier: "%.2f")")
                            .frame(width: 80)
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Text(selectedEnergy1.availibility ? "High" : "Low")
                            .frame(width: 80)
                        Spacer()
                        Text("Availibility In Future")
                        Spacer()
                        Text(selectedEnergy2.availibility ? "High" : "Low")
                            .frame(width: 80)
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Text(selectedEnergy1.sustainable ? "Yes" : "No")
                            .frame(width: 80)
                        Spacer()
                        Text("Sustainability")
                        Spacer()
                        Text(selectedEnergy2.sustainable ? "Yes" : "No")
                            .frame(width: 80)
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Text("\(selectedEnergy1.efficiency)%")
                            .frame(width: 80)
                        Spacer()
                        Text("Efficiency")
                        Spacer()
                        Text("\(selectedEnergy2.efficiency)%")
                            .frame(width: 80)
                    }
                    .padding(.vertical)
                }

//                Section("Winner") {
//                    HStack {
//                        Text("The winner is \(count1 > count2 ? selectedEnergy2.name.rawValue : selectedEnergy1.name.rawValue) energy")
//                    }
//                }
//                .listStyle(.sidebar)
            }
            .navigationTitle("Compare Sources")
        }
    }
}


struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
