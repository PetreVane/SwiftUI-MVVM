//
//  GridView.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 11/11/2020.
//

import SwiftUI

struct AFGridView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var isDetailViewPresented = false
    
    var body: some View {
        
        NavigationView {
            ScrollView([.vertical]) {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        GridFrameworkItem(framework: framework)
                      
                    }
                }
                .navigationTitle("🥑 frameworks")
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        AFGridView()
            
    }
}


struct GridFrameworkItem: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
