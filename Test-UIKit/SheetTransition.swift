//
//  ViewController.swift
//  UIKit036_4.0
//
//  Created by KimikoWatanabe on 2016/08/18.
//  Copyright © 2016年 FaBo, Inc. All rights reserved.
//

import SwiftUI

struct SheetTransitionView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        SheetTransitionViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

struct SheetTransitionView_Preview: PreviewProvider {
    static var previews: some View {
        SheetTransitionView()
    }
}

class SheetTransitionViewController: UIViewController {

    private var myView: UIView!
    private var myButton: UIButton!

    // View切り替え用フラグ.
    var viewFlag = true

    override func viewDidLoad() {
        super.viewDidLoad()

        // 背景を青色に設定.
        self.view.backgroundColor = UIColor.cyan

        // myViewを生成.
        myView = UIView(frame: self.view.frame)
        myView.backgroundColor = UIColor.orange
        myView.isHidden = true
        myView.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height/2)

        // ボタンを生成.
        myButton = UIButton(frame: CGRect(x:0, y:0, width:100, height:50))
        myButton.backgroundColor = UIColor.red
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.setTitle("Transition", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height/2)
        myButton.addTarget(self, action: #selector(SheetTransitionViewController.onClickMyButton(sender:)), for: .touchUpInside)

        // self.viewにmyViewを追加.
        self.view.addSubview(myView)

        // self.viewにボタンを追加.
        self.view.addSubview(myButton)
    }

    /*
     ボタンイベント
     */
    @objc internal func onClickMyButton(sender: UIButton) {

        // フラグがtrue.
        if viewFlag {

            // アニメーション処理.
            // どのviewからtransitionするか.
            UIView.transition(from: self.view,

                              // transition先のview.
                to: myView,

                // 秒数(1秒).
                duration: 1.0,

                // transitionを設定.
                options: UIView.AnimationOptions.transitionCurlUp,

                // アニメーション完了時の処理.
                completion: { (Bool) -> Void in

                    print("self.view -> myView")

                    // myViewを表示.
                    self.myView.isHidden = false

                    // myViewにボタンを追加.
                    self.myView.addSubview(self.myButton)
            })
            // フラグを折る.
            viewFlag = false

        } else {
            UIView.transition(from: myView,
                              to: self.view,
                              duration: 1.0,
                              options: UIView.AnimationOptions.transitionFlipFromLeft,
                              completion: { (Bool) -> Void in

                                print("myView -> self.view")

                                // self.viewにボタンを追加.
                                self.view.addSubview(self.myButton)
            })
            // フラグを立てる.
            viewFlag = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
