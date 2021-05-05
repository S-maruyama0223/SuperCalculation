// UIパーツなどの基本的な部品が格納されているモジュール
import UIKit

// 変数宣言は var で行います。
// 行末にセミコロンはありません。
var variable = "Hello, variable!"
print(variable) // コンソール出力はprint()を使います。行末に改行コードが自動で含まれます。

///*---------------------------------------*/
//// 定数宣言は let で行います。
//// 同一スコープ内での再代入が禁止されます。
//let const = "Hello, constant!"
//print(const)
//// const = "Goodnight, constant!" // これはエラーになります。
///*---------------------------------------*/
//// 型推論を使わずに明示的に型を指定する場合は
//// 変数名: 型名
//// と書きます。
//let string: String = "Hello, String" // 文字列型は String です。
//print(string)
//let integer: Int = 100 //数値型は Int です。
//print(integer)
//let double: Double = 3.141592653 // 浮動小数点型は Double です。
//print(double)
//let boolean: Bool = true // 真偽値型は Bool です。
///*---------------------------------------*/
//// メソッド宣言は func で行います。
//func function() {
//    print("絵文字も問題なく使えます✌️外部のシステムには絵文字を送らないでね⁉️")
//}
//function()
///*---------------------------------------*/
//// メソッドの引数は型を指定する必要があります。
//func function2(str: String) {
//    print(str)
//}
///*---------------------------------------*/
//// メソッドをコールする際に実引数に引数名(ラベルとか外部引数名と言います)を付ける必要があります。
//// 外部引数に別名も付けられますが割愛
//function2(str: "function2 was called")
//// ただし仮引数名の前にアンダースコア _ を置くと実引数のラベルは不要です。
//func function3 (_ args: String) {
//    print(args)
//}
//function3("仮引数にアンダースコア _ を置くと実引数のラベルは不要です。")
///*---------------------------------------*/
//// ⭐️Swiftには"参照無し"いわゆるnullの概念はありません
//// ⭐️ただしnullと同じように扱える"nil"が存在します。
//// ⭐️let null = nil // これはエラー🥺
/////ちなみにメッセージは「ERROR: 'nil' requires a contextual type. 'nil'はコンテクストタイプを要求します。」意味がわからん。
///*---------------------------------------*/
//// ⭐️nilを扱うためには型名の後に`?`を付けて特殊な型として扱う必要があります。
//// ⭐️`?` がついた変数をOptional型と言います。

//var nullable: String? = nil
///// let nullable: Optional<String> = nil  //  String?はOptional<String> のシンタックスシュガーです。実態はジェネリクス<T>を持ったOptional型という一つの型です。
///*---------------------------------------*/
//// ⭐️Optional型にアクセスしようとするとコンパイルエラー になります！便利ですね！
/////print(nullable.count) これはNG
//print(nullable)
///*---------------------------------------*/
//// では文字列を入れてみます。
//nullable = "WOW WAR TONIGHT"
//
//print(nullable) // Optional("WOW WAR TONIGHT")
//
//// ⭐️あらら、Optional("WOW WAR TONIGHT") という変な文字列が出力されてしまいました。どうしてぇ〜〜〜😭
//// ⭐️実はOptional型は特殊な処理をしないと扱えません。
//// ⭐️Optionalの中身の目的の値を取り出すことを"アンラップ"と言います。
///*---------------------------------------*/
//// ⭐️次はとてもよく使うアンラップの一つ、if let構文
///*
//
//    if let `ブロック内で使いたい変数名` = Optional型の値 {
//        // この中で使いたい変数名が使えます。
//    }
//
// */
///*---------------------------------------*/
//if let unwrappedValue = nullable {
//    print(unwrappedValue)
//}
//
//nullable = nil
//if let unwrappedValue = nullable {
//    print("アンラップ対象の値nullableがnilだった場合、このブロック内の処理は実行されません")
//    print(unwrappedValue)
//}
//// if let 構文の外ではOptionalのままです
//print(nullable)

///*---------------------------------------*/

//// クラスの書き方は他のオブジェクト指向型言語と大差ありません。
//class Class {
//    var value = 10
//    // lazyキーワードをつけるとアクセスされた時に初めて初期化されます。
//    // 定義した段階では値が確定していないので、インスタンスプロパティにアクセスできます。
//    lazy var lazyValue = value * 40
//
//    // swiftにはプロパティの値を監視出来るプロパティオブザーバーという仕組みもあります。
//    // 構文は以下です。
//    var num = 0 {
//        willSet {
//            print("numの値が \(newValue) に変更されます")
//            value = 5
//        }
//        didSet {
//            print("numの値が \(oldValue) から \(num) に変更されました")
//        }
//    }
//
//    init() {
//        print(lazyValue)
//        print("初期化時点でのnumの値は \(num) です")
//    }
//}
//
//let classInstance1 = Class()
//classInstance1.num = 1
//
//struct Struct {
//    // Struct(構造体)もほとんどクラスと同じように扱えます。
//    // ただしStructは値型、クラスは参照型です。
//    // Structをコピーした値は、コピー元に影響を与えません
//    var value:Int
//
//    init() {
//        value = 5
//    }
//}
//
//var structInstance1 = Struct()
//var structInstance2 = structInstance1
//structInstance2.value = 999
//print("構造体のコピー先:\(structInstance2.value), 構造体のコピー元: \(structInstance1.value)")
//
//var classInstance2 = classInstance1
//classInstance2.value = 999
//print("クラスのコピー先:\(classInstance2.value), クラスのコピー元: \(classInstance1.value)")
//
