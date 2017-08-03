//
//  MainVC.swift
//  SmileyList
//
//  Created by studio on 21/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        grabData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        grabData()
        tableView.reloadData()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        
        let task = tasks[indexPath.row]
        
        //Good way
        
//        if let name = task.name {
//            cell.textLabel?.text = "\(name)"
//        }
        
        //not so good way
        
        if task.smiley {
            cell.textLabel?.text = "😃 \(task.name!)"
        } else {
            cell.textLabel?.text = "\(task.name!)"
        }
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let guest = UIApplication.shared.delegate as! AppDelegate
        let context = guest.persistentContainer.viewContext
        
        if editingStyle == .delete {
            let task = tasks[indexPath.row]
            
            context.delete(task)
            
            guest.saveContext()
            
            grabData()
            tableView.reloadData()
        }
        
        
        
    }
    
    
    
    
    func grabData() {
        
        let guest = UIApplication.shared.delegate as! AppDelegate
        let context = guest.persistentContainer.viewContext
        
        do {
        tasks = try context.fetch(Task.fetchRequest())
        } catch {
            print("Failed to fetch from coredata")
        }
        
    }
    
}



















