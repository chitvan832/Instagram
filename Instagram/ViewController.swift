//
//  ViewController.swift
//  Instagram
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher
import AVFoundation
class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let arrayOfStory = [(URL(string:"https://lh6.googleusercontent.com/--n15fwu2-_U/AAAAAAAAAAI/AAAAAAAAAEI/BDkeOBzhw6A/photo.jpg")!),(URL(string:"https://upload.wikimedia.org/wikipedia/mediawiki/a/a9/Example.jpg")!),(URL(string:"https://www.gitmag.com/wp-content/uploads/2014/05/Download-Free-iOS-Background-Wallpapers-1.jpg")!),(URL(string:"https://lh6.googleusercontent.com/--n15fwu2-_U/AAAAAAAAAAI/AAAAAAAAAEI/BDkeOBzhw6A/photo.jpg")!),(URL(string: "https://image.freepik.com/free-vector/technological-background-with-a-circuit_1035-4297.jpg")!),(URL(string : "https://c2.staticflickr.com/4/3057/2347246284_f12e6a31ec.jpg")!),(URL(string : "https://cdn.pixabay.com/photo/2015/10/31/00/43/background-texture-1014963_960_720.jpg")!)]
    let arrayOfStoryUserName = ["asd.qwe","qwerty","chitvan.insta","nitin.sooni","lkj.asd","ghgh.jkj","chazz.insta"]
    
    var arrayOfCellData = [(cellData(type: "image",userName: "chitvan.insta", profilePic: URL(string:"https://c2.staticflickr.com/4/3057/2347246284_f12e6a31ec.jpg")!, post: URL(string:"https://c2.staticflickr.com/4/3057/2347246284_f12e6a31ec.jpg")!, caption : "aasasdasdasd")),(cellData(type: "image",userName: "asd.zxc", profilePic: URL(string:"https://upload.wikimedia.org/wikipedia/mediawiki/a/a9/Example.jpg")!, post: URL(string:"https://upload.wikimedia.org/wikipedia/mediawiki/a/a9/Example.jpg")!,caption : "aasasdasdasd")),(cellData(type: "video",userName: "code.brew", profilePic: URL(string:"https://cdn.pixabay.com/photo/2015/10/31/00/43/background-texture-1014963_960_720.jpg")!, post: URL(string:"https://cdn.pixabay.com/photo/2015/10/31/00/43/background-texture-1014963_960_720.jpg")!,caption : "aasasdasdasd")),(cellData(type: "image",userName: "nitin.sooni", profilePic: URL(string:"https://c2.staticflickr.com/4/3057/2347246284_f12e6a31ec.jpg")!, post: URL(string:"https://c2.staticflickr.com/4/3057/2347246284_f12e6a31ec.jpg")!,caption : "aasasdasdasd")),(cellData(type: "video",userName: "abhinandan.moonga", profilePic: URL(string:"https://www.gitmag.com/wp-content/uploads/2014/05/Download-Free-iOS-Background-Wallpapers-1.jpg")!, post: URL(string:"my_video_file.mp4")!,caption : "aasasdasdasd")),(cellData(type: "image",userName: "priyanka.negi", profilePic: URL(string:"https://static.vecteezy.com/system/resources/previews/000/107/516/original/abstract-green-vector-flowers-background.jpg")!, post: URL(string:"https://static.vecteezy.com/system/resources/previews/000/107/516/original/abstract-green-vector-flowers-background.jpg")!,caption : "aasasdasdasd")),(cellData(type: "image",userName: "abhijeet.123", profilePic: URL(string:"https://image.freepik.com/free-vector/technological-background-with-a-circuit_1035-4297.jpg")!, post: URL(string:"https://image.freepik.com/free-vector/technological-background-with-a-circuit_1035-4297.jpg")!,caption : "aasasdasdasd")),(cellData(type: "image",userName: "saurav.789", profilePic: URL(string:"https://lh6.googleusercontent.com/--n15fwu2-_U/AAAAAAAAAAI/AAAAAAAAAEI/BDkeOBzhw6A/photo.jpg")!, post: URL(string:"https://lh6.googleusercontent.com/--n15fwu2-_U/AAAAAAAAAAI/AAAAAAAAAEI/BDkeOBzhw6A/photo.jpg")!,caption : "aasasdasdasd")),(cellData(type: "image",userName: "asd.4556", profilePic: URL(string:"https://www.gitmag.com/wp-content/uploads/2014/05/Download-Free-iOS-Background-Wallpapers-1.jpg")!, post: URL(string:"https://www.gitmag.com/wp-content/uploads/2014/05/Download-Free-iOS-Background-Wallpapers-1.jpg")!,caption : "aasasdasdasd"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let celltype = arrayOfCellData[indexPath.row].celltype
        
        if celltype == "image"{
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
    cell.data = arrayOfCellData[indexPath.row]
            return cell
    }
        else {
            let cell = Bundle.main.loadNibNamed("VideoTableViewCell", owner: self, options: nil)?.first as! VideoTableViewCell
            cell.data = arrayOfCellData[indexPath.row]
             let theURL = Bundle.main.url(forResource:"my_video_file", withExtension: "mp4")
//              let videoURL = URL(string: "https://www.youtube.com/watch?v=HjxYvcdpVnU")
             let player = AVPlayer(url: theURL!)
      
            
             let playerLayer = AVPlayerLayer(player: player)

//            playerLayer.frame = cell2.videoView.frame
            playerLayer.frame = CGRect(x: 0, y: -30, width: UIScreen.main.bounds.width, height: cell.videoView.bounds.height)
           // playerLayer.frame.insetBy(dx: 0, dy: 0)
             cell.videoView.layer.addSublayer(playerLayer)
             player.play()
            return cell
        }
    }
}
extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfStory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath as IndexPath)
        let storyImage = collectionCell.viewWithTag(1) as! UIImageView //tag = 1 for story image in collection view
        storyImage.kf.setImage(with: arrayOfStory[indexPath.row])
        let storyUserName = collectionCell.viewWithTag(2) as! UILabel // tag = 2 for story username in collection view
        storyUserName.text = arrayOfStoryUserName[indexPath.row]
        //var url = NSURL(string: "\(arrayOfStory[indexPath.row])")
        return collectionCell
    }
    
    
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/3.0 - 8, height: collectionView.frame.size.width/3.0 - 8)
    }

}
