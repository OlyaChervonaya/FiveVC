//
//  ThirdModalViewController.swift
//  HW FiveViewControllers
//
//  Created by admin on 29.09.2022.
//

import UIKit

class ThirdModalViewController: UIViewController {
    // MARK: - Public properties
    public var text = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fourthModalController = segue.destination as? FourthModalViewController {
            fourthModalController.view.backgroundColor = .systemRed
            fourthModalController.labelText.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? SecondModalViewController else { return }
        structBack.modelText = modelText
    }
    
    // MARK: - IBActions
    @IBAction func goToFourthViewController(_ sender: Any) {
        performSegue(withIdentifier: "toFourth", sender: self)
    }
}
