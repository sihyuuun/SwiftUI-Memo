//
//  DetailView.swift
//  SwiftUIMemo
//
//  Created by 이시현 on 2/27/24.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    
    @EnvironmentObject var store: MemoStore
    
    @State private var showComposer = false
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {    // 여기에 포함된 내용이 화면을 벗어나면 자동으로 스크롤됨
                    HStack {
                        Text(memo.content)
                            .padding()
                        
                        Spacer(minLength: 0)
                    }
                    
                    Text(memo.insertData, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
        .sheet(isPresented: $showComposer) {
            ComposeView(memo: memo)
        }
    }
}

#Preview {
    NavigationView {
        DetailView(memo: Memo(content: "Hello"))
            .environmentObject(MemoStore())
    }
}
