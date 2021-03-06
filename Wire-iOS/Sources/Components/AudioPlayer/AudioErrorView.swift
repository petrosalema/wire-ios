//
// Wire
// Copyright (C) 2019 Wire Swiss GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//

import UIKit

@objc class AudioErrorView: UIView {
    private let errorIconView: UIImageView = {
        let imageView = UIImageView()
        let image =  UIImage(for: .mediaBarPlay, iconSize: .camera, color: UIColor(white: 1, alpha: 0.16))
        imageView.image = image
        imageView.transform = CGAffineTransform(rotationAngle: .pi)

        return imageView
    }()

    init() {
        super.init(frame: .zero)

        backgroundColor = UIColor(white: 0.0, alpha: 0.32)
        addSubview(errorIconView)
        createConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createConstraints() {
        errorIconView.translatesAutoresizingMaskIntoConstraints = false
        errorIconView.centerInSuperview()
    }
}
