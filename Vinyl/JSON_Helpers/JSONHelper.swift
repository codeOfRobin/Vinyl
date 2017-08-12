//
//  JSONHelper.swift
//  Vinyl
//
//  Created by Rui Peres on 12/02/2016.
//  Copyright © 2016 Velhotes. All rights reserved.
//

import Foundation

func loadJSON<T>(from bundle: Bundle, fileName: String) -> T?  {
    
    guard
        let path = bundle.path(forResource: fileName, ofType: "json"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
        let jsonData = try? JSONSerialization.jsonObject(with: data) as? T
    else {
        return nil
    }
	if TurntableConfiguration.loggingEnabled {
		print("loading JSON file from\(path)")
	}
    return jsonData
}
