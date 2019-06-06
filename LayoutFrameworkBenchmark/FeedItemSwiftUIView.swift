//
//  FeedItemSwiftUIView.swift
//  LayoutFrameworkBenchmark
//
//  Created by Art Huang on 2019/6/4.
//

import UIKit

class FeedItemSwiftUIView: UIView, DataBinder {

    private var hostingVC: FeedItemSwiftUIHostingController? {
        didSet {
            guard let vc = hostingVC else {
                return
            }
            subviews.forEach {
                $0.removeFromSuperview()
            }
            addSubview(vc.view)
            setNeedsLayout()
        }
    }

    func setData(_ data: FeedItemData) {
        hostingVC = FeedItemSwiftUIHostingController(rootView: SwiftUIView(feedItemData: data))
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        hostingVC?.view.frame = bounds
    }

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return hostingVC?.sizeThatFits(in: size) ?? .zero
    }

    override var intrinsicContentSize: CGSize {
        return sizeThatFits(CGSize(width: frame.width, height: .greatestFiniteMagnitude))
    }
}
