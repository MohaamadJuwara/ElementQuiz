//
//  ViewController.swift
//  ElementQuiz
//
//  Created by SD on 04/03/2024.
//

import UIKit

enum Mode {
    case flashCard
    case quiz
    
}

var mode: Mode = .flashCard

enum State {
    case question
    case answer
    case score
}

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func updateElement() {
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView?.image = image
        
        answerLabel.text = "?"
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text =
        elementList[currentElementIndex]
    }
    
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex == elementList.count{
            currentElementIndex = 0
        }
    
        updateElement()
    }
    
   
}


