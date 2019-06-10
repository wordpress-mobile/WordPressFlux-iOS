/// A type that can be observed for changes.
///
/// Types that conform to Observable can be subscribed by observers to be
/// notified of changes. Observers can call onChange and register a callback to
/// handle any changes to the Observable, as long as they keep a reference to
/// the returned Receipt.
///
/// ## Conforming to Observable
///
/// To allow a type to be observed, add a changeDispatcher property that will
/// keep track of all the subscriptions. When the type needs to notify that it
/// has changed, call emitChange().
///
///
public protocol Observable {
    associatedtype Payload
    /// The Dispatcher to keep track of all observers.
    ///
    var changeDispatcher: Dispatcher<Payload> { get }

    /// Registers a new observer.
    ///
    /// When there's a change, the given handler will be called.
    /// The observer should keep a copy of the returned Receipt for as long as
    /// it desires to receive change notifications.
    ///
    func onChange(_ handler: @escaping (Payload) -> Void) -> Receipt
}

public extension Observable {
    func onChange(_ handler: @escaping (Payload) -> Void) -> Receipt {
        return changeDispatcher.subscribe(handler)
    }

    /// Notifies all registered observers of a change for a specific payload.
    func emitChange(for payload: Payload) {
        changeDispatcher.dispatch(payload)
    }
}

public extension Observable where Payload == Void {
    /// Notifies all registered observers of a change.
    func emitChange() {
        changeDispatcher.dispatch()
    }
}
