//
//  LabelTextFormatter.swift
//  LabelTextFormatter
//
//  Created by IDAP Developer on 21.09.2023.
//  Copyright © 2019 IDAP. All rights reserved.
//

import UIKit

extension UILabel {
    
    public func setAttributedText(
        _ text: String?,
        font: UIFont,
        color: UIColor,
        lineSpacing: CGFloat = 0,
        leterSpacing: CGFloat = 0,
        minimumLineHeight: CGFloat = 0,
        lineHeightMultiple: CGFloat = 1,
        underlied: Bool = false,
        alignment: NSTextAlignment = .left
    ) {
        self.attributedText = NSAttributedString.create(
            from: text,
            font: font,
            color: color,
            lineSpacing: lineSpacing,
            leterSpacing: leterSpacing,
            minimumLineHeight: minimumLineHeight,
            lineHeightMultiple: lineHeightMultiple,
            underlied: underlied,
            alignment: alignment
        )
    }
    
    public func setText(text: String? = "", font: UIFont? = nil, color: UIColor = .black) {
        self.text = text
        font.map { self.font = $0 }
        self.textColor = color
    }

    public func setTextFrom(values: [NSAttributedString]) {
        let result = NSMutableAttributedString()

        values.forEach {
            result.append($0)
        }

        self.attributedText = result as NSAttributedString
    }

    public func setTextFrom(
        _ value: NSAttributedString,
        font: UIFont? = nil,
        color: UIColor = .black
    ) {
        self.attributedText = value
        self.font = font
        self.textColor = color
    }
}

extension NSAttributedString {

    public static func create(
        from string: String?,
        font: UIFont,
        color: UIColor,
        lineSpacing: CGFloat = 0,
        leterSpacing: CGFloat = 0,
        minimumLineHeight: CGFloat = 0,
        lineHeightMultiple: CGFloat = 1,
        underlied: Bool = false,
        alignment: NSTextAlignment = .left
    )
        -> NSMutableAttributedString
    {
        let attributes = NSAttributedString.attributes(
            font: font,
            color: color,
            lineSpacing: lineSpacing,
            leterSpacing: leterSpacing,
            minimumLineHeight: minimumLineHeight,
            lineHeightMultiple: lineHeightMultiple,
            underlied: underlied,
            alignment: alignment
        )

        return NSMutableAttributedString(string: string ?? "", attributes: attributes)
    }
    
    public static func attributes(
        font: UIFont,
        color: UIColor,
        lineSpacing: CGFloat = 0,
        leterSpacing: CGFloat = 0,
        minimumLineHeight: CGFloat = 0,
        lineHeightMultiple: CGFloat = 1,
        underlied: Bool = false,
        alignment: NSTextAlignment = .left) -> [NSAttributedString.Key: Any]
    {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.minimumLineHeight = minimumLineHeight
        paragraphStyle.lineBreakMode = .byTruncatingTail
        paragraphStyle.lineHeightMultiple = lineHeightMultiple

        return [
            .font: font,
            .foregroundColor: color,
            .kern: leterSpacing,
            .underlineStyle: underlied ? 1 : 0,
            .paragraphStyle: paragraphStyle
        ]
    }
}
