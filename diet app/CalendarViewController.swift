//
//  CalendarViewController.swift
//  diet app
//
//  Created by 佐々木遼平 on 2023/12/21.
//

import UIKit

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addbutton(_ sender: Any) {
        transitionToEditorView()
    }



func configureButton() {
        addButton.layer.cornerRadius = addButton.bounds.width / 2
    }
    
    func transitionToEditorView() {
        let storyboard = UIStoryboard(name: "EditorViewController", bundle: nil)
        guard let editorViewController = storyboard.instantiateInitialViewController() as? EditorViewController else { return }
        present(editorViewController, animated: true)
    }
}

