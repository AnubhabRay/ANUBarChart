//
//  AnuBarCollectionViewCell.swift
//  BarChartView
//
//  Created by Anubhab Ray on 10/04/18.
//  Copyright © 2018 Anubhab Ray. All rights reserved.
//

import UIKit

class AnuBarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var axisConstraint: NSLayoutConstraint!
    @IBOutlet weak var lblBarValue: UILabel!
    @IBOutlet weak var vwBar: UIView!
    @IBOutlet weak var lblXAxisItem: UILabel!
    @IBOutlet weak var vwAxis: UIView!
}
