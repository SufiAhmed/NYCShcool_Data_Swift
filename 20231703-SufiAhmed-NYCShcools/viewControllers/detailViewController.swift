//
//  detailViewController.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/18/25.
//

import UIKit

class detailViewController: UIViewController {
    
    //initialize local variables and labels for sending details into DetailViewController
    @IBOutlet weak var testTakerLabel: UILabel!
    @IBOutlet weak var readingScoreLabel: UILabel!
    @IBOutlet weak var mathScoreLabel: UILabel!
    @IBOutlet weak var writingScoreLabel: UILabel!
    @IBOutlet weak var overviewTextView: UITextView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var websiteButton: UIButton!
    
    var satScore : SATScore?
    var nycSchool: NYCSchool?
    var satVM = SATScoreViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        satVM.fetchNYCSchoolSATData(dbn: nycSchool?.dbn ?? "") { data in
            self.satScore = data.first
            DispatchQueue.main.async {
                self.setData()
                self.title = self.nycSchool?.school_name
            }
        }
    }
    
    func setData() {
        //checking if satScore contains an item, if yes we will post those to the labels,
        // if ther is no value found we will use back-up scenario and post _ to signify no data
        testTakerLabel.text = satScore?.num_of_sat_test_takers ?? "_"
        readingScoreLabel.text = satScore?.sat_critical_reading_avg_score ?? "_"
        mathScoreLabel.text = satScore?.sat_math_avg_score ?? "_"
        writingScoreLabel.text = satScore?.sat_writing_avg_score ?? "_"
        
        overviewTextView.text = nycSchool?.overview_paragraph
        websiteButton.setTitle(nycSchool?.school_name, for: .normal)
        phoneLabel.text = nycSchool?.phone_number
        addressLabel.text = nycSchool?.location
    }
    
    //setup a segue push for us to show more details regarding the earthquake on the URL Site
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SHOWDETAIL" {
            let vc = segue.destination as! webViewController
            vc.path = "https://\(nycSchool?.website ?? "")"  //adding https:// to string because JSON didn't send data with it included
        }
    }
    
    
}
