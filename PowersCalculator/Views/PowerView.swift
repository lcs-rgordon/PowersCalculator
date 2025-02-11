//
//  PowerView.swift
//  PowersCalculator
//
//  Created by Russell Gordon on 2025-02-11.
//

import SwiftUI

struct PowerView: View {
    
    // MARK: Stored properties
    @State var power = Power(base: 1, exponent: 2)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {

                Text("\(power.base.formatted())")
                    .font(.system(size: 96))

                Text("2")
                    .font(.system(size: 44))

                Text("=")
                    .font(.system(size: 96))

                Text("\(power.result.formatted())")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $power.base, step: 1.0, label: {
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
