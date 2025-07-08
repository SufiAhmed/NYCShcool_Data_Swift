//
//  ViewController.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/17/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Initialzie our viewModel and also connect our tableView
    @IBOutlet weak var tableView: UITableView!
    var NYCSchoolVM = NYCSchoolViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //we call the API as soon as app enters ViewDidLoad and popuate the tableView and  we do it with async dispatch queue
        NYCSchoolVM.fetchNYCSchoolData { data in
            self.NYCSchoolVM.array = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.rowHeight = 90
    }
    
    //import bussiness logic here for required tableView protocols
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NYCSchoolVM.getRow()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let index = NYCSchoolVM.getNYCShcoolIndex(index: indexPath.row)
        cell.setCell(nycSchool: index)
        
        return cell
    }
    
    //for didSelectRowAt we import in our details bussiness logic and the push to the detailViewController
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "detailViewController") as! detailViewController
        
        let index = NYCSchoolVM.getNYCShcoolIndex(index: indexPath.row)
        vc.nycSchool = index
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

