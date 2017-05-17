import Foundation
import UIKit

class EventLine
{
    var day: String         
    var events: [Event]
    
    init(daysOfWeek: String, includeEvents: [Event])
    {
        day = daysOfWeek
        events = includeEvents
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.t2(), self.t3(), self.t4(), self.t5(), self.t6(), self.t7(), self.cn()]
    }
    
    private class func t2() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))
        
        return EventLine(daysOfWeek: "Monday", includeEvents: events)
    }
    
    private class func t3() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))

        return EventLine(daysOfWeek: "Tuesday", includeEvents: events)
    }
    
    private class func t4() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))

        
        return EventLine(daysOfWeek: "Wednesday", includeEvents: events)
    }
    
    private class func t5() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))
        return EventLine(daysOfWeek: "Thusday", includeEvents: events)
    }
    
    private class func t6() -> EventLine
    {
      
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))
        return EventLine(daysOfWeek: "Friday", includeEvents: events)
    }
    
    private class func t7() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))
        
        return EventLine(daysOfWeek: "Saturday", includeEvents: events)
    }
    
    private class func cn() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "tieu de 1", description: "mo ta 1", image: #imageLiteral(resourceName: "h1")))
        events.append(Event(titled: "tieu de 2", description: "mo ta 2", image: #imageLiteral(resourceName: "h2")))
        events.append(Event(titled: "tieu de 3", description: "mo ta 3", image: #imageLiteral(resourceName: "h3")))
        events.append(Event(titled: "tieu de 4", description: "mo ta 4", image: #imageLiteral(resourceName: "h4")))
        events.append(Event(titled: "tieu de 5", description: "mo ta 5", image: #imageLiteral(resourceName: "h5")))
        events.append(Event(titled: "tieu de 6", description: "mo ta 5", image: #imageLiteral(resourceName: "h6")))
        
        return EventLine(daysOfWeek: "Sunday", includeEvents: events)
    }
}
