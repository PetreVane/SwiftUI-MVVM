//
//  AFFramework.swift
//  AppleFrameworks
//
//  Created by Petre Vane on 11/11/2020.
//

import Foundation


struct AFFramework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

