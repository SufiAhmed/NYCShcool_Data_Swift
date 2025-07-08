//
//  TableViewCell.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/18/25.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var schoolLocationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(nycSchool: NYCSchool) {
        schoolLabel.text = nycSchool.school_name
        schoolLocationLabel.text = "\(nycSchool.city ?? ""), \(nycSchool.state_code ?? "") \(nycSchool.zip ?? "")"
    }
}
