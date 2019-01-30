

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var para1: UILabel!
    @IBOutlet weak var para2: UILabel!
    @IBOutlet weak var oper: UILabel!
    @IBOutlet weak var ans: UILabel!
    var p1 = 0
    var p2 = 0
    var operator2 = 1;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func opa(temp: Int) -> String{
       switch temp {
        case 1:
            return "+"
        case 2:
            return "-"
        case 3:
            return "x"
        default:
            return "÷"
        }
    }
    func sum(para1: Int , para2: Int , opa: Int ) -> String {
        var result = 0
        switch opa {
        case 1:// +
            result = para1 + para2
            return String(result)
        case 2:// -
            result = para1 - para2
            return String(result)
        case 3:// *
            result = para1 * para2
            return String(result)
        default:// /
            let tempDouble = Double(para1) / Double(para2)
            return String(tempDouble)
        }
        
    }
    @IBAction func startNew(){
        p1 = Int.random(in:1...100)
        p2 = Int.random(in:1...100)
        operator2 = Int.random(in: 1...4)
        
        para1.text = String(p1)
        para2.text = String(p2)
        oper.text = String(opa(temp: operator2))
        ans.text = String(sum(para1: p1,para2: p2,opa:operator2))
    }

}

