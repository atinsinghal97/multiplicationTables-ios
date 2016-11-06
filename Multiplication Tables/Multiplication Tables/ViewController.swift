//
//  ViewController.swift
//  Multiplication Tables
//
//  Created by Atin Singhal on 02/11/16.
//  Copyright © 2016 Atin Singhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 50
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell   {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row + 1))
        return cell
    }

    @IBOutlet var slider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        
        table.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

