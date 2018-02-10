//
//  tableVC.swift
//  TestWork
//
//  Created by Евгений Ковалевский on 10.02.2018.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit

class tableVC: UITableViewController {
    let restaurantImages = ["a.jpg", "b.jpg", "c.jpg", "d.jpg", "e.jpg", "f.jpg", "g.jpg", "h.jpg", "i.jpg", "j.jpg", "k.jpg", "l.jpg", "m.jpg", "n.jpg", "o.jpg","p.jpg","q.jpg","r.jpg","s.jpg","t.jpg","u.jpg","v.jpg","w.jpg","x.jpg","y.jpg","z.jpg","_.jpg"]
//return array from tableView
    func retArray() -> ([String]) {
        var charArray = [String]()
        //filter text
        let amaountOfA = String(tekst.filter{ $0 == "a"}).count
        let amaountOfB = String(tekst.filter{ $0 == "b"}).count
        let amaountOfC = String(tekst.filter{ $0 == "c"}).count
        let amaountOfD = String(tekst.filter{ $0 == "d"}).count
        let amaountOfE = String(tekst.filter{ $0 == "e"}).count
        let amaountOfF = String(tekst.filter{ $0 == "f"}).count
        let amaountOfG = String(tekst.filter{ $0 == "g"}).count
        let amaountOfH = String(tekst.filter{ $0 == "h"}).count
        let amaountOfI = String(tekst.filter{ $0 == "i"}).count
        let amaountOfJ = String(tekst.filter{ $0 == "j"}).count
        let amaountOfK = String(tekst.filter{ $0 == "k"}).count
        let amaountOfL = String(tekst.filter{ $0 == "l"}).count
        let amaountOfM = String(tekst.filter{ $0 == "m"}).count
        let amaountOfN = String(tekst.filter{ $0 == "n"}).count
        let amaountOfO = String(tekst.filter{ $0 == "o"}).count
        let amaountOfP = String(tekst.filter{ $0 == "p"}).count
        let amaountOfQ = String(tekst.filter{ $0 == "q"}).count
        let amaountOfR = String(tekst.filter{ $0 == "r"}).count
        let amaountOfS = String(tekst.filter{ $0 == "s"}).count
        let amaountOfT = String(tekst.filter{ $0 == "t"}).count
        let amaountOfU = String(tekst.filter{ $0 == "u"}).count
        let amaountOfV = String(tekst.filter{ $0 == "v"}).count
        let amaountOfW = String(tekst.filter{ $0 == "w"}).count
        let amaountOfX = String(tekst.filter{ $0 == "x"}).count
        let amaountOfY = String(tekst.filter{ $0 == "y"}).count
        let amaountOfZ = String(tekst.filter{ $0 == "z"}).count
        let amaountOf_ = String(tekst.filter{ $0 == " "}).count

        //create counte im array
        charArray.append(String(amaountOfA))
        charArray.append(String(amaountOfB))
        charArray.append(String(amaountOfC))
        charArray.append(String(amaountOfD))
        charArray.append(String(amaountOfE))
        charArray.append(String(amaountOfF))
        charArray.append(String(amaountOfG))
        charArray.append(String(amaountOfH))
        charArray.append(String(amaountOfI))
        charArray.append(String(amaountOfJ))
        charArray.append(String(amaountOfK))
        charArray.append(String(amaountOfL))
        charArray.append(String(amaountOfM))
        charArray.append(String(amaountOfN))
        charArray.append(String(amaountOfO))
        charArray.append(String(amaountOfP))
        charArray.append(String(amaountOfQ))
        charArray.append(String(amaountOfR))
        charArray.append(String(amaountOfS))
        charArray.append(String(amaountOfT))
        charArray.append(String(amaountOfU))
        charArray.append(String(amaountOfV))
        charArray.append(String(amaountOfW))
        charArray.append(String(amaountOfX))
        charArray.append(String(amaountOfY))
        charArray.append(String(amaountOfZ))
        charArray.append(String(amaountOf_))

        return charArray
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return retArray().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        cell.textLabel?.text = "this letter occurs: \(retArray()[indexPath.row]) once in the text"
        return cell
    }

   

}
