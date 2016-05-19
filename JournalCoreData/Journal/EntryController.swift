//
//  EntryController.swift
//  Journal
//
//  Created by Caleb Hicks on 10/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    static let sharedController = EntryController()
    
    let fetchedResultsController: NSFetchedResultsController
    
    init() {
        
    }
    
    func addEntry(title: String, text: String, isHappy: Bool) {
        let _ = Entry(title: title, text: text, isHappy: isHappy)
        saveToPersistentStorage()
    }
    
    func updateEntry(entry: Entry, title: String, text: String, isHappy: Bool) {
        entry.title = title
        entry.text = text
        entry.happy = isHappy
        saveToPersistentStorage()
    }
    
    func removeEntry(entry: Entry) {
        
        entry.managedObjectContext?.deleteObject(entry)
        saveToPersistentStorage()
    }
    
    func saveToPersistentStorage() {
        
        do {
            try Stack.sharedStack.managedObjectContext.save()
        } catch {
            print("Error saving Managed Object Context. Items not saved.")
        }
    }
    

    
}