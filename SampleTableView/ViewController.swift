//
//  ViewController.swift
//  SampleTableView
//
//  Created by 酒井桃恵 on 2022/04/03.
//

import UIKit
//DataSource：セルの個数や中身
//ex)表示させるセルの個数を設定するメソッド

//Delegate：イベント発生時の処理を移譲
//ex)タップされたときの処理を書くメソッドが用意
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let fruit = ["りんご","ぶどう","みかん","レモン","スイカ"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //tableViewの中のRow(＝行)の数を返す関数,
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = fruit[indexPath.row]
        return cell
    }

}

