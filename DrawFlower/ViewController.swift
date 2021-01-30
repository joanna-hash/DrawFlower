//
//  ViewController.swift
//  DrawFlower
//
//  Created by 김가영 on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIGraphicsBeginImageContext(imgView.frame.size) //컨텍스트를 이미지 뷰의 크기와 같게 생성
        let context = UIGraphicsGetCurrentContext()! //생성한 콘텍스트의 정보를 가져옴
        
        //triangle
        context.setLineWidth(4.0)
        context.setStrokeColor(UIColor.green.cgColor)
        context.setFillColor(UIColor.green.cgColor)
        
        context.move(to: CGPoint(x: 170, y: 200))
        context.addLine(to: CGPoint(x: 170, y: 200))
        context.addLine(to: CGPoint(x: 200, y: 450))
        context.addLine(to: CGPoint(x: 140, y: 450))
        context.fillPath()
        context.strokePath()
        
        //circle
        context.setLineWidth(5.0)
        context.setStrokeColor(UIColor.red.cgColor)
        
        context.addEllipse(in: CGRect(x:120, y:150, width:100, height: 100))
        context.strokePath()
        
        context.addEllipse(in: CGRect(x:120+50, y:150, width:100, height: 100))
        context.strokePath()
        
        context.addEllipse(in: CGRect(x:120-50, y:150, width:100, height: 100))
        context.strokePath()
        
        context.addEllipse(in: CGRect(x:120, y:150-50, width:100, height: 100))
        context.strokePath()
        
        context.addEllipse(in: CGRect(x:120, y:150+50, width:100, height: 100))
        context.strokePath()
        
        imgView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }


}

