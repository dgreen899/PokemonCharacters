//
//  PokemonStickerBrowserViewController.swift
//  PokemonCharacters
//
//  Created by Dameon Green on 9/9/16.
//  Copyright © 2016 AppTastic Voyage. All rights reserved.
//

import Foundation
import UIKit
import Messages

class PokemonStickerBrowserViewController: MSStickerBrowserViewController {
    
    var stickers = [MSSticker] ()
    
    func changeBrowserViewBackgroundColor(color: UIColor) {
        stickerBrowserView.backgroundColor = color
    }
    
    func loadStickers() {
        createSticker(asset: "reggie", localizedDescription: "reggie sticker")
        createSticker(asset: "ritchie", localizedDescription: "ritchie sticker")
        createSticker(asset: "serena", localizedDescription: "serena sticker")
        createSticker(asset: "staticmisty", localizedDescription: "staticmisty sticker")
        createSticker(asset: "stephan", localizedDescription: "stephan sticker")
        createSticker(asset: "takeshiag", localizedDescription: "takeshiag sticker")
        createSticker(asset: "togepi1", localizedDescription: "togepi1 sticker")
        createSticker(asset: "traceysketchit1", localizedDescription: "traceysketchit1 sticker")
        createSticker(asset: "traceysketchit2", localizedDescription: "traceysketchit2 sticker")
        createSticker(asset: "trippokemon1", localizedDescription: "trippokemon1 sticker")
        createSticker(asset: "ursula1", localizedDescription: "ursula1 sticker")
        createSticker(asset: "violet2", localizedDescription: "violet2 sticker")
        createSticker(asset: "vivian3", localizedDescription: "vivian3 sticker")
        createSticker(asset: "ash", localizedDescription: "ash sticker")
        createSticker(asset: "ashartwork", localizedDescription: "ashartwork sticker")
        createSticker(asset: "ashdp", localizedDescription: "ashdp sticker")
        createSticker(asset: "ashketchum1", localizedDescription: "ashketchum1 sticker")
        createSticker(asset: "ashketchum2", localizedDescription: "ashketchum2 sticker")
        createSticker(asset: "ashketchum3", localizedDescription: "ashketchum3 sticker")
        createSticker(asset: "barrypokemon", localizedDescription: "barrypokemon sticker")
        createSticker(asset: "bonnie", localizedDescription: "bonnie sticker")
        createSticker(asset: "brock1", localizedDescription: "brock1 sticker")
        createSticker(asset: "brock2", localizedDescription: "brock2 sticker")

        createSticker(asset: "butchpok", localizedDescription: "butchpok sticker")
        createSticker(asset: "celmont", localizedDescription: "celmont sticker")
        createSticker(asset: "cilananime", localizedDescription: "cilananime sticker")
        createSticker(asset: "conwaypok", localizedDescription: "conwaypok sticker")
        createSticker(asset: "daisypok", localizedDescription: "daisypok sticker")
        createSticker(asset: "dawn", localizedDescription: "dawn sticker")
        createSticker(asset: "deliaketchum", localizedDescription: "deliaketchum sticker")
        createSticker(asset: "drewpokemon", localizedDescription: "drewpokemon sticker")
        createSticker(asset: "enfermera1", localizedDescription: "enfermera1 sticker")
        createSticker(asset: "enfermera2", localizedDescription: "enfermera2 sticker")
        createSticker(asset: "garyoak", localizedDescription: "garyoak sticker")
        createSticker(asset: "georgia", localizedDescription: "georgia sticker")
        createSticker(asset: "harley", localizedDescription: "harley sticker")
        createSticker(asset: "irisbw", localizedDescription: "irisbw sticker")
        createSticker(asset: "james", localizedDescription: "james sticker")
        createSticker(asset: "jenny", localizedDescription: "jenny sticker")
        createSticker(asset: "jessie", localizedDescription: "jessie sticker")
        createSticker(asset: "johanna", localizedDescription: "johanna sticker")
        createSticker(asset: "kenny", localizedDescription: "kenny sticker")
        createSticker(asset: "lilian", localizedDescription: "lilian sticker")
        createSticker(asset: "lily", localizedDescription: "lily sticker")
        createSticker(asset: "marian", localizedDescription: "marian sticker")
        createSticker(asset: "max", localizedDescription: "maxcz6 sticker")
        createSticker(asset: "may2", localizedDescription: "may2 sticker")
        createSticker(asset: "may1", localizedDescription: "may1 sticker")
        createSticker(asset: "meowth", localizedDescription: "meowth sticker")
        createSticker(asset: "misty4", localizedDescription: "misty4 sticker")
        createSticker(asset: "mistykasumi", localizedDescription: "mistykasumi sticker")
        createSticker(asset: "mistykaylor", localizedDescription: "mistykaylor sticker")
        createSticker(asset: "mistypose", localizedDescription: "mistypose sticker")
        createSticker(asset: "nando", localizedDescription: "nando sticker")
        createSticker(asset: "paul", localizedDescription: "paul sticker")
        createSticker(asset: "pikachu1", localizedDescription: "pikachu1 sticker")
        createSticker(asset: "pikachu2", localizedDescription: "pikachu2 sticker")
        createSticker(asset: "pikachu3", localizedDescription: "pikaachu3 sticker")
        createSticker(asset: "pokemonzoey", localizedDescription: "pokemonzeoy sticker")
        createSticker(asset: "profesoroak", localizedDescription: "profesoroak sticker")
        
    }
    
    func createSticker(asset: String, localizedDescription: String) {
        guard let stickerPath = Bundle.main.path(forResource:asset, ofType: "png")
            else {
                print("couldn't create the sticker path for", asset)
                return
        }
        let stickerURL = URL(fileURLWithPath: stickerPath)
        
        let sticker: MSSticker
        do {
            try sticker = MSSticker(contentsOfFileURL: stickerURL, localizedDescription: localizedDescription)
            stickers.append(sticker)
        } catch {
            print(error)
            return
        }
    }
    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
       return stickers[index]
        
    }
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    

