//
//  TitleViewController.swift
//  SuperCalculation
//
//  Created by Shotaro Maruyama on 2021/05/05.
//  
//

import UIKit

class TitleViewController: UIViewController {

    // ライフサイクルを一通り記述しておきます。
    // 行数のところをクリックするとブレークポイントが貼れるので試してみてください。
    // ライフサイクルの詳しい説明は以下
    // https://qiita.com/motokiee/items/0ca628b4cc74c8c5599d
    // https://shiba1014.medium.com/viewcontroller%E3%81%AE%E3%83%A9%E3%82%A4%E3%83%95%E3%82%B5%E3%82%A4%E3%82%AF%E3%83%AB-37151427bda5

    override func loadView() {
        super.loadView()
        print(#function)
    }

    override func viewDidLoad() {
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }

    override func viewWillLayoutSubviews() {
        print(#function)
    }

    override func viewDidLayoutSubviews() {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
}
