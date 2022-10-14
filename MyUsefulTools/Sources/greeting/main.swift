import Foundation

let arguments = ProcessInfo.processInfo.arguments
guard let name = arguments.last, arguments.count >= 2 else {
    fatalError("name is required")
}

print("Hello \(name)")
