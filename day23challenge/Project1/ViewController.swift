//
//  ViewController.swift
//  Project1
//
//  Created by Oscar W on 2019-11-13.
//  Copyright © 2019 Oscar Wojtal. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
     var flags:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Flag Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let estonia = "estonia"
        let america = "us"
        let france = "france"
        let germany = "germany"
        let ireland = "ireland"
        let italy = "italy"
        let monoco = "monaco"
        let poland = "poland"
        let nigeria = "nigeria"
        let russia = "russia"
        let spain =  "spain"
        let uk = "uk"
        
        flags = [estonia,america,france,germany,ireland,italy,monoco,poland,nigeria,russia,spain,uk]
        
        print(flags)
        
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = flags[indexPath.row].uppercased()
        
        cell.imageView?.layer.borderWidth = 1
        
        cell.imageView!.image = UIImage(named: flags[indexPath.row])
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
                vc.selectedImage = flags[indexPath.row]
            
                navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

