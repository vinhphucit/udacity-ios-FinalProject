//
//  BookDetailCoverTableViewCell.swift
//  BookCase
//
//  Created by heike on 19/03/2017.
//  Copyright © 2017 stufengrau. All rights reserved.
//

import UIKit

class BookDetailCoverTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var bookThumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    // MARK: -
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Cell Configuration
    func configureCell(book: Book) {
        
        // Fetch the cover image
        book.fetchCoverImage { (coverImage) in
            if let coverImage = coverImage {
                DispatchQueue.main.async {
                    self.bookThumbnail.image = coverImage
                }
            }
        }
        
        title.text = book.bookInformation.title
        subtitle.text = book.bookInformation.subtitle
    }
    
}
