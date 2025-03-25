//
//  CircleGroupView.swift
//  Restart
//
//  Created by Isaac Urbina on 3/25/25.
//

import SwiftUI

struct CircleGroupView: View {
	
	
	// MARK: - property
	
	@State var ShapeColor: Color
	@State var ShapeOpacity: Double
	
	
	// MARK: - body
	
    var body: some View {
		ZStack {
			Circle()
				.stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
				.frame(width: 260, height: 260, alignment: .center)
			
			Circle()
				.stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
				.frame(width: 260, height: 260, alignment: .center)
		}
    }
}

#Preview {
	ZStack {
		Color("ColorBlue")
			.ignoresSafeArea(.all, edges: .all)
		CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
	}
}
