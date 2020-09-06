//
//  ViewController.swift
//  eggApp
//
//  Created by 高橋康之 on 2020/09/05.
//  Copyright © 2020 yasu.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cauntlabel.text = String(count)
        
        dispImage()
        
        
    }
    
    @IBOutlet weak var cauntlabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count : Int = 100
    
   
    @IBOutlet weak var imageView: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArrary = ["egg01","egg02","egg03"]
        
        let name = imageArrary[dispImageNum]
        
        let image = UIImage(named: name)
        
        imageView.image = image
        
    }
    
    
    
    @IBAction func button(_ sender: Any) {
        
        count = count - 1
        cauntlabel.text = String(count)
        
//カウント数に応じたテキストの変更
        if (count == 75) {
            textLabel.text = "まだまだ！"
        } else if(count == 50){
            textLabel.text = "半分"
            dispImageNum += 1
        } else if(count == 25){
            textLabel.text = "もうちょいだよ"
            
        } else if(count == 0){
            textLabel.text = "おめでとう！！"
            dispImageNum += 1
        }
        
        dispImage()
    
    }
}

