extension SwiftRPC {
    public func onConnect(handler: @escaping (_ rpc: SwiftRPC) -> ()) {
        connectHandler = handler
    }
    
    public func onDisconnect(handler: @escaping (_ rpc: SwiftRPC, _ code: Int?, _ msg: String?) -> ()) {
        disconnectHandler = handler
    }
    
    public func onError(handler: @escaping (_ rpc: SwiftRPC, _ code: Int, _ msg: String) -> ()) {
        errorHandler = handler
    }
    
    public func onJoinGame(handler: @escaping (_ rpc: SwiftRPC, _ secret: String) -> ()) {
        joinGameHandler = handler
    }
    
    public func onSpectateGame(handler: @escaping (_ rpc: SwiftRPC, _ secret: String) -> ()) {
        spectateGameHandler = handler
    }
    
    public func onJoinRequest(handler: @escaping (_ rpc: SwiftRPC, _ request: JoinRequest, _ secret: String) -> ()) {
        joinRequestHandler = handler
    }
}
