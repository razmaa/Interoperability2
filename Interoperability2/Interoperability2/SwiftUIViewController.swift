
import UIKit
import SwiftUI

class SwiftUIViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let swiftUIView = SwiftUIView { [weak self] in
            self?.dismiss(animated: true)
        }
        
        let hostingController = UIHostingController(rootView: swiftUIView)
        addChild(hostingController)
        hostingController.view.frame = view.bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
}


struct SwiftUIView: View {
    var dismissAction: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello from SwiftUI!")
                .font(.largeTitle)
            Button("Dismiss") {
                dismissAction()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
