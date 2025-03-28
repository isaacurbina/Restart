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
	@State private var isAnimating: Bool = false
	
	
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
					.offset(y: isAnimating ? 35 : -35)
					.animation(
						Animation.easeInOut(duration: 4)
							.repeatForever()
						, value: isAnimating
					)
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
				withAnimation {
					isOnboardingViewActive = true
				}
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
		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { isAnimating = true
			})
		}
    }
}

#Preview {
    HomeView()
}
