//
//  AuthManager.swift
//  Shruthi
//
//  Created by Varshitha VRaj on 17/07/25.
//

import Foundation
import UIKit



final class AuthManager {
    
    struct Constants{
        
        static let clientID = "06615e61d1644b65894985ee34535fb8"
        static let clientSecrate = "2f42a651d23d4671bb4974b05a55b21c"
        static let scopes = "user-read-private%20playlist-modify-private%20playlist-read-collaborative%20playlist-read-private%20user-follow-read%20user-library-modify%20user-library-read"
        static let redirectURI = "https://www.google.com/"
    }
    
    
    static let shared = AuthManager()  //creating singleton instance
    private init() {}
    
    var signInURL: URL? {

       let baseURL = "https://accounts.spotify.com/authorize"
        let string =  "\(baseURL)?response_type=code&client_id=\(Constants.clientID)&scope=\(Constants.scopes)&redirect_uri=\(Constants.redirectURI)&show_dialog=TRUE"
       return URL(string: string)
   }
   
    var isSignedIn: Bool {  // this variable is accessed at many places that is why no private
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    //MARK: initially we provide authorisation code , and this is 1 factor authentication
    //MARK: Next we have to exchange authorization code with access token
    
    public func exchangeCodeForToken(code: String, completion: @escaping((Bool) -> Void)){
        // Get Token
        
        
        
    }
    
    public func refreshAccessToken(){
        
        
    }
    
    
    // cache Token
    private func cacheToken(){
        
        
    }
     
    
}
