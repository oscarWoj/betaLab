import UIKit

/*
 Day 23
 Consolodation
 */


//review

/*
 Table views  use the UITableView Controller
 
 Buttons use UIButton
 
 View contollers use UIViewController
 
 colours use UIColor
 
 UIView is built ontop of CALayer
 
 Important notes about Interface Builder:

 Storyboards, edited using Interface Builder, but used in code too by setting storyboard identifiers.
 
 Outlets and action from Interface Builder. Outlets connect views to named properties (e.g. imageView), and actions connect them to methods that get run, e.g. buttonTapped().
 
 Auto Layout to create rules for how elements of your interface should be positioned relative to each other.
 
 
 */


//Key points

/*
 let items = try! fm.contentsOfDirectory(atPath: path)
 
 fm refrences filemanager and path references the resource path from the bundle.
 The contentsOfDirectory() call could fail if you type the wrong path. Swift forces you to write try! code in order to write code to catch any errors that happen
 */

/*
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return pictures.count
 }
 
 This function returns how many table view sections you want your table view to have
 */

/*
 let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)

 if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
 }
 
 Both of these are responsible for linking code to storyboard information using an identifier string
 
 The first statement is responsible for linking the cells to the data
 
 The second statment returns a detail view controller than can display the pictures
 
 */

