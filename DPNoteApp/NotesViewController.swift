//
//  ViewController.swift
//  DPNoteApp
//
//  Created by Diar Orynbek on 17.07.2024.
//

import UIKit

class NotesViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(didTapButton))
        
        button.setTitle("Welcome to the Notes", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        view.addSubview(button)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc private func didTapButton() {
        let rootVC = SecondViewController()
        let nacVC = UINavigationController(rootViewController: rootVC)
        
        present(nacVC, animated: true)
    }
}

class SecondViewController: UIViewController {
    
    private var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "You are welcome"
        
        button.setTitle("Go to the Nav Controller", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        view.addSubview(button)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white // c vc.view и без него имеет колосальное значение. Оно имеет смысл
        navigationController?.pushViewController(vc, animated: true)
    }
}
