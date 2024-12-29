//
//  ViewController.swift
//  Sam1
//
//  Created by Sothesom on 09/10/1403.
//

import UIKit

class ViewController: UIViewController {

    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "سلام به UIKit!"
        label.textAlignment = .center
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(myLabel)
        
        NSLayoutConstraint.activate([
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let myView = UIView(frame: CGRect(x: 200, y: 200, width: 100, height: 100))
        myView.backgroundColor = .blue
        myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4.0)
        
        let myView2 = UIView(frame: CGRect(x: 200, y: 200 , width: 200 , height: 200))
        myView2.backgroundColor = .black
        myView2.alpha = 0.5
        
        view.addSubview(myView2)
        view.addSubview(myView)
        
        let label = UILabel(frame: CGRect(x: 30, y: 300, width: 60, height: 20))
        label.text = "test text"
        label.textAlignment = .center
        view.addSubview(label)
        
        
        let imag = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imag.image = UIImage(named: "photo1")
        view.addSubview(imag)
        imag.contentMode = .scaleAspectFit
    }
}
