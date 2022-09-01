/* Copyright 2021 The Brave Authors. All rights reserved.
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation
import BraveCore

#if DEBUG

extension BraveWallet.BlockchainToken {
  static let previewToken: BraveWallet.BlockchainToken = .init(
    contractAddress: "",
    name: "Ethereum",
    logo: "",
    isErc20: false,
    isErc721: false,
    symbol: "ETH",
    decimals: 18,
    visible: false,
    tokenId: "",
    coingeckoId: "",
    chainId: "",
    coin: .eth
  )
  
  static let previewDaiToken: BraveWallet.BlockchainToken = .init(
    contractAddress: "0xad6d458402f60fd3bd25163575031acdce07538d",
    name: "Dai Stablecoin",
    logo: "",
    isErc20: false,
    isErc721: false,
    symbol: "DAI",
    decimals: 18,
    visible: false,
    tokenId: "",
    coingeckoId: "",
    chainId: "",
    coin: .eth
  )
  
  static let mockUSDCToken: BraveWallet.BlockchainToken = .init(
    contractAddress: "0x07865c6e87b9f70255377e024ace6630c1eaa37f",
    name: "USDC",
    logo: "",
    isErc20: false,
    isErc721: false,
    symbol: "USDC",
    decimals: 6,
    visible: false,
    tokenId: "",
    coingeckoId: "",
    chainId: "",
    coin: .eth
  )
  
  static let mockSolToken: BraveWallet.BlockchainToken = .init(
    contractAddress: "",
    name: "Solana",
    logo: "",
    isErc20: false,
    isErc721: false,
    symbol: "SOL",
    decimals: 9,
    visible: false,
    tokenId: "",
    coingeckoId: "",
    chainId: "",
    coin: .sol
  )
  
  static let mockSpdToken: BraveWallet.BlockchainToken = .init(
    contractAddress: "0x1111111111222222222233333333334444444444",
    name: "Solpad",
    logo: "",
    isErc20: false,
    isErc721: false,
    symbol: "SPD",
    decimals: 6,
    visible: false,
    tokenId: "",
    coingeckoId: "",
    chainId: "",
    coin: .sol
  )
}

extension BraveWallet.AccountInfo {
  static var previewAccount: BraveWallet.AccountInfo {
    let account = BraveWallet.AccountInfo()
    account.name = "Account 1"
    account.address = "0x879240B2D6179E9EC40BC2AFFF9E9EC40BC2AFFF"
    return account
  }
}

extension BraveWallet.TransactionInfo {
  static var previewConfirmedSend: BraveWallet.TransactionInfo {
    BraveWallet.TransactionInfo(
      id: "fce43e63-1f68-4685-9d40-035f13250a4c",
      fromAddress: "0x879240B2D6179E9EC40BC2AFFF9E9EC40BC2AFFF",
      txHash: "0x46fbd9d5ed775b9e5836aacaf0ed7a78bf5f5a4da451f23238c6123ed0fd51bf",
      txDataUnion: .init(
        ethTxData1559: .init(
          baseData: .init(
            nonce: "0x6",
            gasPrice: "0x0",
            gasLimit: "0x5208",
            to: "0x3f2116ef98fcab1a9c3c2d8988e0064ab59acfca",
            value: "0x2386f26fc10000",
            data: []
          ),
          chainId: "0x3",
          maxPriorityFeePerGas: "0x2540be400",
          maxFeePerGas: "0x25b7f3d400",
          gasEstimation: nil
        )
      ),
      txStatus: .confirmed,
      txType: .ethSend,
      txParams: [],
      txArgs: [],
      createdTime: Date(timeIntervalSince1970: 1636399671),
      submittedTime: Date(timeIntervalSince1970: 1636399673),
      confirmedTime: Date(timeIntervalSince1970: 1636402508),
      originInfo: .init(),
      groupId: nil
    )
  }
  static var previewConfirmedSwap: BraveWallet.TransactionInfo {
    BraveWallet.TransactionInfo(
      id: "2531db97-6d1d-4906-a1b2-f829c41f489e",
      fromAddress: "0x879240B2D6179E9EC40BC2AFFF9E9EC40BC2AFFF",
      txHash: "0xe21f7110753a8a42793c0b6c0c649aac1545488e57a3f57541b9f199d6b2be11",
      txDataUnion: .init(
        ethTxData1559: .init(
          baseData: .init(
            nonce: "0x5",
            gasPrice: "0x0",
            gasLimit: "0x520ca",
            to: "0xdef1c0ded9bec7f1a1670819833240f027b25eff",
            value: "0x9cacb762984000",
            data: _transactionBase64ToData(
              // swiftlint:disable:next line_length
              "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"
            )
          ),
          chainId: "0x3",
          maxPriorityFeePerGas: "0x77359400",
          maxFeePerGas: "0x39bdf3b000",
          gasEstimation: nil
        )
      ),
      txStatus: .confirmed,
      txType: .other,
      txParams: [],
      txArgs: [],
      createdTime: Date(timeIntervalSince1970: 1636399671),
      submittedTime: Date(timeIntervalSince1970: 1636399673),
      confirmedTime: Date(timeIntervalSince1970: 1636402508),
      originInfo: .init(),
      groupId: nil
    )
  }
  /// Approved Unlimited DAI
  static var previewConfirmedERC20Approve: BraveWallet.TransactionInfo {
    BraveWallet.TransactionInfo(
      id: "19819c05-612a-47c5-84b0-e95045d15b37",
      fromAddress: "0x879240B2D6179E9EC40BC2AFFF9E9EC40BC2AFFF",
      txHash: "0x46d0ecf2ec9829d451154767c98ae372413bac809c25b16d1946aba100663e4b",
      txDataUnion: .init(
        ethTxData1559: .init(
          baseData: .init(
            nonce: "0x5",
            gasPrice: "0x0",
            gasLimit: "0x520ca",
            to: BraveWallet.BlockchainToken.previewDaiToken.contractAddress,
            value: "0x0",
            data: _transactionBase64ToData("CV6nswAAAAAAAAAAAAAAAOWSQnoK7Okt4+3uHxjgFXwFhhVk//////////////////////////////////////////8=")
          ),
          chainId: "0x3",
          maxPriorityFeePerGas: "0x77359400",
          maxFeePerGas: "0x39bdf3b000",
          gasEstimation: nil
        )
      ),
      txStatus: .confirmed,
      txType: .erc20Approve,
      txParams: ["address", "uint256"],
      txArgs: ["0xe592427a0aece92de3edee1f18e0157c05861564Z", "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"],
      createdTime: Date(timeIntervalSince1970: 1636399671),
      submittedTime: Date(timeIntervalSince1970: 1636399673),
      confirmedTime: Date(timeIntervalSince1970: 1636402508),
      originInfo: .init(),
      groupId: nil
    )
  }
  /// Solana System Transfer
  static var previewConfirmedSolSystemTransfer: BraveWallet.TransactionInfo {
    BraveWallet.TransactionInfo(
      id: "3d3c7715-f5f2-4f70-ab97-7fb8d3b2a3cd",
      fromAddress: "6WRQXT2wMAkSjTjGQSqfEnuqgnqskTp5FnT28tScDsAd",
      txHash: "",
      txDataUnion: .init(
        solanaTxData: .init(
          recentBlockhash: "",
          lastValidBlockHeight: 0,
          feePayer: "6WRQXT2wMAkSjTjGQSqfEnuqgnqskTp5FnT28tScDsAd",
          toWalletAddress: "FoVyVfWMwoK7QgS4fcULpPSdLEp2PB5aj5ATs8VhPEv2",
          splTokenMintAddress: "",
          lamports: UInt64(100000000),
          amount: UInt64(0),
          txType: .solanaSystemTransfer,
          instructions: [.init()],
          send: nil,
          signTransactionParam: nil
        )
      ),
      txStatus: .confirmed,
      txType: .solanaSystemTransfer,
      txParams: [],
      txArgs: [],
      createdTime: Date(timeIntervalSince1970: 1636399671),
      submittedTime: Date(timeIntervalSince1970: 1636399673),
      confirmedTime: Date(timeIntervalSince1970: 1636402508),
      originInfo: .init(),
      groupId: nil
    )
  }
  /// Solana Token Transfer
  static var previewConfirmedSolTokenTransfer: BraveWallet.TransactionInfo {
    BraveWallet.TransactionInfo(
      id: "3d3c7715-f5f2-4f70-ab97-7fb8d3b2a3cd",
      fromAddress: "6WRQXT2wMAkSjTjGQSqfEnuqgnqskTp5FnT28tScDsAd",
      txHash: "",
      txDataUnion: .init(
        solanaTxData: .init(
          recentBlockhash: "",
          lastValidBlockHeight: 0,
          feePayer: "6WRQXT2wMAkSjTjGQSqfEnuqgnqskTp5FnT28tScDsAd",
          toWalletAddress: "FoVyVfWMwoK7QgS4fcULpPSdLEp2PB5aj5ATs8VhPEv2",
          splTokenMintAddress: "0x1111111111222222222233333333334444444444",
          lamports: UInt64(0),
          amount: UInt64(100000000),
          txType: .solanaSplTokenTransfer,
          instructions: [.init()],
          send: nil,
          signTransactionParam: nil
        )
      ),
      txStatus: .confirmed,
      txType: .solanaSplTokenTransfer,
      txParams: [],
      txArgs: [],
      createdTime: Date(timeIntervalSince1970: 1636399671),
      submittedTime: Date(timeIntervalSince1970: 1636399673),
      confirmedTime: Date(timeIntervalSince1970: 1636402508),
      originInfo: .init(),
      groupId: nil
    )
  }
  static private func _transactionBase64ToData(_ base64String: String) -> [NSNumber] {
    guard let data = Data(base64Encoded: base64String) else { return [] }
    return Array(data).map(NSNumber.init(value:))
  }
}

extension TransactionSummary {
  
  static var previewConfirmedSend = previewSummary(from: .previewConfirmedSend)
  static var previewConfirmedSwap = previewSummary(from: .previewConfirmedSwap)
  static var previewConfirmedERC20Approve = previewSummary(from: .previewConfirmedERC20Approve)
  
  static func previewSummary(from txInfo: BraveWallet.TransactionInfo) -> Self {
    TransactionParser.transactionSummary(
      from: txInfo,
      network: .mockMainnet,
      accountInfos: [.previewAccount],
      visibleTokens: [.previewToken, .previewDaiToken],
      allTokens: [],
      assetRatios: [BraveWallet.BlockchainToken.previewToken.assetRatioId.lowercased(): 1],
      solEstimatedTxFee: nil,
      currencyFormatter: .usdCurrencyFormatter
    )
  }
}
#endif
