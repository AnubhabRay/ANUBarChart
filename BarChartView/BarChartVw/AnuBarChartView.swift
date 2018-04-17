//
//  AnuBarChartView.swift
//  BarChartView
//
//  Created by Anubhab Ray on 10/04/18.
//  Copyright © 2018 Anubhab Ray. All rights reserved.
//

import UIKit

class AnuBarChartView: UIView {

    @IBOutlet weak var vw: UIView!
    
    var vwCollection : UICollectionView?
    var arrItems     = [BarModel]()
    var isShowAxis   = false
    var isShowItemText = true
    
    var barWidth  : CGFloat?
    var barSpacing : CGFloat?
    var fontText : UIFont?
    var fontAxistext : UIFont?
    var axisColor : UIColor?
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        
        
        
    }
    override func layoutSubviews() {
        if vwCollection != nil{
            
        }
        else{
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: (barWidth! + barSpacing!), height: (self.frame.height - 10))
            layout.scrollDirection = .horizontal
//            layout.minimumLineSpacing = 5.0
            layout.minimumInteritemSpacing = 0.0
            layout.minimumLineSpacing = 0.0
            
            vwCollection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
            vwCollection?.delegate = self
            vwCollection?.dataSource = self
            vwCollection?.backgroundColor = .clear
            let nib = UINib(nibName: "BarChartCell", bundle: nil)
            
            vwCollection?.register(nib, forCellWithReuseIdentifier: "cell")
            vwCollection?.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
            self.addSubview(vwCollection!)
            
            self.bringSubview(toFront: vwCollection!)
        }
    }
    
    func updateChart()  {
        vwCollection?.reloadData()
    }

}
extension AnuBarChartView : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = vwCollection?.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AnuBarCollectionViewCell
        cell.vwBar.backgroundColor = arrItems[indexPath.item].color!
        let height  = isShowAxis ? (cell.frame.height - 50.0) : cell.frame.height
        UIView.animate(withDuration: 0.3) {
             cell.heightConstraint.constant = height - CGFloat(self.arrItems[indexPath.item].ratio!) * cell.frame.size.height
            self.layoutIfNeeded()
        }
       
        cell.lblBarValue.text = (arrItems[indexPath.item].text)!
        cell.lblBarValue.isHidden = !isShowItemText
        cell.axisConstraint.constant = isShowAxis ? 50.0 : 0.0
        cell.lblXAxisItem.text = arrItems[indexPath.row].textAxis
        cell.lblXAxisItem.font = fontText!
        cell.lblBarValue.font = fontAxistext!
        cell.widthConstraint.constant = barWidth!
        cell.vwAxis.backgroundColor = axisColor!
        return cell
    }
    
    
}
