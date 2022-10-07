//
//  FirstModalViewController.swift
//  HW FiveViewControllers
//
//  Created by admin on 28.09.2022.
//

import UIKit

class FirstModalViewController: UIViewController {
    // MARK: - Public properties
    public var text: String = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondModalController = segue.destination as? SecondModalViewController {
            secondModalController.view.backgroundColor = .systemYellow
            secondModalController.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? MainViewController else { return }
        structBack.modelText = modelText
        structBack.view.backgroundColor = .lightGray
        structBack.setLabels()
        structBack.setLabelsHidden(false)
    }
    // MARK: - IBActions
    @IBAction func goToSecondController(_ sender: Any) {
        performSegue(withIdentifier: "toSecond", sender: self)
    }
}
