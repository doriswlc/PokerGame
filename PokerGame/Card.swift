//
//  Cards.swift
//  PokerGame
//
//  Created by doriswlc on 2022/8/31.
//

import Foundation

struct Card {
    let Rank: Rank
    let Suit: Suit
}

enum Rank: Int, CaseIterable {
    case Ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case Jack, Queen, King
    func symbol() -> String {
        switch self {
        case .Ace:
            return "A"
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King:
            return "K"
        default:
            return "\(rawValue)"
        }
    }
}

enum Suit: String, CaseIterable {
    case clubs = "a", diamonds = "b", hearts = "c", spades = "d"
    func symbol() -> String {
        switch self {
        case .clubs:
            return "♣️"
        case .diamonds:
            return "♦️"
        case .hearts:
            return "♥️"
        case .spades:
            return "♠️"
        }
    }
}

