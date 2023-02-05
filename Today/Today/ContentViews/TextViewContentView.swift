//
//  TextViewContentView.swift
//  Today
//
//  Created by Сергей Молодец on 05.02.2023.
//

import UIKit

class TextViewContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        var text: String? = ""
        var onChnage: (String) -> Void = { _ in }
        
        func makeContentView() -> UIView & UIContentView {
            return TextViewContentView(self)
        }
        
    }
    
    
    let textView = UITextView()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }
    
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 0, height: 44)
    }
    
    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
    
    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        textView.text = configuration.text
        addPinnedSubview(textView, heigh: 200)
        textView.backgroundColor = nil
        textView.delegate = self
        textView.font = UIFont.preferredFont(forTextStyle: .body)

    }
    

}

extension UICollectionViewListCell {
    func textViewConfiguration() -> TextViewContentView.Configuration {
        TextViewContentView.Configuration()
    }
}

extension TextViewContentView: UITextViewDelegate {
 func textViewDidChange(_ sender: UITextView) {
        guard let configuration = configuration as? TextViewContentView.Configuration else { return }
        configuration.onChnage(textView.text)
    }
}
