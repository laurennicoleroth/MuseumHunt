//
//  ArrayExtension.swift
//  ScavengerHunt
//
//  Created by Lauren Nicole Roth on 5/18/16.
//  Copyright © 2016 Lauren Nicole Roth. All rights reserved.
//

import Foundation

extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}