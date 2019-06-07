//
//  FeedItemSwiftUIHostingController.swift
//  LayoutFrameworkBenchmark
//
//  Created by Art Huang on 2019/6/5.
//

import UIKit
import SwiftUI

class FeedItemSwiftUIHostingController: UIHostingController<SwiftUIListView> {

    init(data: [FeedItemData]) {
        let swiftUIListView = SwiftUIListView(feedItemList: data)
        super.init(rootView: swiftUIListView)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

}
