//
//  CoreDataViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 30..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit
import CoreData

class CoreDataViewController: UIViewController {
    
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func saveContact(_ sender: Any) {
        let entity = NSEntityDescription.entity(forEntityName: "Contacts", in: context)
        
        let contact = Contacts(entity: entity!, insertInto: context)
        
        contact.name = nameTextField.text
        contact.address = addressTextField.text
        contact.phone = phoneTextField.text
        
        do{
            try context.save()
            nameTextField.text = ""
            addressTextField.text = ""
            phoneTextField.text = ""
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func findContact(_ sender: Any) {
        getContact()
    }
    
    @IBAction func deleteContact(_ sender: Any) {
        if let deleteObj = getContact() {
            context.delete(deleteObj)
        }
    }
    
    func getContact()->Contacts?{
        let entity = NSEntityDescription.entity(forEntityName: "Contacts", in: context)
        
        let request:NSFetchRequest<Contacts> = Contacts.fetchRequest()
        
        request.entity = entity
        request.predicate  = NSPredicate(format: "(name = %@)", nameTextField.text!)
        
        do{
            var results = try context.fetch(request)
            if results.count > 0 {
                let match = results[0]
                
                print("name : \(match.name!)")
                print("address : \(match.address!)")
                print("phone : \(match.phone!)")
                statusLabel.text = "Matches Found \(results.count)"
                
                return match
            }else{
                statusLabel.text = "No Match"
            }
        }catch{
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
