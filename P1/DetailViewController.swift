//
//  DetailViewController.swift
//  P1
//
//  Created by Erni Iun on 2021/08/06.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    
    var selectedImg: String?
    var imgCount = 0
    var imgPos = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Pic \(imgPos) of \(imgCount)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imgToLoad = selectedImg {
            imgView.image = UIImage(named: imgToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false
    }
    

}
