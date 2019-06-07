//
//  SwiftUIView.swift
//  LayoutFrameworkBenchmark
//
//  Created by Art Huang on 2019/6/4.
//

import SwiftUI

struct SwiftUIView : View {
    let feedItemData: FeedItemData

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(feedItemData.actionText)
                Spacer()
                Text("...")
            }
            HStack {
                Image("50x50").relativeHeight(1)
                VStack(alignment: .leading) {
                    Text(feedItemData.posterName).background(Color.yellow)
                    Text(feedItemData.posterHeadline).background(Color.yellow)
                    Text(feedItemData.posterTimestamp).background(Color.yellow)
                }
            }
            Text(feedItemData.posterComment)
            VStack(alignment: .leading, spacing: 4) {
                Image("350x200")
                Text(feedItemData.contentTitle)
                Text(feedItemData.contentDomain)
            }
            HStack {
                Text("Like").background(Color.green)
                Spacer()
                Text("Comment").background(Color.green)
                Spacer()
                Text("Share").background(Color.green)
            }
            HStack {
                Image("50x50")
                Text(feedItemData.actorComment)
            }
        }
    }
}
