//
//  Storyboard+instantiate.swift
//  ExtensionKit
//
//  Created by Кирилл on 12.01.2022.
//

import Rswift

extension StoryboardResourceWithInitialControllerType {
    
    @available(iOS 13.0, tvOS 13.0, *)
    func instantiateInitialViewController<ViewController: UIViewController>(_ creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController! {
        UIStoryboard(resource: self).instantiateInitialViewController(creator: creator)
    }
    
    @available(iOS 13.0, tvOS 13.0, *)
    public func instantiateViewController<ViewController: UIViewController>(identifier: String, creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController {
        UIStoryboard(resource: self).instantiateViewController(identifier: identifier, creator: creator)
    }
    
}
