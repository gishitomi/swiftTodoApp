//
//  ViewController.swift
//  SwiftToDoApp
//
//  Created by 宜志富紹太 on 2022/07/29.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,
    UITextFieldDelegate {
    
    @IBOutlet weak var todoInput: UITextField!
    
    @IBOutlet weak var todoTable: UITableView!
    
    var todoList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoInput.delegate = self
        todoTable.delegate = self
        todoTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell: UITableViewCell = todoTable.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        //セルに表示する値
        cell.textLabel!.text = todoList[indexPath.row]
        
        return cell
    }
    
    //テキストフィールド上でリターンキーが押された場合
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        todoList.append(todoInput.text!)
        //キーボードを閉じる
        todoInput.resignFirstResponder()
        todoInput.text = ""
        todoTable.reloadData()
        
        return true
        
    }

}

