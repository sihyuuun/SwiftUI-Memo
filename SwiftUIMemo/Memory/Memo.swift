//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 이시현 on 2/26/24.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertData: Date
    
    init(content: String, insertData: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertData = insertData
    }
}
