import UIKit

class DaysSinceView: UIView {
    let daysSinceTableView = UITableView()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(daysSinceTableView)
        daysSinceTableView.translatesAutoresizingMaskIntoConstraints = false

        self.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[table]|",
                options: [],
                metrics: nil,
                views: ["table":daysSinceTableView]
            )
        )

        self.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|[table]|",
                options: [],
                metrics: nil,
                views: ["table":daysSinceTableView]
            )
        )
    }
}
