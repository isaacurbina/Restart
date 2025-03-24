//
//  ContentView.swift
//  Restart
//
//  Created by Isaac Urbina on 3/24/25.
//

import SwiftUI

struct ContentView: View {
	
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = true
	
    var body: some View {
		ZStack {
			if isOnboardingViewActive {
				OnboardingView()
			} else {
				HomeView()
			}
		}
    }
}

#Preview {
    ContentView()
}
