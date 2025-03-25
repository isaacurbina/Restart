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
			
			
			// MARK: - header
			
			Spacer()
			ZStack {
				CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
				Image("character-2")
					.resizable()
					.scaledToFit()
					.padding()
			}
			
			
			// MARK: - center
			
			Text("The time that leads to mastery is dependent on the intensity of our focus.")
				.font(.title3)
				.fontWeight(.light)
				.foregroundColor(.secondary)
				.multilineTextAlignment(.center)
				.padding()
			
			
			// MARK: - footer
			
			Spacer()
			Button {
				isOnboardingViewActive = true
			} label: {
				Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
					.imageScale(.large)
				
				Text("Restart")
					.font(.system(.title3, design: .rounded))
					.fontWeight(.bold)
			}
			.buttonStyle(.borderedProminent)
			.buttonBorderShape(.capsule)
			.controlSize(.large)
		}
    }
}

#Preview {
    HomeView()
}
