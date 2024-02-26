//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by 이시현 on 2/26/24.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello", insertData: Date.now),
            Memo(content: "Awesome", insertData: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertData:
                Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)     // 새로운 메모는 항상 0번 인덱스에 추가
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
     
    // delete 메소드는 Memo 인스턴스를 받는 버전, 인덱스셋을 받는 버전 각각 구현
    func delete(memo: Memo) {
        list.removeAll{ $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}


