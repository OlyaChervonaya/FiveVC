//
//  ViewController.swift
//  HW FiveViewControllers
//
//  Created by admin on 28.09.2022.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Public properties
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    // MARK: - Private properties
    private let text: String = "А путь-то выдался не легкий.."
    
    // MARK: - IBOutlets
    @IBOutlet weak var labelFirstLine: UILabel!
    @IBOutlet weak var labelSecondLine: UILabel!
    @IBOutlet weak var labelThirdLine: UILabel!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setLabelsHidden(true)
    }
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstModalController = segue.destination as? FirstModalViewController {
            firstModalController.view.backgroundColor = .systemTeal
            firstModalController.text = text
        }
    }    
    // MARK: - Public methods
    public func setLabels() {
        labelFirstLine.text = modelText.firstLine
        labelSecondLine.text = modelText.secondLine
        labelThirdLine.text = modelText.thirdLine
    }
    
    public func setLabelsHidden(_ bool: Bool) {
        labelFirstLine.isHidden = bool
        labelSecondLine.isHidden = bool
        labelThirdLine.isHidden = bool
    }
    // MARK: - IBActions
    @IBAction func goToFirstController(_ sender: Any) {
        performSegue(withIdentifier: "toFirst", sender: self)
    }
}

