//
//  EdgeInsets.swift
//  X
//
//  Created by Sam Soffes on 5/8/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

#if os(OSX)
	import AppKit
	public typealias EdgeInsets = Foundation.EdgeInsets
#else
	import UIKit
	public typealias EdgeInsets = UIEdgeInsets
#endif

public let EdgeInsetsZero = EdgeInsets(top: 0, left: 0, bottom: 0, right: 0)


extension EdgeInsets {
	public static var zero: EdgeInsets {
		return EdgeInsetsZero
	}

	public var flipped: EdgeInsets {
		var insets = self
		insets.top = bottom
		insets.bottom = top
		return insets
	}

	public func insetRect(_ rect: CGRect) -> CGRect {
		#if os(iOS) || os(watchOS)
			return UIEdgeInsetsInsetRect(rect, self)
		#else
			if (top + bottom > rect.size.height) || (left + right > rect.size.width) {
				return CGRect.null
			}

			var insetRect = rect
			insetRect.origin.x += left
			insetRect.origin.y += top;
			insetRect.size.height -= top + bottom
			insetRect.size.width -= left + right
			return insetRect
		#endif
	}
}
