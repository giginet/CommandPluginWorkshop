import PackagePlugin
import Foundation

@main
struct MyCommand: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        // (ry
    }
}

#if canImport(XcodeProjectPlugin)
import XcodeProjectPlugin

extension MyCommand: XcodeCommandPlugin {
    func performCommand(context: XcodePluginContext, arguments: [String]) throws {
        let path = context.xcodeProject.directory.appending("hello.txt")
        let data = "hello".data(using: .utf8)
        FileManager.default.createFile(atPath: path.string, contents: data)
    }
}
#endif
