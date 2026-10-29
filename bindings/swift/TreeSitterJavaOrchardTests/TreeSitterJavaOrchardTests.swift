import XCTest
import SwiftTreeSitter
import TreeSitterJavaOrchard

final class TreeSitterJavaOrchardTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_java_orchard())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Java grammar")
    }
}
