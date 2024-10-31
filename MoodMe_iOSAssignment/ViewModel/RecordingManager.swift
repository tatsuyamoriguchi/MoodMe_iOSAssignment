//
//  RecordingManager.swift
//  MoodMe_iOSAssignment
//
//  Created by Tatsuya Moriguchi on 10/30/24.
//

import UIKit
import CoreData

class RecordingManager {
    // Use Singleton to share the instance
    static let shared = RecordingManager()
    // Instanciate Core Data managed object context to interact with Core Data store
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveRecording(url: String, duration: Double, tag: String) {
        // Create an instance of Core Data's Recording object.
        let recording = Recording(context: context)
        
        recording.url = url
        recording.duration = duration
        recording.tag = tag
        
        try? context.save()
    }
    
    func fetchRecodings() -> [Recording] {
        let fetchRequest: NSFetchRequest<Recording> = Recording.fetchRequest()
        return (try? context.fetch(fetchRequest)) ?? []
    }
    
    func updateTag(for recording: Recording, newTag: String) {
        recording.tag = newTag
        try? context.save()
    }
    
}
