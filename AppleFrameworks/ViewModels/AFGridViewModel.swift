//
//  AFGridViewModel.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 12/11/2020.
//

import SwiftUI


final class AFGridViewModel: ObservableObject {
    
    var selectedFramework: AFFramework?  {
        didSet {
            isDetailViewPresented = true
        }
    }
    
    @Published var isDetailViewPresented = false

}
