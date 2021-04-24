//
//  ViewController.swift
//  HtmlLoad
//
//  Created by SIU on 2021/04/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard let localFilePath = Bundle.main.path(forResource: "index", ofType: "html") else { return }
//
//        let url = URL(fileURLWithPath: localFilePath)
//
        guard let url = Bundle.main.url(forResource: "index", withExtension: "html") else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }


}

