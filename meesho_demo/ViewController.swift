//
//  ViewController.swift
//  meesho_demo
//
//  Created by Piyush Naranje on 18/08/22.
//

import UIKit

class ViewController: UIViewController {
    var selectedIndex : Int = 0
    
    var indepath0 = NSIndexPath(item: 0, section: 0)
    var indexpath1 = NSIndexPath(item: 0, section: 1)
    var indexpath2 = NSIndexPath(item: 0, section: 2)
    var indexpath3 = NSIndexPath(item: 0, section: 3)
    var indexpath4 = NSIndexPath(item: 0, section: 4)
    var indexpath5 = NSIndexPath(item: 0, section: 5)
    var indepath6 = NSIndexPath(item: 0, section: 6)
    var indepath7 = NSIndexPath(item: 0, section: 7)
    var indepath8 = NSIndexPath(item: 0, section: 8)
    var indepath9 = NSIndexPath(item: 0, section: 9)
    var indepath10 = NSIndexPath(item: 0, section: 10)
    var indepath11 = NSIndexPath(item: 0, section: 11)
    var indepath12 = NSIndexPath(item: 0, section: 12)
    var indepath13 = NSIndexPath(item: 0, section: 13)
    
    var arrList = ["Women Ethentic","Women Western","Men","Kids","Home & kitchen","Beauty & Health","Jewllery","Bags & Footwear","Electronics","Sports & Fitness","cars & Motorbike","Food & Drinks","Musical instruments","Books"]
    var arritemList = ["Women Ethentic":10,"Women Western":10,"Men":10,"Kids":5,"Home & kitchen":6,"Beauty & Health":10,"Jewllery":10,"Bags & Footwear":6,"Electronics":5,"Sports & Fitness" :10,"cars & Motorbike":4,"Food & Drinks":4,"Musical instruments":8,"Books":6]

