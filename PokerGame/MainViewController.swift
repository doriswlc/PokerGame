//
//  ViewController.swift
//  PokerGame
//
//  Created by doriswlc on 2022/8/31.
//

import UIKit

class MainViewController: UIViewController {
    var cards = [Card]()
    
    @IBOutlet weak var cardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                cards.append(Card(Rank: rank, Suit: suit))
            }
        }
        cards.shuffle()
    }

    @IBAction func playButton(_ sender: Any) {
        if !cards.isEmpty {
            cardLabel.text = "\(cards[0].Suit.symbol())\(cards[0].Rank.symbol())"
            cards.remove(at: 0)
        }
    }
    
}

