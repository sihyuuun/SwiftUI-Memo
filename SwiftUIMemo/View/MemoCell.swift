//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by 이시현 on 2/27/24.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertData, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    MemoCell(memo: Memo(content: "Test"))
}
