//
//  MyTabVarController.swift
//  TabBarController
//
//  Created by Shogo Nobuhara on 2021/01/16.
//

import UIKit

class MyTabVarController: UITabBarController {

    // タブバーが切り替わると実行される
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){
        // バッチを消す
        item.badgeValue = nil
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 3番目のタブにバッジ"New"をつける
        //let tabBartItem = tabBar.items?[1]
        //tabBarItem?.badgeValue = "1"
        
        self.selectedIndex = 1
        
        for item in tabBar.items!{
            if( item.tag != self.selectedIndex){
                item.badgeValue = "1"
            }
        }
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
