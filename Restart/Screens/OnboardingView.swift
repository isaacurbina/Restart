//
//  OnboardingView.swift
//  Restart
//
//  Created by Isaac Urbina on 3/24/25.
//

import SwiftUI

struct OnboardingView: View {
	
	// MARK: - property
	
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = true
	
	
	// MARK: - body
	
    var body: some View {
		VStack(spacing: 20) {
			Text("Onboarding")
				.font(.largeTitle)
			
			Button {
				isOnboardingViewActive = false
			} label: {
				Text("Start")
			}
		}
    }
}

#Preview {
    OnboardingView()
}
