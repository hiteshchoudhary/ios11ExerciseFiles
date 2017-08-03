//
//  ViewController.swift
//  CourseBook
//
//  Created by studio on 24/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var controller: NSFetchedResultsController<Course>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        //testData()
        getFromCoreData()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if let sections = controller.sections {
            return sections.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sections = controller.sections {
            let sectionItem = sections[section]
            return sectionItem.numberOfObjects
        }
        
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellone", for: indexPath) as! CourseCell
        updateCellInfo(cell: cell, indexPath: indexPath as NSIndexPath)
        
        
        
        return cell
    }
    
    // Did select row and pass info to new view
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let passedOne = controller.fetchedObjects, passedOne.count > 0 {
            let course = passedOne[indexPath.row]
            performSegue(withIdentifier: "editsegue", sender: course)
        }
    }
    
    //prepare for segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editsegue" {
            if let guest = segue.destination as? AdditionalVC {
                if let course = sender as? Course {
                    guest.existingCourse = course
                }
            }
        }
    }
    
    
    //Cofigure Controller
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
        switch type {
        case .delete:
            if let indexPath = indexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            
        case .insert:
            if let indexPath = newIndexPath {
                tableView.insertRows(at: [indexPath], with: .fade)
            }
        case .update:
            if let indexPath = indexPath {
                //TODO: Do something here
                let cell = tableView.cellForRow(at: indexPath) as! CourseCell
                updateCellInfo(cell: cell, indexPath: indexPath as NSIndexPath)
            }
        case .move:
            if let indexPath = indexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            if let indexPath = newIndexPath {
                tableView.insertRows(at: [indexPath], with: .fade)
            }
            
            
            
        }
        
        
    }
    
    //UPDATE for Table view
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    
    
    
    //FOR UPDATE CELL INFO
    
    func updateCellInfo(cell: CourseCell, indexPath: NSIndexPath){
        let course = controller.object(at: indexPath as IndexPath)
        cell.fillCellWithData(course: course)
    }
    
    
    //Fetch the database here
    
    func getFromCoreData(){
        
        let fetchRequest: NSFetchRequest<Course> = Course.fetchRequest()
        
        let moneySort = NSSortDescriptor(key: "price", ascending: true)
        fetchRequest.sortDescriptors = [moneySort]
        
        let controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        controller.delegate = self
        
        self.controller = controller
        
        do {
            try controller.performFetch()
        } catch {
            let err = error as NSError
            print("\(err)")
        }
        
        
    }
    
    
    //Create some test data
    
    
    func testData(){
        let course = Course(context: context)
        course.coursename = "swift 4"
        course.email = "a@a.com"
        course.price = 30
        
        let course2 = Course(context: context)
        course2.coursename = "swift 4"
        course2.email = "a@a.com"
        course2.price = 30
        
        let course3 = Course(context: context)
        course3.coursename = "swift 4"
        course3.email = "a@a.com"
        course3.price = 30
        
        let course4 = Course(context: context)
        course4.coursename = "swift 4"
        course4.email = "a@a.com"
        course4.price = 30
        
        appdel.saveContext()
    }
    
}












