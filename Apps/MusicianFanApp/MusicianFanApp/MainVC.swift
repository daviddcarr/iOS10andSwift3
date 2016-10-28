//
//  ViewController.swift
//  MusicianFanApp
//
//  Created by David Carr on 10/27/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var musicianDatas = [MusicianData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //let data1 = MusicianData(imageURL: "https://i.ytimg.com/vi/eoU7_qCgUAI/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sBzrzS1Ag_g?autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Less I Know The Better")
        let data1 = MusicianData(imageURL: "https://i.ytimg.com/vi/eoU7_qCgUAI/maxresdefault.jpg", videoURL: "https://www.youtube.com/embed/sBzrzS1Ag_g", videoTitle: "The Less I Know The Better")
        musicianDatas.append(data1)
        
        let data2 = MusicianData(imageURL: "https://cdn.zumic.com/wp-content/uploads/2015/03/tame-impala-let-it-happen-music-video-falling-750x422.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pFptt7Cargc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let It Happen")
        musicianDatas.append(data2)
        
        let data3 = MusicianData(imageURL: "http://images.jambase.com/features/newswirephotos/2015/tameciamJB.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hefh9dFnChY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Cause I'm A Man")
        musicianDatas.append(data3)
        
        let data4 = MusicianData(imageURL: "http://www.fubiz.net/wp-content/uploads/2010/05/tame1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-F2e9fmYL7Y\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Solitude Is Bliss")
        musicianDatas.append(data4)
        
        let data5 = MusicianData(imageURL: "http://dayandadream.com/wp-content/uploads/2015/05/tame-impala-eventually-cover-560x400.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/S4t2yiVwWHo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Eventually")
        musicianDatas.append(data5)
        
        let data6 = MusicianData(imageURL: "http://i.vimeocdn.com/video/332032124_1280x720.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LnKUD_OztRE?list=PLEC6BDF0CEAE2C24A\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Elephant")
        musicianDatas.append(data6)
        
        let data7 = MusicianData(imageURL: "http://www.thestrut.com/wp-content/uploads/2012/11/tame.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wycjnCCgUes\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Feels Like We're Only Going Backwards")
        musicianDatas.append(data7)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MusicianCell", for: indexPath) as? MusicianCell {
            
            let musicianData = musicianDatas[indexPath.row]
            
            cell.updateUI(musicianData: musicianData)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicianDatas.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let musicianData = musicianDatas[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: musicianData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            if let musician = sender as? MusicianData {
                destination.musicianData = musician
            }
        }
    }
}

