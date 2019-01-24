//
//  Router.swift
//  ABCEngineering
//
//  Created by Hai Le Thanh on 1/24/19.
//  Copyright © 2019 Australian Broadcasting Corporation. All rights reserved.
//

import UIKit
import SafariServices

struct Router {
    private weak var controller: UIViewController?
    
    init(viewController: UIViewController) {
        controller = viewController
    }
    
    func navigateToArticle(article: Article) {
        guard let url = URL(string: article.href) else { return }
        let config = SFSafariViewController.Configuration()
        let cont = SFSafariViewController(url: url, configuration: config)
        controller?.present(cont, animated: true, completion: nil)
    }
}
