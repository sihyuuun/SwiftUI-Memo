//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by 이시현 on 2/26/24.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

#Preview {
    MainListView().environmentObject(MemoStore())
}
