//
//  TeachersViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/20/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

let reuseIdentifier8 = "Teachercell"

class TeachersViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var teacherimg=["Teachersimg"]
    var star_gold=["Star_gold"]
    var star_grey=["Star_grey"]
    var favt=["favorite"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10;
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier8,
                                                 for: indexPath as IndexPath) as! TeachersTableViewCell
        
//        
//        
//        cell.star1.image = UIImage(named: star_gold[indexPath.row] )
//        
//        cell.star2.image = UIImage(named: star_gold[indexPath.row] )
//        
//        cell.star3.image = UIImage(named: star_gold[indexPath.row] )
//        cell.star4.image = UIImage(named: star_gold[indexPath.row] )
//        cell.star5.image = UIImage(named: star_grey[indexPath.row] )
//        cell.teacherimg.image = UIImage(named: teacherimg[indexPath.row] )
        
    
        return cell
}
    
   
    @IBAction func cancel(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func favourites(_ sender: Any) {
    }
}
