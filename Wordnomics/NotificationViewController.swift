//
//  NotificationViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/22/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

let reuseIdentifier10 = "Notificationcell"

class NotificationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int    {
        return 10;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier10,
                                                 for: indexPath as IndexPath) as! NotificationTableViewCell
        return cell
    }

    @IBAction func cancel(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
}
