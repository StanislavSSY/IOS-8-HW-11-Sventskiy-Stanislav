//
//  Extentions.swift
//  IOS-8-HW-11-Sventskiy Stanislav
//
//  Created by Stanislav Stanislav on 13.01.2023.
//

import UIKit

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
        
        func setLeftIconTw0(_ image: UIImage) {
            let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
            iconView.image = image
            let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
            iconContainerView.addSubview(iconView)
            leftView = iconContainerView
            leftViewMode = .always
    }
}


        
   
