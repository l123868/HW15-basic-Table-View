//
//  FruitTableViewController.swift
//  HW15 basic  Table View
//
//  Created by Latifah on 2022/4/18.
//

import UIKit

class FruitTableViewController: UITableViewController {
    
    let fruits =
    [Fruit(name: "Apple", price: 100, fruitImageName: "pic1", fruitUrl: "https://www.google.com/search?q=Apple&oq=Apple&aqs=chrome..69i57j46i199i291i433i512j69i60j69i65j69i60j69i65l2j69i60.810j0j9&sourceid=chrome&ie=UTF-8"),
     Fruit(name: "Banana", price: 50, fruitImageName: "pic2", fruitUrl: "https://www.google.com/search?q=Banana&sxsrf=APq-WBvnR6Ru4I4R_ytGbRbVHLaAKczrMQ%3A1650273832466&ei=KC5dYvXaEpny1sQP_PyQsAg&ved=0ahUKEwj1jrqMpZ33AhUZuZUCHXw-BIYQ4dUDCA4&uact=5&oq=Banana&gs_lcp=Cgdnd3Mtd2l6EAMyCgguELEDENQCEEMyBAgAEEMyBQgAEIAEMgsILhCABBCxAxDUAjIECAAQQzIQCC4QsQMQxwEQ0QMQ1AIQQzIECC4QQzIICC4QgAQQ1AIyBQgAEIAEMgUIABCABDoHCCMQsAMQJzoHCAAQRxCwAzoECCMQJzoKCC4QxwEQowIQQzoLCC4QgAQQxwEQowI6CwgAEIAEELEDEIMBOggIABCABBCxAzoKCC4QxwEQ0QMQQzoRCC4QgAQQsQMQgwEQxwEQ0QM6DQguELEDEMcBEKMCEENKBAhBGABKBAhGGABQjApY_h5g9iJoBHABeACAAVKIAcIDkgEBN5gBAKABAcgBCsABAQ&sclient=gws-wiz"),
     Fruit(name: "Coconut", price: 25, fruitImageName: "pic3", fruitUrl: "https://www.google.com/search?q=Coconut&sxsrf=APq-WBv5FIfv27o_wo7Yk0bckXHpOW6Xgw%3A1650273870419&ei=Ti5dYv6cGfCsmAXigIXgBQ&ved=0ahUKEwj--8-epZ33AhVwFqYKHWJAAVwQ4dUDCA4&uact=5&oq=Coconut&gs_lcp=Cgdnd3Mtd2l6EAMyBwgAELEDEEMyBAguEEMyBQgAEIAEMgUIABCABDIFCAAQgAQyBAguEEMyCAguEIAEENQCMggILhCABBDUAjIFCAAQgAQyBQguEIAEOgcIABBHELADSgQIQRgASgQIRhgAUMIJWMIJYOoNaAJwAXgAgAFLiAFLkgEBMZgBAKABAqABAcgBCsABAQ&sclient=gws-wiz")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBSegueAction func showDetial(_ coder: NSCoder) -> DetialViewController? {
        guard let row = tableView.indexPathForSelectedRow?.row else { return nil }
        
        return DetialViewController(coder: coder, fruit: Fruit[row])
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        fruits.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        let fruit = fruits[indexPath.row]
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = String(fruit.price)
        cell.imageView?.image = UIImage(named: fruit.fruitImageName)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
