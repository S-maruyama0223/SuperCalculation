//
//  ViewController.swift
//  SuperCalculation
//
//  Created by Shotaro Maruyama on 2021/04/30.
//  
//

import UIKit

class CalcViewController: UIViewController {

    // @IBxxxが接頭辞としてついているものはGUIで設定したものです。
    // IBはInterface Builderの略です。
    @IBOutlet weak private var argTextField1: UITextField!
    @IBOutlet weak private var argTextField2: UITextField!
    @IBOutlet weak private var fourArithmeticSegment: UISegmentedControl!
    @IBOutlet weak private var resultLabel: UILabel!

    private var selectedIndex:Int {
        get {
            return <#計算して返す値を入力します#>
        }
        set {
        }
    }

    @IBAction func tapCalcButton(_ sender: Any) {
        // 計算ボタンを押した時の処理を記述します。
        print(selectedIndex)
        fourArithmeticSegment.printSelectedIndex()
    }

    // このメソッドは今回使いませんが、各UIパーツにはこのようなアクションメソッドが用意されています。
    @IBAction func segmentedControllValueDidChanged(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }

}

// 外部から他のクラスのメソッドやプロパティを拡張することが出来ます。
extension UISegmentedControl {
    func printSelectedIndex() {
        print(self.selectedSegmentIndex)
    }
}

