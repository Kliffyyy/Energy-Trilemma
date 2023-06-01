//
//  ChartsView.swift
//  Energy Trilemma
//
//  Created by klifton Cheng stu on 31/5/23.
//

import SwiftUI
import Charts

struct MountPrice: Identifiable {
    var id = UUID()
    
    var mount: String
    var value: Double
}

struct ChartsView: View {
    
    
    
    var body: some View {
        List {
            Chart {
                BarMark(
                    x: .value("Mount", "+1 Month"),
                    y: .value("Value", 3)
                )
                BarMark(
                    x: .value("Mount", "+2 Month"),
                    y: .value("Value", 4)
                )
                BarMark(
                    x: .value("Mount", "+3 Month"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}


struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
