//
//  APIKey.swift
//  PlannedTime
//
//  Created by found on 20/09/24.
//

import Foundation

enum APIKey {
  /// Fetch the API key from `GenerativeAI-Info.plist`
  /// This is just *one* way how you can retrieve the API key for your app.
  static var `default`: String {
    guard let filePath = Bundle.main.path(forResource: "GenerativeAI-Info", ofType: "plist")
    else {
      fatalError("Couldn't find file 'GenerativeAI-Info.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "AIzaSyAlwvHNrtJRn0Eu4LdBdTnxF2EJzhXD6to") as? String else {
      fatalError("Couldn't find key 'API_KEY' in 'GenerativeAI-Info.plist'.")
    }
    if value.starts(with: "_") || value.isEmpty {
      fatalError(
        "Follow the instructions at https://ai.google.dev/tutorials/setup to get an API key."
      )
    }
    return value
  }
}
