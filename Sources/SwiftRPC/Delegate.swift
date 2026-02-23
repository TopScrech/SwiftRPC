public protocol SwiftRPCDelegate: AnyObject {
    func swiftRPCDidConnect(_ rpc: SwiftRPC)
    func swiftRPCDidDisconnect(_ rpc: SwiftRPC, code: Int?, message msg: String?)
    func swiftRPCDidReceiveError(_ rpc: SwiftRPC, code: Int, message msg: String)
    func swiftRPCDidJoinGame(_ rpc: SwiftRPC, secret: String)
    func swiftRPCDidSpectateGame(_ rpc: SwiftRPC, secret: String)
    func swiftRPCDidReceiveJoinRequest(_ rpc: SwiftRPC, request: JoinRequest, secret: String)
}

extension SwiftRPCDelegate {
    public func swiftRPCDidConnect(_ rpc: SwiftRPC) {}
    public func swiftRPCDidDisconnect(_ rpc: SwiftRPC, code: Int?, message msg: String?) {}
    public func swiftRPCDidReceiveError(_ rpc: SwiftRPC, code: Int, message msg: String) {}
    public func swiftRPCDidJoinGame(_ rpc: SwiftRPC, secret: String) {}
    public func swiftRPCDidSpectateGame(_ rpc: SwiftRPC, secret: String) {}
    public func swiftRPCDidReceiveJoinRequest(_ rpc: SwiftRPC, request: JoinRequest, secret: String) {}
}
