
import UIKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let showButton = UIButton(type: .system)
        showButton.setTitle("Show SwiftUI View", for: .normal)
        showButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        showButton.addTarget(self, action: #selector(showSwiftUIView), for: .touchUpInside)
        
        showButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(showButton)
        
        NSLayoutConstraint.activate([
            showButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func showSwiftUIView() {
        let vc = SwiftUIViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

