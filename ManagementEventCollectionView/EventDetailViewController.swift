import UIKit

class EventDetailViewController: UIViewController {

    @IBOutlet var lblDay: UILabel!
    @IBOutlet var txtDescrition: UITextView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var eventImageView: UIImageView!
    
    var event: Event?
    var day: String?
    
   
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        lblDay.text = day
        eventImageView.image = event?.image
        lblTitle.text = event?.title
        txtDescrition.text = event?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
