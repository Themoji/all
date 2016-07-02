//
//  FontRendering.swift
//  Themoji
//
//  Created by Boris Bügling on 02/07/2016.
//  Copyright © 2016 Felix Krause. All rights reserved.
//

import UIKit

class FontRendering {
    lazy var rawFile: CFData = {
        let url = NSBundle.mainBundle().URLForResource("Apple Color Emoji", withExtension: "ttf")
        return NSData(contentsOfURL: url!)!
    }()

    func highResolutionEmojiUI(fontSize: CGFloat) -> UIFont {
        let font = CGFontCreateWithDataProvider(CGDataProviderCreateWithCFData(rawFile)!)
        return CTFontCreateWithGraphicsFont(font, fontSize, nil, nil)
    }
}
