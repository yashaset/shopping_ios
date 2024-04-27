//
//  DetailsView.swift
//  shopping
//
//  Created by Yash on 27/04/24.
//

import SwiftUI

struct RoundedRectangleShape: Shape{
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct DetailsView: View {
    @State var fruit: fruitTitle
    var body: some View {
        Text(fruit.rawValue)
    }
}

#Preview {
    DetailsView(fruit:.apple)
}
