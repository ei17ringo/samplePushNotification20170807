//
//  ViewController.swift
//  samplePushNotification
//
//  Created by Eriko Ichinohe on 2017/09/29.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func tapBtn(_ sender: UIButton) {
    
        // ローカル通知オブジェクト作成
        let notification:UILocalNotification = UILocalNotification()
        
        // タイトル設定
        notification.alertTitle = "Fire"
        
        // 通知メッセージの設定
        notification.alertBody = "卒業おめでとう！"
        
        // Timezoneの設定（現在iPhoneに設定されているタイムゾーン）
        notification.timeZone = TimeZone.current
        
        // 10秒後に通知を設定
        notification.fireDate = Date(timeIntervalSinceNow: 10)
        
        // ローカル通知オブジェクトをiPhoneにセット（アプリが終了してもスケジュール通り発動する）
        UIApplication.shared.scheduleLocalNotification(notification)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

