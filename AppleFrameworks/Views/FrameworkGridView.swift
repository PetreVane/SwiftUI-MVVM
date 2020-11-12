//
//  GridView.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 11/11/2020.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        GridFrameworkItem(imageName: "app-clip", title: "App clips")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


struct GridFrameworkItem: View {
    
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}
