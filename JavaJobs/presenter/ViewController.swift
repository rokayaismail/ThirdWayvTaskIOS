//
//  ViewController.swift
//  JavaJobs
//
//  Created by twi on 6/13/19.
//  Copyright © 2019 twi. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    var javaJobs : JavaJob?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return javaJobs!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = javaJobs![indexPath.row].javaJobDescription
        
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        NetworkClass.getAllData(completion: {_ in
            
        })
    }


}

