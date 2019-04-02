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
    @IBOutlet weak var catImageButton: UIButton!
    private var count: Int16 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
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
            catImageButton.setImage(UIImage(named: "GAK86_hutounokuroneko_TP_V4.jpg"), for: .normal)
        }
    }

    @IBAction func initButtonTouchDown(sender: UIButton) {
        count = 0
        countText.text = String(count)
        catImageButton.setImage(UIImage(named: "tom190303DSC03603_TP_V4.jpg"), for: .normal)
    }
}
