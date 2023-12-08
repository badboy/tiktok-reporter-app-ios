//
//  APIClient.swift
//  TikTok Reporter
//
//  Created by Sergiu Ghiran on 01.11.2023.
//

import Foundation

protocol HTTPClient {
    func perform<T: Decodable>(request: APIRequest) async throws -> T
    func upload<T: Decodable>(_ fileURL: URL, request: APIRequest) async throws -> T
}

struct APIClient: HTTPClient {

    func perform<T: Decodable>(request: APIRequest) async throws -> T {

        let (data, response) = try await URLSession.shared.data(for: request.asURLRequest())

        let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 400

        switch statusCode {
        case 200:
            do {
                return try JSONDecoder().decode(T.self, from: data)
            } catch {
                throw APIError.decodingError
            }
        default:
            throw APIError.badRequest
        }
    }

    func upload<T: Decodable>(_ fileURL: URL, request: APIRequest) async throws -> T {

        let (data, response) = try await URLSession.shared.upload(for: request.asURLRequest(), fromFile: fileURL)

        let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 400

        switch statusCode {
        case 200:
            do {
                return try JSONDecoder().decode(T.self, from: data)
            } catch {
                throw APIError.decodingError
            }
        default:
            throw APIError.badRequest
        }
    }
}
