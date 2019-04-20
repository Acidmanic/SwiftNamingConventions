//
//  NamingConvension.swift
//
//  Created by Mani Moayedi on 7/17/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//

import Foundation

public enum ParticleCase{
    case Lower
    case Upper
    case Pretty
}


public class NamingConvention{
    
    var starter:String!=""
    var firstParticleCase:ParticleCase=ParticleCase.Lower
    var otherParticlesCase:ParticleCase=ParticleCase.Pretty
    var separator:String!=""
    
    
    init() {    }
    
    init(starter:String,firstParticle:ParticleCase,otherParticles:ParticleCase,separator:String) {
        self.starter=starter
        self.firstParticleCase = firstParticle
        self.otherParticlesCase = otherParticles
        self.separator = separator
    }
}





