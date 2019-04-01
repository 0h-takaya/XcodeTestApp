//
//  ViewController.swift
//  takayanoobenkyou1
//
//  Created by 高屋浩幸 on 2019/03/22.
//  Copyright © 2019 高屋浩幸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countText: UILabel!
    @IBOutlet weak var catImage: UIImageView!
    private var count: Int16 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .yellow

        countText.text = String(count)
    }

    @IBAction func MinusButtonTouchDown(sender: UIButton) {
        count -= 1
        countText.text = String(count)
    }
    @IBAction func PlusButtonTouchDown(sender: UIButton) {
        count += 1
        countText.text = String(count)
        if(count == 10) {
            catImage.image = UIImage(named: "GAK86_hutounokuroneko_TP_V4")
        }

    }

    @IBAction func initButtonTouchDown(sender: UIButton) {
        count = 0
        countText.text = String(count)
    }
}
