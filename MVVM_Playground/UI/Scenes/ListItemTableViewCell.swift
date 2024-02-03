//  
//  ListItemTableViewCell.swift
//  MVVM_Playground
//
//  Created by Pirrello, Osvaldo (VDM) on 03/02/24.
//

import UIKit

protocol ListItemTableViewCellDelegate: AnyObject {
    
}

class ListItemTableViewCell: UITableViewCell {
    
    // MARK: - TableViewCell Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Setup views
        setupViews()
    }
    
    // MARK: - Action Methods
    
    /* Add action methods here... */

    // MARK: - Public Methods
    
    func configure(for item: String, and delegate: ListItemTableViewCellDelegate? = nil) -> UITableViewCell {
        // Get default content configuration
        var content = defaultContentConfiguration()
        content.text = item
        contentConfiguration = content
        // Return self instance
        return self
    }
    
    // MARK: - Private Methods
    
    private func setupViews() {
        
    }
}
