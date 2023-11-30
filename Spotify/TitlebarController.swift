//
// 
// FileName: TitlebarController.swift
// ProjectName: Spotify
//
// Created by MD ABIR HOSSAIN on 29-11-2023 at 11:52 PM
// Website: https://mdabirhossain.com/
//


import UIKit

class MusicViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
    }
}

class PodcastViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
    }
}

class TitlebarController: UIViewController {

    var musicBarButtonItem: UIBarButtonItem!
    var podCastBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func makeBarButtonItem(text: String, selector: Selector) -> UIBarButtonItem {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: selector, for: .primaryActionTriggered)
        
        let attributes = [
            NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .largeTitle).withTraits(traits: [.traitBold]),
            NSAttributedString.Key.foregroundColor: UIColor.label
        ]
        
        let attributedText = NSMutableAttributedString(string: text, attributes: attributes)
        button.setAttributedTitle(attributedText, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 16)
        
        let barButtonItem = UIBarButtonItem(customView: button)
        
        return barButtonItem
    }
}

