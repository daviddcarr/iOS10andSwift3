//
//  MusicianCell.swift
//  MusicianFanApp
//
//  Created by David Carr on 10/28/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class MusicianCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(musicianData: MusicianData) {
        videoTitle.text = musicianData.videoTitle
        
        
        let url = URL(string: musicianData.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //Handle the error
            }
        }
        
    }

}
