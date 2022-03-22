//
//  ViewController.swift
//  SpaceX
//
//  Created by Alexander Rozhdestvenskiy on 21.03.2022.
//

import UIKit

class MainPageViewController: UIPageViewController {
    
    var pages: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        style()
        layout()
    }
    
    private func setup() {
        
    }
    
    private func style() {
        
    }
    
    private func layout() {
        
    }
}

extension MainPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
    }
}

extension MainPageViewController: UIPageViewControllerDelegate {
    
}
