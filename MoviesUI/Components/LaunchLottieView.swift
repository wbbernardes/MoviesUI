//
//  LaunchLottieView.swift
//  MoviesUI
//
//  Created by Wesley Brito on 24/08/20.
//

import SwiftUI
import Lottie

struct LaunchLottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    var filename: String
    @State private var isActive = false
    var finishAnimation: ( (Bool) -> Void)?
    func makeUIView(context: UIViewRepresentableContext<LaunchLottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play { finished in
            if finished {
                self.finishAnimation?(true)
            }
        }
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LaunchLottieView>) {
        
    }
}
