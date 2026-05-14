//
//  PrecisionPreference.swift
//  
//
//  Created by Noah Martin on 9/5/23.
//

import Foundation
import SwiftUI

struct PrecisionPreferenceKey: PreferenceKey {
  static func reduce(value: inout Float?, nextValue: () -> Float?) {
    value = nextValue()
  }
  
  static var defaultValue: Float? = nil
}