    @IBOutlet var CV: UICollectionView!
    @IBOutlet var Tv: UITableView!
    override func viewDidLoad() {
        Tv.delegate = self
        Tv.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tv.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath)as! TVCell
        cell.lblName.text = arrList[indexPath.row]
        if selectedIndex == indexPath.row{
            cell.sideBorderView.isHidden = false
            cell.lblName.textColor = UIColor(named: "pink")
            cell.bgView.backgroundColor = .white
        }else{
            cell.sideBorderView.isHidden = true
            cell.lblName.textColor = .black
            cell.bgView.backgroundColor = UIColor(named: "bgColor")
            
        }
       return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row{
        case 0 :
            CV.scrollToItem(at: indepath0 as IndexPath, at: .top, animated: true)
            selectedIndex = 0
            Tv.reloadData()
        case 1 :
            CV.scrollToItem(at: indexpath1 as IndexPath, at: .top, animated: true)
            selectedIndex = 1
            Tv.reloadData()
        case 2 :
            CV.scrollToItem(at: indexpath2 as IndexPath, at: .top, animated: true)
            selectedIndex = 2
            Tv.reloadData()
        case 3 :
            CV.scrollToItem(at: indexpath3 as IndexPath, at: .top, animated: true)
            selectedIndex = 3
            Tv.reloadData()
        case 4 :
            CV.scrollToItem(at: indexpath4 as IndexPath, at: .top, animated: true)
            selectedIndex = 4
            Tv.reloadData()
        case 5 :
            CV.scrollToItem(at: indexpath5 as IndexPath, at: .top, animated: true)
            selectedIndex = 5
            Tv.reloadData()
        case 6 :
            CV.scrollToItem(at: indepath6 as IndexPath, at: .top, animated: true)
            selectedIndex = 6
            Tv.reloadData()
        case 7 :
            CV.scrollToItem(at: indepath7 as IndexPath, at: .top, animated: true)
            selectedIndex = 7
            Tv.reloadData()
        case 8 :
            CV.scrollToItem(at: indepath8 as IndexPath, at: .top, animated: true)
            selectedIndex = 8
            Tv.reloadData()
        case 9 :
            CV.scrollToItem(at: indepath9 as IndexPath, at: .top, animated: true)
            selectedIndex = 9
            Tv.reloadData()
        case 10 :
            CV.scrollToItem(at: indepath10 as IndexPath, at: .top, animated: true)
            selectedIndex = 10
            Tv.reloadData()
        case 11:
            CV.scrollToItem(at:indepath11 as IndexPath, at: .top, animated: true)
            selectedIndex = 11
            Tv.reloadData()
        case 12:
            CV.scrollToItem(at: indepath12  as IndexPath, at: .top, animated: true)
            selectedIndex = 12
            Tv.reloadData()
        default:
            CV.scrollToItem(at: indepath13 as IndexPath, at: .top, animated: true)
            selectedIndex = 13
            Tv.reloadData()
        }
    }
    
   

}
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arritemList.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section{
        case 0 : return arritemList["Women Ethentic"] ?? 0
        case 1: return arritemList ["Women Western"] ?? 0
        case 2: return arritemList["Men"] ?? 0
        case 4: return arritemList["Kids"] ?? 0
        case 3: return arritemList ["Home & kitchen"] ?? 0
        case 5: return arritemList["Beauty & Health"] ?? 0
        case 6: return arritemList["Jewllery"] ?? 0
        case 7: return arritemList["Bags & Footwear"] ?? 0
        case 8: return arritemList ["Electronics"] ?? 0
        case 9: return arritemList["Sports & Fitness"] ?? 0
        case 10: return arritemList["cars & Motorbike"] ?? 0
        case 11 : return arritemList ["Food & Drinks"] ?? 0
        case 12: return arritemList["Musical instruments"] ?? 0
        default:
        return arritemList ["Books"] ?? 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (CV.bounds.width - Tv.bounds.width)/3, height: (CV.bounds.height-Tv.bounds.height)/3)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: CV.bounds.width, height: 20)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = CV.dequeueReusableCell(withReuseIdentifier: "CVCell", for: indexPath)as! CVCell
        switch indexPath.section{
        case 0 :
            cell1.lblname.text = arrList[0]
        case 1:
            cell1.lblname.text = arrList[1]
        case 2: cell1.lblname.text = arrList[2]
        case 3: cell1.lblname.text = arrList[3]
        case 4: cell1.lblname.text = arrList[4]
        case 5: cell1.lblname.text = arrList[5]
        case 6: cell1.lblname.text = arrList[6]
        case 7 : cell1.lblname.text = arrList[7]
        case 8: cell1.lblname.text = arrList[8]
        case 9: cell1.lblname.text = arrList[9]
        case 10 : cell1.lblname.text = arrList[10]
        case 11 : cell1.lblname.text = arrList[11]
        case 12 : cell1.lblname.text = arrList[12]
            default:
            cell1.lblname.text = arrList[13]
        }
        return cell1
    }

    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let location = scrollView.panGestureRecognizer.location(in: CV)
        guard let index = CV.indexPathForItem(at: location) else{
            return
        }
    switch index[0]{
    case 0:
        selectedIndex = 0
        let indexpath = IndexPath(row: 0, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .top, animated: true)
        self.Tv.reloadData()
        
    case 1:
        selectedIndex = 1
        let indexpath = IndexPath(row: 1, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 2:
        selectedIndex = 2
        let indexpath = IndexPath(row: 2, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 3:
        selectedIndex = 3
        let indexpath = IndexPath(row: 3, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 4:
        selectedIndex = 4
        let indexpath = IndexPath(row: 4, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 5:
        selectedIndex = 5
        let indexpath = IndexPath(row: 5, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 6:
        selectedIndex = 6
        let indexpath = IndexPath(row: 6, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 7:
        selectedIndex = 7
       let indexpath = IndexPath(row: 7, section: 0)
        self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 8:
        selectedIndex = 8
        let indexpath = IndexPath(row: 8, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 9:
        selectedIndex = 9
        let indexpath = IndexPath(row: 9, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 10:
        selectedIndex = 10
        let indexpath = IndexPath(row: 10, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 11:
        selectedIndex = 11
        let indexpath = IndexPath(row: 11, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    case 12:
        selectedIndex = 12
        let indexpath = IndexPath(row: 12, section: 0)
         self.Tv.scrollToRow(at: indexpath, at: .middle, animated: true)
        self.Tv.reloadData()
    default:
        break
    }
    }
}

