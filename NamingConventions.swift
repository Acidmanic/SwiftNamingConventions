//
//  NamingConventions.swift
//  ICP.UI.IOS
//
//  Created by Mani Moayedi on 7/17/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//

import Foundation

class NamingConventions{
    private init(){}
    
    static let CamelCase=NamingConvention(starter: "", firstParticle: ParticleCase.Lower, otherParticles: ParticleCase.Pretty, separator: "")
    
    static let PascallCase=NamingConvention(starter: "", firstParticle: ParticleCase.Pretty, otherParticles: ParticleCase.Pretty, separator: "")
    
    static let SnakeCase=NamingConvention(starter: "", firstParticle: ParticleCase.Lower, otherParticles: ParticleCase.Lower, separator: "-")
    
    static let JavaConstantCase=NamingConvention(starter: "", firstParticle: ParticleCase.Upper, otherParticles: ParticleCase.Upper, separator: "_")
    
    static let MSInternalCase=NamingConvention(starter: "_", firstParticle: ParticleCase.Lower, otherParticles: ParticleCase.Pretty, separator: "")
    
    static let All = [NamingConventions.CamelCase,
                     NamingConventions.PascallCase,
                     NamingConventions.SnakeCase,
                     NamingConventions.JavaConstantCase,
                     NamingConventions.MSInternalCase]
}
