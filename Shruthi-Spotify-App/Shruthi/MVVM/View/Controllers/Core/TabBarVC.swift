//
//  TabBarVC.swift
//  Shruthi
//
//  Created by Varshitha VRaj on 17/07/25.
//

import UIKit

class TabBarVC: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let vc1 = HomeVC()
        vc1.title = "Browse"
        vc1.navigationItem.largeTitleDisplayMode = .always
        let nc1 = UINavigationController(rootViewController: vc1)
        nc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nc1.navigationBar.prefersLargeTitles = true
        
        let vc2 = LibraryVC()
        vc2.title = "Library"
        vc2.navigationItem.largeTitleDisplayMode = .always
        let nc2 = UINavigationController(rootViewController: vc2)
        nc2.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "books.vertical"), tag: 1)
        nc2.navigationBar.prefersLargeTitles = true
                                         
                                         
        let vc3 = SearchVC()
        vc3.title = "Search"
        vc2.navigationItem.largeTitleDisplayMode = .always
        let nc3 = UINavigationController(rootViewController: vc3)
        nc3.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        nc3.navigationBar.prefersLargeTitles = true
        

        setViewControllers([nc1, nc2, nc3], animated: false)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
