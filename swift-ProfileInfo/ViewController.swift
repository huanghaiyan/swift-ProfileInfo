//
//  ViewController.swift
//  swift-ProfileInfo
//
//  Created by huanghy on 16/4/19.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.获得当前程序可执行文件所在目录
        let mainBundle = NSBundle.mainBundle()
        //2.获得程序包的识别标识符。该标识符是应用程序的唯一标识，应用与标识符之间是一一对应关系。注意：应用新建成功后，该标识符将不可修改。
        let identifier = mainBundle.bundleIdentifier
        //3.然后获得程序包的所有配置信息，并存储在字典对象中。
        let info = mainBundle.infoDictionary
        //4.获得当前应用程序的名称
        let bundleName = mainBundle.objectForInfoDictionaryKey("CFBundleName")
        //5.获得当前应用程序的版本号
        let version = mainBundle.objectForInfoDictionaryKey("CFBundleShortVersionString")
        
        
        print("[identifier]:\(identifier)\n")
        print("[bundleName]:\(bundleName)\n")
        print("[version]:\(version)\n")
        print("[info]:\(info)\n")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

