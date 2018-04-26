//
//  ChannelConfirmModels.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-25.
//  Copyright (c) 2018 BiscottiGelato. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ChannelConfirm {
  
  enum RefreshAll {
    struct Request {
    }
    struct Response<C: Currency> {
      // Data Store Values
      var nodePubKey: String
      var nodeIP: String
      var nodePort: Int
      var fundingAmt: Bitcoin
      var initPayAmt: Bitcoin
      var confSpeed: OnChainConfirmSpeed
      
      // Calculated Values
      var fiatFundingAmt: Money<C>
      var fiatInitPayAmt: Money<C>
      var canPayAmt: Bitcoin
      var canRcvAmt: Bitcoin
      var fiatCanPayAmt: Money<C>
      var fiatCanRcvAmt: Money<C>
      var feeAmt: Bitcoin
      var fiatFeeAmt: Money<C>
    }
    struct ViewModel {
      var fundingAmt: String
      var refFundingAmt: String
      var nodePubKey: String
      var nodeIP: String
      var nodePort: String
      var initPayAmt: String
      var refInitPayAmt: String
      var confSpeed: String
      var canPayAmt: String
      var canRcvAmt: String
      var fee: String
    }
    struct ErrorVM {
      var errTitle: String
      var errMsg: String
    }
  }
  
  enum OpenChannel {
    struct Request {
      // Use Data Store values
    }
    struct Response {
      var result: Result<Void>
    }
    struct ErrorVM {
      var errTitle: String
      var errMsg: String
    }
  }
}
