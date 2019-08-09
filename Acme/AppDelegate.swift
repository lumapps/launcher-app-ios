//
//  AppDelegate.swift
//  Acme
//
//  Created by Thomas Lombard on 29/05/2019.
//  Copyright © 2019 lumapps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    window?.makeKeyAndVisible()
    launchLumapps()
    return true
  }
  
  func applicationWillEnterForeground(_ application: UIApplication) {
    launchLumapps()
  }
  
  private func launchLumapps() {
    
    let lumappsAppURL = URL(string: "lumapps://home")!
    
    if UIApplication.shared.canOpenURL(lumappsAppURL) {
      UIApplication.shared.open(
        lumappsAppURL,
        options: [:],
        completionHandler: nil)
    } else {
      showAppStoreAlertView()
    }
  }
  
  private func showAppStoreAlertView() {
    
    let alertView = UIAlertController(
      title: nil,
      message: NSLocalizedString("alertView.content", comment: ""),
      preferredStyle: .alert)
    let redirectToAppStoreAction = UIAlertAction(
      title: NSLocalizedString("alertView.button.appStore", comment: ""),
      style: .default) { action in
        self.redirectToAppStore()
    }
    let cancelAction = UIAlertAction(
      title: NSLocalizedString("alertView.button.cancel", comment: ""),
      style: .cancel,
      handler: nil)
    alertView.addAction(redirectToAppStoreAction)
    alertView.addAction(cancelAction)
    
    window?.rootViewController?.present(alertView, animated: true, completion: nil)
  }
  
  private func redirectToAppStore() {
    let appStoreLink = "itms-apps://itunes.apple.com/app/apple-store/id1237675892?mt=8"
    UIApplication.shared.open(URL(string: appStoreLink)!, options: [:], completionHandler: nil)
  }
}

