//
//  DetialViewController.swift
//  HW15 basic  Table View
//
//  Created by Latifah on 2022/4/18.
//

import UIKit
import WebKit

class DetialViewController: UIViewController {

    let fruit : Fruit
    
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var fruitWebView: WKWebView!
    required init?(coder: NSCoder, fruit : Fruit) {
        self.fruit = fruit
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitImageView.image = UIImage(named: fruit.fruitImageName)
        if let url = URL(string: fruit.fruitUrl){
        let request = URLRequest(url: url)
        fruitWebView.load(request)
               }        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
