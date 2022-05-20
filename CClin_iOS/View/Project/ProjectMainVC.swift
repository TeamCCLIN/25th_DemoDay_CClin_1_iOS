//
//  ProjectMainVC.swift
//  25th_DemoDay_CClin_2_iOS
//
//  Created by 홍희수 on 2022/05/20.
//

import UIKit


class ProjectMainVC: UIViewController {
    
    @IBOutlet weak var projectCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var verticalScrollView: UIScrollView!
    
    private var projectList : [ProjectDataModel] = []
    
    let projectDetailSB : UIStoryboard = UIStoryboard(name: "ProjectDetail", bundle: nil)
    
    // MARK: - Lifecycle
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let xUnit = verticalScrollView.bounds.width
        
        verticalScrollView.contentSize.width = xUnit * 10
        
        for i in 0..<10 {
            let newImageView = UIImageView()
            newImageView.frame = CGRect(x: CGFloat(i) * xUnit, y: 0, width: xUnit, height: xUnit)
            
            newImageView.image = UIImage(named: "경제")
            verticalScrollView.addSubview(newImageView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setProjectList()
        
        projectCollectionView.delegate = self
        projectCollectionView.dataSource = self
        
        registerXib()
    }
    
    func registerXib() {
        let nibName = UINib(nibName: "ProjectDetailCVC", bundle: nil)
        projectCollectionView.register(nibName, forCellWithReuseIdentifier: "ProjectDetailCVC")
    }
    
    func setProjectList() {
        projectList.append(contentsOf: [
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
            ProjectDataModel(projectName: "iOT 서비스의 기획 및 아이디어 공모", projectCategory: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", companyName: "고퀄"),
        ])
    }
    
}

extension ProjectMainVC : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return projectList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let projectCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProjectDetailCVC", for: indexPath) as? ProjectDetailCVC else {
            return UICollectionViewCell()
        }
        
        projectCell.setData(projectName: projectList[indexPath.row].projectName, category: projectList[indexPath.row].projectCategory, companyName: projectList[indexPath.row].companyName)
        
        return projectCell
    }
    
    
}

extension ProjectMainVC : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let nextVC = projectDetailSB.instantiateViewController(identifier: "ProjectDetailVC") as? ProjectDetailVC else {return}
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

extension ProjectMainVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width
        
        // 331 * 100
        let cellWidth = width * (331/375)
        let cellHeight = cellWidth * (100/331)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
