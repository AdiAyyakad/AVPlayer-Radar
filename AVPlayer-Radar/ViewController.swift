/// Copyright 2012-2018 (C) Butterfly Network, Inc.

import AVKit
import UIKit

class ViewController: UIViewController {

    lazy var avPlayerVC: AVPlayerViewController = {
        let vc = AVPlayerViewController()
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if let url = URL(string: "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.mp4") {
            let player = AVPlayer(url: url)
            avPlayerVC.player = player
        }

        view.addSubview(avPlayerVC.view)
        NSLayoutConstraint.activate([
            avPlayerVC.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            avPlayerVC.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            avPlayerVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            avPlayerVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        avPlayerVC.player?.play()
    }

}

