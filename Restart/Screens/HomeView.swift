//
//  HomeView.swift
//  Restart
//
//  Created by Isaac Urbina on 3/24/25.
//

import SwiftUI

struct HomeView: View {
	
	// MARK: - property
	
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = false
	
	
	// MARK: - body
	
    var body: some View {
		VStack(spacing: 20) {
			Text("Home")
				.font(.largeTitle)
			
			Button {
				isOnboardingViewActive = true
			} label: {
				Text("Restart")
			}
		}
    }
}

#Preview {
    HomeView()
}
