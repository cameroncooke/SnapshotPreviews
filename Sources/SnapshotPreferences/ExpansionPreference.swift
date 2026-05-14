//
//  ExpansionPreference.swift
//
//
//  Created by Noah Martin on 9/7/23.
//

import Foundation
import SwiftUI

struct ExpansionPreferenceKey: PreferenceKey {
  static func reduce(value: inout Bool?, nextValue: () -> Bool?) {
    if value == nil {
      value = nextValue()
    }
  }

  static var defaultValue: Bool? = nil
}

extension View {
    /// Controls scroll-view expansion when snapshotting the view.
    ///
    /// When enabled, the view's first scrollview is expanded to show all of its content
    /// in the snapshot instead of being clipped to the visible area.
    ///
    /// - Parameter enabled: A Boolean value that determines whether expansion is applied.
    ///   If `nil`, the effect will default to `true`.
    ///
    /// - Returns: A view with the expansion preference applied.
    ///
    /// # Example
    /// ```swift
    /// struct ContentView: View {
    ///     var body: some View {
    ///         ScrollView { ... }
    ///             .snapshotExpansion(false)
    ///     }
    /// }
    /// ```
    public func snapshotExpansion(_ enabled: Bool?) -> some View {
        preference(key: ExpansionPreferenceKey.self, value: enabled)
    }
}
