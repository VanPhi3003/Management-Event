import Foundation
import UIKit

class Event
{
    
    var title: String
    var description: String
    var image: UIImage

    init(titled: String, description: String, image: UIImage)
    {
        self.title = titled
        self.description = description
        self.image = image
    }
}
