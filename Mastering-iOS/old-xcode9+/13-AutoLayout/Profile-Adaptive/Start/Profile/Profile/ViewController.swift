//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
   @IBOutlet weak var emailButton: UIButton!
   
   @IBOutlet weak var profileImageView: UIImageView!
   
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        
        // 사이즈 클래스 확인후 버티컬이 컴팩트이면 레이아웃 바꾸는 코드
        if newCollection.verticalSizeClass == .compact {
            nameLabel.textAlignment = .left
        } else {
            nameLabel.textAlignment = .center
        }
    }
    
   override func viewDidLoad() {
      super.viewDidLoad()
      
      emailButton.layer.cornerRadius = 3
      emailButton.layer.borderColor = UIColor.lightGray.cgColor
      emailButton.layer.borderWidth = 1
      
      profileImageView.layer.cornerRadius = profileImageView.bounds.width * 0.5
   }
}











