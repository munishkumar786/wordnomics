//
//  LeaderBoardViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

let reuseIdentifier5 = "leaderBoardCell"
class LeaderBoardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var photos = NSMutableArray()
    var name=NSMutableArray();
    var points=NSMutableArray();


    override func viewDidLoad() {
        super.viewDidLoad()

        photos = ["Rewards","LeaderBoard","Playback","SwitchStud","InviteFriends","AddNew","Teachers","Parents","Explore"]
        name=["Rewards","Leaderboard","playback","Switch Student","Invite a Friend","Add New Student","Teachers","Parents","Explore Levels "]
        
       points=["200","345","554","433","876","876","321","212","765"]
    }

    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return photos.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier5,
                                                 for: indexPath as IndexPath) as! LeaderBoardTableViewCell
        
        let image = UIImage(named: photos[indexPath.row] as! String)
        
        cell.photo.image = image

        cell.name.text = photos[indexPath.row] as? String

        cell.points.text = photos[indexPath.row] as? String

        
        return cell
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    
}
