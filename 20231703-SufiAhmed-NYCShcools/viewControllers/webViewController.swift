//
//  webViewController.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/19/25.
//

import UIKit
import WebKit

class webViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var path: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //confrirming that we have a valid url and if so continue and reuquest to load the URL
        if let url = URL(string: path ?? "") {
            let request = URLRequest(url: url)
            webView.load(request)
        }

        // Do any additional setup after loading the view.
    }
    
}
