import XCTest

import myAppTests

var tests = [XCTestCaseEntry]()
tests += myAppTests.allTests()
XCTMain(tests)
