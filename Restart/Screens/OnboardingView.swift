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
		ZStack {
			Color("ColorBlue")
				.ignoresSafeArea(.all, edges: .all)
			
			VStack(spacing: 20) {
				
				
				// MARK: - header
				
				Spacer()
				VStack(spacing: 0) {
					Text("Share.")
						.font(.system(size: 60))
						.fontWeight(.heavy)
						.foregroundColor(.white)
					
					Text("""
  It's not how much we give but
  how much love we put into giving.
  """)
					.font(.title3)
					.fontWeight(.light)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
					.padding(.horizontal, 10)
				}
				
				// MARK: - center
				
				ZStack {
					ZStack {
						Circle()
							.stroke(.white.opacity(0.2), lineWidth: 40)
							.frame(width: 260, height: 260, alignment: .center)
						
						Circle()
							.stroke(.white.opacity(0.2), lineWidth: 80)
							.frame(width: 260, height: 260, alignment: .center)
						
						Image("character-1")
							.resizable()
							.scaledToFit()
					}
				}
				
				
				// MARK: - footer
				
				ZStack {
					// parts of the custom button
					
					// 1. background (static)
					
					Capsule()
						.fill(Color.white.opacity(0.2))
					
					Capsule()
						.fill(Color.white.opacity(0.2))
						.padding(8)
					
					// 2. call-to-action (static)
					
					Text("Get Started")
						.font(.system(.title3, design: .rounded))
						.fontWeight(.bold)
						.foregroundColor(.white)
						.offset(x: 20)
					
					// 3. capsule
					
					HStack {
						Capsule()
							.fill(Color("ColorRed"))
							.frame(width: 80)
						
						Spacer()
					}
					
					// 4. circle (draggable)
					
					HStack {
						ZStack {
							Circle()
								.fill(Color("ColorRed"))
							Circle()
								.fill(.black.opacity(0.15))
								.padding(8)
							Image(systemName: "chevron.right.2")
								.font(.system(size: 24, weight: .bold))
						}
						.foregroundColor(.white)
						.frame(width: 80, alignment: .center)
						.onTapGesture {
							isOnboardingViewActive = false
						}
						
						Spacer()
					}
					
				} // footer - ZStack
				.frame(height:80, alignment: .center)
				.padding()
				
			} // VStack
		} // ZStack
	}
}

#Preview {
	OnboardingView()
}
