// -*- mode: Swift -*-

// AUTOGENERATED BY glean_parser v10.0.3. DO NOT EDIT. DO NOT COMMIT.

#if canImport(Foundation)
    import Foundation
#endif

/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */


import Glean

// swiftlint:disable superfluous_disable_command
// swiftlint:disable nesting
// swiftlint:disable line_length
// swiftlint:disable identifier_name
// swiftlint:disable force_try

extension GleanMetrics {
    class GleanBuild {
        private init() {
            // Intentionally left private, no external user can instantiate a new global object.
        }

        public static let info = BuildInfo(buildDate: DateComponents(calendar: Calendar.current, timeZone: TimeZone(abbreviation: "UTC"), year: 2023, month: 12, day: 5, hour: 9, minute: 44, second: 2))
    }

    enum TiktokReport {
        /// Some description about what this contains. This is a json dump
        /// of the "fields" in the example I was given.
        static let fields = TextMetricType( // generated from tiktok_report.fields
            CommonMetricData(
                category: "tiktok_report",
                name: "fields",
                sendInPings: ["titok-report"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// Some description about what this contains.
        static let identifier = UuidMetricType( // generated from tiktok_report.identifier
            CommonMetricData(
                category: "tiktok_report",
                name: "identifier",
                sendInPings: ["titok-report"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// Some description about what this contains.
        static let name = StringMetricType( // generated from tiktok_report.name
            CommonMetricData(
                category: "tiktok_report",
                name: "name",
                sendInPings: ["titok-report"],
                lifetime: .ping,
                disabled: false
            )
        )

    }

    class Pings {
        public static let shared = Pings()
        private init() {
            // Intentionally left private, no external user can instantiate a new global object.
        }

        /// Some description about what this contains.
        let tiktokRequest = Ping<NoReasonCodes>(
            name: "tiktok-request",
            includeClientId: false,
            sendIfEmpty: false,
            preciseTimestamps: true,
            reasonCodes: []
        )

    }

}
