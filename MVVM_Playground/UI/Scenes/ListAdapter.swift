//  
//  ListAdapter.swift
//  MVVM_Playground
//
//  Created by Pirrello, Osvaldo (VDM) on 03/02/24.
//

import UIKit

class ListAdapter: NSObject {
    
    // MARK: - Properties
    
    private var viewModel: ListViewModel!
    
    // MARK: - Init
    
    init(viewModel: ListViewModel) {
        self.viewModel = viewModel
    }
}

extension ListAdapter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.uiItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.uiItems[indexPath.item] {
        case .default(let item):
            return tableView
                .dequeue(ListItemTableViewCell.self, for: indexPath)
                .configure(for: item)
        }
    }
}

extension ListAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch viewModel.uiItems[indexPath.item] {
        case .default(let item):
            // Open detail for item detail selected by the user.
            viewModel.openDetail(item: item)
        }
    }
}
