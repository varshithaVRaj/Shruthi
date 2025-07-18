//
//  WelcomeVC.swift
//  Shruthi
//
//  Created by Varshitha VRaj on 17/07/25.
//

import UIKit

class WelcomeVC: UIViewController {
    
    
    let sgnInBtn: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Sign In with spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        title = "Spotify"
        view.addSubview(sgnInBtn)
        sgnInBtn.addTarget(self, action: #selector (didTapOnSignInButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        

        sgnInBtn.frame = CGRect(x: 20, y: view.height-view.safeAreaInsets.bottom - 50 , width: (view.width-40), height: 50)
       
    }
    
    
    @objc func didTapOnSignInButton(){
        let vc = AuthVC()
        vc.completionHandler = { [weak self] succes in
            
            DispatchQueue.main.async {
                self?.handleSignInButton(success: succes)
            }
            
            
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    private func handleSignInButton(success: Bool){
        
        
    }
    


}
