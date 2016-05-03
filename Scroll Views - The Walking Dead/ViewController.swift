//
//  ViewController.swift
//  Scroll Views - The Walking Dead
//
//  Created by Sean Perez on 4/25/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var WIDTH: CGFloat = 198
    var HEIGHT: CGFloat = 321

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 1...5 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            //The -115 originally was -WIDTH and the 230 was also WIDTH, but I customized to make it fit more evenly when built.
            
            imgView.frame = CGRectMake(-115 + (230 * CGFloat(x)), 420, WIDTH, HEIGHT)
        }
        
        //The 6.8 Mark had as 5 because we have 5 images. But I customized it to make it fit more evenly when built.
        
        scrollView.contentSize = CGSizeMake(WIDTH * 6.8, scrollView.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

