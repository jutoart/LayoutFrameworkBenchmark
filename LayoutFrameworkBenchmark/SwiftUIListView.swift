//
//  SwiftUIListView.swift
//  LayoutFrameworkBenchmark
//
//  Created by Art Huang on 2019/6/6.
//

import SwiftUI

struct SwiftUIListView : View {
    let feedItemList: [FeedItemData]

    var body: some View {
        List(feedItemList.identified(by: \.posterName)) { feedItemData in
            SwiftUIView(feedItemData: feedItemData)
        }
    }
}
