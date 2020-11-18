//
//  GridView.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 11/11/2020.
//

import SwiftUI

struct AFGridView: View {
    
    @StateObject var model = AFGridViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        NavigationView {
            ScrollView([.vertical]) {
                LazyVGrid(columns: columns) {
                    ForEach(AFMockData.frameworks, id: \.id) { framework in
                        AFGridItem(framework: framework)
                            .onTapGesture { model.selectedFramework = framework }
                    }
                }
                .navigationTitle("🥑 frameworks")
                .sheet(isPresented: $model.isDetailViewPresented) {
                    AFDetailView(framework: model.selectedFramework ?? AFMockData.sampleFramework, isShowingDetailView: $model.isDetailViewPresented)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        AFGridView()
            .preferredColorScheme(.dark)
            
    }
}


struct AFGridItem: View {
    
    let framework: AFFramework
    
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
