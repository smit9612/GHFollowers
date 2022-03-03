import MobileDesign
import UIKit
// template for UIView

class FavoriteCell: UITableViewCell {

    static let reuseID = "FavoriteCell"
    
    let avatarImageView = UIImageView(frame: .zero)
    let usernameLabel = UILabel()
    var stackView: UIStackView!
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(favorite: Follower) {
        usernameLabel.text = favorite.login
        //avatarImageView.downloadImage(fromURL: favorite.avatarUrl)
    }
    
    private func configure() {
        accessoryType = .disclosureIndicator
        stackView = createHorizontalStackView(spacing: 10)
        let padding: CGFloat = 12
    }

}
