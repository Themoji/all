//
//  ViewController.swift
//  Themoji
//
//  Created by Felix Krause on 30/06/16.
//  Copyright © 2016 Felix Krause. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.emojiLabel.font = FontRendering().highResolutionEmojiUI(300)
        self.emojiLabel.text = App.content()["emoji"] as? String
    }
}

