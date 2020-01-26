//
//  NamingConventions.swift
//  ICP.UI.IOS
//
//  Created by Mani Moayedi on 7/17/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//

import Foundation

public class NamingConventions {
    private init() {}
    
    public static let CamelCase=NamingConvention(starter: "",
                                                firstParticle: ParticleCase.Lower, 
                                                otherParticles: ParticleCase.Pretty, 
                                                separator: "")
    
    public static let PascallCase=NamingConvention(starter: "",
                                                firstParticle: ParticleCase.Pretty, 
                                                otherParticles: ParticleCase.Pretty, 
                                                separator: "")
    
    public static let SnakeCase=NamingConvention(starter: "",
                                                firstParticle: ParticleCase.Lower, 
                                                otherParticles: ParticleCase.Lower, 
                                                separator: "_")
    
    public static let KebabCase=NamingConvention(starter: "",
                                                firstParticle: ParticleCase.Lower, 
                                                otherParticles: ParticleCase.Lower, 
                                                separator: "_")
    
    public static let JavaConstantCase=NamingConvention(starter: "",
                                                        firstParticle: ParticleCase.Upper, 
                                                        otherParticles: ParticleCase.Upper, 
                                                        separator: "_")
    
    public static let MSInternalCase=NamingConvention(starter: "_",
                                                    firstParticle: ParticleCase.Lower, 
                                                    otherParticles: ParticleCase.Pretty, 
                                                    separator: "")
    
    public static let All = [NamingConventions.CamelCase,
                     NamingConventions.PascallCase,
                     NamingConventions.SnakeCase,
                     NamingConventions.KebabCase,
                     NamingConventions.JavaConstantCase,
                     NamingConventions.MSInternalCase]
}