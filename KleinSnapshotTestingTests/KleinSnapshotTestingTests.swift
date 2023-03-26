//
//  KleinSnapshotTestingTests.swift
//  KleinSnapshotTestingTests
//
//  Created by Kubilay Erdogan on 2023-02-27.
//

import XCTest
import snapshotino
import SwiftUI
import UIKit
@testable import KleinSnapshotTesting

final class KleinSnapshotTestingTests: XCTestCase {
    func testUIViewController() throws {
        try assertSnapshot(of: SampleViewController())
    }

    func testUIView() throws {
        if let view = Bundle.main.loadNibNamed("SampleView", owner: self, options: nil)?.first as? SampleView {
            try assertSnapshot(of: view)
        }
    }

    func testView() throws {
        let view = ContentView(viewModel: .init(imageName: "circle", text: "test"))
        try assertSnapshot(of: view.asSnapshottableView)
    }
}
