//
//  PowerView.swift
//  PowersCalculator
//
//  Created by Russell Gordon on 2025-02-11.
//

import SwiftUI

struct PowerView: View {
    
    // MARK: Stored properties
    
    // Holds the view model, to track current state of
    // data within the app
    @State var viewModel = PowerViewModel()

    // MARK: Computed properties
    var body: some View {
        VStack {
            
            Spacer()
            
            // When the power can be unwrapped, show the result
            Group {
                if let power = viewModel.power {
                    
                    HStack(alignment: .top) {

                        Text("\(power.base.formatted())")
                            .font(.system(size: 96))

                        Text("\(power.exponent)")
                            .font(.system(size: 44))

                        Text("=")
                            .font(.system(size: 96))

                        Text("\(power.result.formatted())")
                            .font(.system(size: 96))
                    }

                } else {
                    // Show a message indicating that we are
                    // awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate power",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                    )
                }
            }
            .frame(maxHeight: 300)
                        
            TextField("Base", text: $viewModel.providedBase)
                .textFieldStyle(.roundedBorder)
            
            TextField("Exponent", text: $viewModel.providedExponent)
                .textFieldStyle(.roundedBorder)

            Spacer()
        }
        .padding()
    }

}

#Preview {
    PowerView()
}
