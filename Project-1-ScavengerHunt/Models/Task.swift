//
//  Task.swift
//  Project-1-ScavengerHunt
//
//  Created by Muskan Mankikar on 3/1/24.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Go to the Library and pick up a book",
                 description: "Try a new mystery book!"),
            Task(title: "Go to your favorite hike!",
                 description: "Be one with nature and have fun!"),
            Task(title: "Go to your favorite coffee shop",
                 description: "Vibes must be cozy!!")
        ]
    }
}
