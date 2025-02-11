//
//  PowerView.swift
//  PowersCalculator
//
//  Created by Russell Gordon on 2025-02-11.
//

import SwiftUI

struct PowerView: View {
    
    // MARK: Stored properties
    @State var base: Double = 1
    
    // MARK: Computed properties
    var squared: Double {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {

                Text("\(base.formatted())")
                    .font(.system(size: 96))

                Text("2")
                    .font(.system(size: 44))

                Text("=")
                    .font(.system(size: 96))

                Text("\(squared.formatted())")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base, step: 1.0, label: {
                Text("Base")
            })
                        
            Spacer()
        }
        .padding()
    }

}

#Preview {
    PowerView()
}
