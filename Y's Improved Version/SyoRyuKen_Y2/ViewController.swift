//
//  ViewController.swift
//  SyoRyuKen_Y2
//
//  Created by 潤田中 on 2019/06/04.
//  Copyright © 2019 BCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//ryuの初期画像にattak1を設定
        ryuImage.image = UIImage(named:"attak1")
//buttoのデフォルトの定数を作ってsyobuttonを代入
        
        let DefButton: UIImage = UIImage(named: "button")!
        buttonImage.setImage(DefButton, for: .normal)
        
    }
    
//龍の画像。UIImageViewを紐づけて変数をつくる
    @IBOutlet weak var ryuImage: UIImageView!
    
    
//ボタンのイメージを代入するためにoutlet UIbuttonView
    @IBOutlet weak var buttonImage: UIButton!
    let pressButoon:UIImage = UIImage(named:"spark")!
 
    
    @IBAction func buttunPush(_ sender: Any) {
//変数 i に1を代入して、タイムスケジュールの条件で iに1を足していく。それが変数ryuImageに代入されるUIImageの番号になっていく→アニメになる。
        
        
        var i = 1
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {_ in if (i <= 20){
            self.ryuImage.image = UIImage(named:"attak\(i)")}
            i += 1 }
        
        buttonImage.setImage(pressButoon, for: .normal)
    }

    @IBAction func exButton(_ sender: Any) {
        let DefButton: UIImage = UIImage(named: "button")!
        buttonImage.setImage(DefButton, for: .normal)
    
    
    }
    
    
}

