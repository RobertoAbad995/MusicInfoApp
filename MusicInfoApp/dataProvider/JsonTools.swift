//
//  JSONFileReader.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import Foundation
struct JsonTools{
     
     
     func readLocalFile(forName name: String) -> Data {
         var finalData = Data()
         do {
             if let bundlePath = Bundle.main.path(forResource: name,
                                                  ofType: "json"),
                let data = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                 finalData = data
             }
         } catch {
             print(error)
         }
         
         return finalData
     }
     
    func parse(jsonData: Data) -> currentUser {
         do {
             let userData = try JSONDecoder().decode(currentUser.self, from: jsonData)
             return userData
         }
        catch let DecodingError.dataCorrupted(context) {
            print(context)
        } catch let DecodingError.keyNotFound(key, context) {
            print("Key '\(key)' not found:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch let DecodingError.valueNotFound(value, context) {
            print("Value '\(value)' not found:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch let DecodingError.typeMismatch(type, context)  {
            print("Type '\(type)' mismatch:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch {
            print("error: ", error)
        }
        catch {
             print("decode error")
             print(error)
         }
         return currentUser()
     }
     

}
