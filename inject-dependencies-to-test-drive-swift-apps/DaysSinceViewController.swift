import UIKit

class DaysSinceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let daysSinceView: DaysSinceView = DaysSinceView()
    var daysSinceArray = [Int]()

    override func loadView() {
        view = daysSinceView
        daysSinceView.daysSinceTableView.delegate = self
        daysSinceView.daysSinceTableView.dataSource = self
    }

    override func viewDidLoad() {
        title = "Days Since"

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .Add,
            target: self,
            action: #selector(addDaySinceRow)
        )
    }

    func addDaySinceRow() {
        daysSinceArray.insert(daysSinceArray.count, atIndex: 0)
        daysSinceView.daysSinceTableView.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysSinceArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let numberOfDaysSince = daysSinceArray[indexPath.row]
        cell.textLabel!.text = "\(numberOfDaysSince)"
        return cell
    }
}
