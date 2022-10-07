//
//  SecondModalViewController.swift
//  HW FiveViewControllers
//
//  Created by admin on 28.09.2022.
//

import UIKit

class SecondModalViewController: UIViewController {
    // MARK: - Public properties
    public var text = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    // MARK: - Override methods
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdModalController = segue.destination as? ThirdModalViewController {
            thirdModalController.view.backgroundColor = .systemPurple
            thirdModalController.text = text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? FirstModalViewController else { return }
        structBack.modelText = modelText
    }
    // MARK: - IBActions
    @IBAction func goToThirdController(_ sender: Any) {
        performSegue(withIdentifier: "toThird", sender: self)
    }
}
