//
//  String+Regex.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 20/03/21.
//

import Foundation

extension String {
    
    func regexReplace(pattern: String, template: String = String(), options: NSRegularExpression.Options = .caseInsensitive) -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: options)
            return regex.stringByReplacingMatches(in: self, options: .withTransparentBounds, range: NSMakeRange(0, count), withTemplate: template)
        } catch {
            debugPrint("Pattern regex error: \(error)")
        }
        
        return self
    }
    
    func matchPattern(_ pattern: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
            let result = regex.firstMatch(in: self, range: NSRange(location: 0, length: count))
            return result != nil
        }
        catch {
            print("invalid regex: \(error.localizedDescription)")
        }
        
        return false
    }

    func matches(for regex: String, in text: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: text,
                                        range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch let error {
            debugPrint("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
}
