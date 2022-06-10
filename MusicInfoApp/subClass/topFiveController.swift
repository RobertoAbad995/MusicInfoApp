//
//  CustomTableViewController.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//
import UIKit

class topFiveController: UITableViewController {

    var items: [artist] = []
    var s = Settings()
    var u = currentUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        
        s.loadData()
        u = s.currentUserData
        items = u.userTopFive
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //return heigh value
        return 50
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
        
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width + 10, height: headerView.frame.height + 10)
        label.text = "  Top 5 of \(u.userName)"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .systemGreen
        label.backgroundColor = .black
        
        headerView.addSubview(label)
        
        return headerView
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return items.count
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let view = storyboard?.instantiateViewController(withIdentifier: "detailsView") as! artistDetailsViewController
        view.selectedArtist = items[indexPath.row]
        navigationController?.pushViewController(view, animated: true)
    }
           
           
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
//       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
//       let lblartist = UILabel()
//       lblartist.text = items[indexPath.row].name
//       let img = UIImageView()
//       cell.lblArtist = lblartist
//       cell.lblGenre = lblartist
//       cell.imgArtist = img
//       //       cell.lblGenre.text = items[indexPath.row].genre
//       //       cell.setImage(url: items[indexPath.row].img)
//       //Configure the cell...
//       cell.lblArtist.text = items[indexPath.row].name
//       cell.lblGenre.text = items[indexPath.row].genre
//       cell.setImage(url: items[indexPath.row].img)
       cell.textLabel?.text = items[indexPath.row].name
       return cell
   }

}
