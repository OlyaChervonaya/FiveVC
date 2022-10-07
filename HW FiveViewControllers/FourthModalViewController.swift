//
//  FourthModalViewController.swift
//  HW FiveViewControllers
//
//  Created by admin on 29.09.2022.
//

import UIKit

class FourthModalViewController: UIViewController {
    // MARK: - Public properties
    public let modelText = MyModel(firstLine: "И снова", secondLine: "седая ночь", thirdLine: "...")
    
    // MARK: - IBOutlets
    @IBOutlet weak var labelText: UILabel!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? ThirdModalViewController else { return }
        structBack.modelText = modelText
    }
}
