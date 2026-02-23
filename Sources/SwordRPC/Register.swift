import Foundation

#if os(macOS)
import CoreServices
#endif

extension SwordRPC {
    func createFile(_ name: String, at path: String, with data: String) {
        try? FileManager.default.createDirectory(
            atPath: NSHomeDirectory() + path,
            withIntermediateDirectories: true,
            attributes: nil
        )
        
        FileManager.default.createFile(
            atPath: path + "/" + name,
            contents: data.data(using: .utf8),
            attributes: nil
        )
    }
    
    func registerUrl() {
#if os(macOS)
        guard steamId == nil else {
            registerSteamGame()
            return
        }
        
        guard let bundleId = Bundle.main.bundleIdentifier else {
            return
        }
        
        let scheme = "discord-\(appId)" as CFString
        var response = LSSetDefaultHandlerForURLScheme(scheme, bundleId as CFString)
        
        guard response == 0 else {
            logError("[SwordRPC] Error creating URL scheme: \(String(describing: response))")
            return
        }
        
        let bundleUrl = Bundle.main.bundleURL as CFURL
        response = LSRegisterURL(bundleUrl, true)
        
        if response != 0 {
            logError("[SwordRPC] Error registering application: \(String(describing: response))")
        }
#else
        return
#endif
    }
    
#if os(macOS)
    func registerSteamGame() {
        createFile(
            "\(appId).json",
            at: "/Library/Application Support/discord/games",
            with: """
      {
        "command": "steam://rungameid/\(steamId!)"
      }
      """
        )
    }
#endif
}
