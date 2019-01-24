//
//  ArticleTableViewCell.swift
//  ABCEngineering
//
//  Created by Arun Sinthanaisirrpi on 15/1/19.
//  Copyright © 2019 Australian Broadcasting Corporation. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var synopsis: UILabel!
    @IBOutlet weak var date: UILabel!
    
    func configure(with article: Article) {
        title.text = article.title
        synopsis.text = article.synopsis
        
        date.text = DateFormatterHelper.shared.string(from: article.publishedDate)
    }    
}
