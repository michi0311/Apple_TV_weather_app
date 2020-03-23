import UIKit

var str = "Hello, playground"

let session = URLSession.shared

//delete hardcoded
let url = URL(string: "https://api.darksky.net/forecast/408df73d3a9f808599ce6e303509a3db/46.613380,14.575790?units=si&exclude=minutely,hourly,daily,flags,alerts")!

let task = session.dataTask(with: url) { data, response, error in

    if error != nil || data == nil {
        print("Client error!")
        return
    }

    guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
        print("Server error!")
        return
    }

    guard let mime = response.mimeType, mime == "application/json" else {
        print("Wrong MIME type!")
        return
    }

    do {
        let json = try JSONSerialization.jsonObject(with: data!, options: [])
        print(json)
        
        if let  json = json as? [String: AnyObject] {
            if let current = json["currently"] as? [String:AnyObject] {
                if let temp = current["temperature"] as? Double, let icon = current["icon"] {
                    print(temp)
                    print(icon)
                }
            }
        }
    } catch {
        print("JSON error: \(error.localizedDescription)")
    }
}

task.resume()
