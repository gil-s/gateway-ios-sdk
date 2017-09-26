import Foundation

/// The result of an gateway api request
///
/// - success:
/// - error:
public enum GatewayResult<T> {
    case success(T)
    case error(Error)
    
    public init(_ result: T) {
        self = .success(result)
    }
    
    public init(_ result: Error) {
        self = .error(result)
    }
}
