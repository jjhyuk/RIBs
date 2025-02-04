//
//  LoggedOutRouter.swift
//  TicTacToe
//
//  Created by Denver on 2022/03/30.
//  Copyright © 2022 Uber. All rights reserved.
//

import RIBs

protocol LoggedOutInteractable: Interactable {
  var router: LoggedOutRouting? { get set }
  var listener: LoggedOutListener? { get set }
}

protocol LoggedOutViewControllable: ViewControllable {
  // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class LoggedOutRouter: ViewableRouter<LoggedOutInteractable, LoggedOutViewControllable>, LoggedOutRouting {
  
  // TODO: Constructor inject child builder protocols to allow building children.
  override init(interactor: LoggedOutInteractable, viewController: LoggedOutViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
