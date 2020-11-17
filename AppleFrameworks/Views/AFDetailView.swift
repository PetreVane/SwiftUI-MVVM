//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 12/11/2020.
//

import SwiftUI

struct AFDetailView: View {
    
    var framework: AFFramework
    @Binding var isShowingDetailView: Bool
    
    
    var body: some View {
        VStack {
           
            HStack {
                Spacer()
                Button(action: {
                    print("Screen dismiss pressed")
                    isShowingDetailView.toggle()
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .frame(width: 44, height: 44, alignment: .center)
                        .foregroundColor(Color(.label))
                })
            }.padding()
            
            AFGridItem(framework: framework)
        
            Spacer(minLength: 50)
            
            ScrollView([.vertical]) {
                Text(framework.description)
                    .font(.title3)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
            }.padding()
            
            Spacer()
            
            Button(action: {
                
                print("Button pressed")
                
            }, label: {
                Text("Learn more")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50, alignment: .center)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            })
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        AFDetailView(framework: AFMockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.light)
    }
}
