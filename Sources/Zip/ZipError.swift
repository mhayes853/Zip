import Foundation

// MARK: - ZipError

/// Zip error type
public enum ZipError: Error {
  /// File not found
  case fileNotFound
  /// Unzip fail
  case unzipFail
  /// Zip fail
  case zipFail
}

// MARK: - Description

extension ZipError {
  /// User readable description
  public var description: String {
    switch self {
    case .fileNotFound: return NSLocalizedString("File not found.", comment: "")
    case .unzipFail: return NSLocalizedString("Failed to unzip file.", comment: "")
    case .zipFail: return NSLocalizedString("Failed to zip file.", comment: "")
    }
  }
}
