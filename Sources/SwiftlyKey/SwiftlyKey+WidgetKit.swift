#if canImport(WidgetKit)

import WidgetKit
import SwiftUI

@available(macOS 11.0, iOS 14, watchOS 9, *)
public extension StaticConfiguration {

    @MainActor @preconcurrency init<Provider>(kindKey: any RawRepresentable<SwiftlyKey>, provider: Provider, @ViewBuilder content: @escaping (Provider.Entry) -> Content) where Provider : TimelineProvider {
        self.init(kind: kindKey.name, provider: provider, content: content)
    }

}

#endif
