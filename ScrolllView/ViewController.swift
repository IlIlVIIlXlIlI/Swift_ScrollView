//
//  ViewController.swift
//  ScrolllView
//
//  Created by Shogo Nobuhara on 2021/01/09.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    struct Photo {
        var imageName:String
        var title:String
    }
    
    
    //========================================================
    // 写真とタイトルがある1ページ分のビューを作る
    //========================================================
    
    func createPage(viewRect:CGRect,imageSize:CGSize,item:Photo)->UIView
    {
        // 1ページ分のpageViewビュー
        let pageView = UIView(frame:viewRect)
        
        // 写真ビューを作ってイメージを設定する
        let photoView = UIImageView()
        let left = (pageView.frame.width - imageSize.width) / 2
        photoView.frame = CGRect(x:left,y:10,width:imageSize.width,height: imageSize.height)
        photoView.contentMode = .scaleAspectFill
        photoView.image = UIImage(named: item.imageName)
        
        // ラベルを作って写真タイトルを設定する
        let titleFrame = CGRect(x:left,y:photoView.frame.maxY+10,width: 200,height: 21)
        let titleLabel = UILabel(frame: titleFrame)
        titleLabel.text = item.title
        
        // 写真とタイトルとページビューに追加する
        pageView.addSubview(photoView)
        pageView.addSubview(titleLabel)
        
        return pageView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let photoList = [
            Photo(imageName:"photo1",title:"Yosemite"),
            Photo(imageName:"photo2",title:"ElCapitan"),
            Photo(imageName:"photo3",title:"Sierra"),
            Photo(imageName:"photo4",title:"Mojave")
        ]
        
    }


}

