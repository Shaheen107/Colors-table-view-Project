//
//  ColorsTableVC.swift
//  Colors table view Project
//
//  Created by Rizwan on 12/07/2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    
    var color: [UIColor] = []
    
    enum cells {
        static let colorCell = "colorCell"
    }
    
    enum segues {
        static let toDetail = "navigate"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        addRandomColors()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 0...50 {
            color.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let decVC = segue.destination as! ColorsDetailsVC
        decVC.color = sender as? UIColor
    }
    
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = color[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = color[indexPath.row]
        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
    
    
}
