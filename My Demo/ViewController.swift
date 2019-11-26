//
//  ViewController.swift
//  My Demo
//
//  Created by LMS on 26/11/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let fantasticView = FantasticView(frame: self.view.bounds)
        //self.view.addSubview(fantasticView)
        webView.frame = self.view.bounds
        if let rtfPath = Bundle.main.url(forResource: "chapter1", withExtension: "rtf") {
            
            do {
                let attributedStringWithRtf: NSAttributedString = try NSAttributedString(url: rtfPath, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
                
                let htmlString = "<html> <head> <meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"> <style type=\"text/css\">body { font-family: Faiz Nastaliq; font-size: 30pt;  background-color: transparent; white-space: pre-wrap;  text-align: center;  lang: en; direction: RTL; -webkit-user-select: none; }</style>     </head><body leftmargin=\"0\" topmargin=\"7\" rightmargin=\"0\" > \(attributedStringWithRtf.string) </body></html>"
                
                
                webView.loadHTMLString(htmlString, baseURL: nil)
                
            } catch let error {
                print("Got an error \(error)")
            }
        }
        self.view.addSubview(webView)
        
    }


}

