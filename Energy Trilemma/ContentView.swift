//
//  ContentView.swift
//  Energy Trilemma
//
//  Created by klifton Cheng stu on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedEnergy : EnergyTypes = listEnergyTypes[0]
    
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    // CalculationViews
                    List {
                        Section("Selection") {
                            Picker("Energy Type", selection: $selectedEnergy) {
                                ForEach(listEnergyTypes, id: \.self) {
                                    Text($0.name.description)
                                }
                            }
                            .pickerStyle(.automatic)
                        }
                        
                        Section("Information") {
                            HStack {
                                Text("Cost per kWH")
                                Spacer()
                                Text("$\(selectedEnergy.costPerKWH, specifier: "%.2f")")
                            }
                            
                            HStack {
                                Text("Availibility In Future")
                                Spacer()
                                Text(selectedEnergy.availibility ? "Quite Likely" : "Not Likely")
                            }
                            
                            HStack {
                                Text("Sustainability")
                                Spacer()
                                Text(selectedEnergy.sustainable ? "Quite Sustainable" : "Not Sustainable")
                            }
                            
                            HStack {
                                Text("Efficiency")
                                Spacer()
                                Text("\(selectedEnergy.efficiency)%")
                            }
                            
                        }
                        
                        //                Section("Extrapolation") {
                        //                    withAnimation(.easeInOut(duration: 0.6)) {
                        //                        ChartsView()
                        //                            .scrollContentBackground(.hidden)
                        //                            .scaledToFit()
                        //                            .scrollDisabled(true)
                        //                    }
                        //                }
                    }
                }
                .tabItem {
                    Image(systemName: "house")
                }
                
                CompareView()
                    .tabItem {
                        Image(systemName: "tablecells.fill")
                    }
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
