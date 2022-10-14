//
//  ViewController.swift
//  rubic
//
//  Created by trung on 13/10/2022.
//

import UIKit

class ViewController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(containerView)
        containerView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        
        
        let width = 50
        let arrColor: [UIColor] = [.red, .yellow, .blue, .orange, .green, .brown, .green, .purple, .systemPink, .black]
        
        for y in 0...4 {
            for x in 0...4 {
                let rubicView = UIView()
                rubicView.backgroundColor = arrColor.randomElement()
                containerView.addSubview(rubicView)
                rubicView.frame = .init(x: x*width, y: y*width, width: width, height: width)
            }
        }
        
        UIView.animate(withDuration: 5) {
            self.containerView.alpha = 1
            self.containerView.center = self.view.center
        }
    }


}

