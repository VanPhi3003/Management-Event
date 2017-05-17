import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var MyCollectionView: UICollectionView!
    
    
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return eventLines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let eventLine = eventLines[section]
        return eventLine.events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! MyCollectionViewCell
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        cell.myImageView.image = event.image
        cell.lblTitle.text = event.title
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "sectionHeader", for: indexPath) as! SectionHeaderView
        
        let eventLine = eventLines[indexPath.section]
        headerView.lblHeader.text = eventLine.day
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EventDetail") as! EventDetailViewController
        detailVC.day = eventLine.day
        detailVC.event = event
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let eventLine1 = eventLines[sourceIndexPath.section]
        let eventLine2 = eventLines[destinationIndexPath.section]
        let event = eventLine1.events[sourceIndexPath.row]
        eventLine1.events.remove(at: sourceIndexPath.row)
        eventLine2.events.insert(event, at: destinationIndexPath.row)
    }
    
}

