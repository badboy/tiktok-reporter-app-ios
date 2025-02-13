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

        public static let info = BuildInfo(buildDate: DateComponents(calendar: Calendar.current, timeZone: TimeZone(abbreviation: "UTC"), year: 2024, month: 1, day: 26, hour: 12, minute: 54, second: 49))
    }

    enum DownloadData {
        /// Participant-provided email address to fulfill data download request.
        static let email = TextMetricType( // generated from download_data.email
            CommonMetricData(
                category: "download_data",
                name: "email",
                sendInPings: ["download-data"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// A unique identifier for the app installation.
        static let identifier = UuidMetricType( // generated from download_data.identifier
            CommonMetricData(
                category: "download_data",
                name: "identifier",
                sendInPings: ["download-data"],
                lifetime: .ping,
                disabled: false
            )
        )

    }

    enum Email {
        /// Optionally participant-provided email address.
        static let email = TextMetricType( // generated from email.email
            CommonMetricData(
                category: "email",
                name: "email",
                sendInPings: ["email"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// A unique identifier for the app installation.
        static let identifier = UuidMetricType( // generated from email.identifier
            CommonMetricData(
                category: "email",
                name: "identifier",
                sendInPings: ["email"],
                lifetime: .ping,
                disabled: false
            )
        )

    }

    enum TiktokReport {
        /// A JSON structure with information about a report.  Includes the reported video
        /// ID, as well as additional participant-provided fields that depend on the study
        /// specification.
        static let fields = TextMetricType( // generated from tiktok_report.fields
            CommonMetricData(
                category: "tiktok_report",
                name: "fields",
                sendInPings: ["tiktok-report"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// A unique identifier for the app installation.
        static let identifier = UuidMetricType( // generated from tiktok_report.identifier
            CommonMetricData(
                category: "tiktok_report",
                name: "identifier",
                sendInPings: ["tiktok-report"],
                lifetime: .ping,
                disabled: false
            )
        )

    }

    enum TiktokScreenRecording {
        /// The GCS path to which the screen recording was uploaded.
        static let data = TextMetricType( // generated from tiktok_screen_recording.data
            CommonMetricData(
                category: "tiktok_screen_recording",
                name: "data",
                sendInPings: ["screen-recording"],
                lifetime: .ping,
                disabled: false
            )
        )

        /// A unique identifier for the app installation.
        static let identifier = UuidMetricType( // generated from tiktok_screen_recording.identifier
            CommonMetricData(
                category: "tiktok_screen_recording",
                name: "identifier",
                sendInPings: ["screen-recording"],
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

        /// A ping sent to indicate that the participant has requested their data.
        let downloadData = Ping<NoReasonCodes>(
            name: "download-data",
            includeClientId: true,
            sendIfEmpty: false,
            preciseTimestamps: true,
            reasonCodes: []
        )

        /// A ping sent to indicate that the participant has provided an email.
        let email = Ping<NoReasonCodes>(
            name: "email",
            includeClientId: true,
            sendIfEmpty: false,
            preciseTimestamps: true,
            reasonCodes: []
        )

        /// A ping sent to indicate that the participant has submitted a screen recording.
        let screenRecording = Ping<NoReasonCodes>(
            name: "screen-recording",
            includeClientId: true,
            sendIfEmpty: false,
            preciseTimestamps: true,
            reasonCodes: []
        )

        /// A ping sent to indicate that the participant has reported a video.
        let tiktokReport = Ping<NoReasonCodes>(
            name: "tiktok-report",
            includeClientId: true,
            sendIfEmpty: false,
            preciseTimestamps: true,
            reasonCodes: []
        )

    }

}
