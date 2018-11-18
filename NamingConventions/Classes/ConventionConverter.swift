//
//  ConventionConventer.swift
//  ICP.UI.IOS
//
//  Created by Mani Moayedi on 7/17/18.
//  Copyright © 2018 Mani Moayedi. All rights reserved.
//

import Foundation

private extension String{
    
    func splitByCaseChange()->[String]{
        var ret:[String] = [""]
        var index = 0
        let uppers = CharacterSet.uppercaseLetters
        var firstChar = true
        for scaler in self.unicodeScalars{
            if uppers.contains(scaler) && !firstChar{
                ret.append("")
                index = index + 1
            }
            let char = Character(scaler)
            ret[index].append(char)
            firstChar = false
        }
        return ret
    }
    
    func capitalizingFirstLetter() -> String {
        let first = String(self.prefix(1)).capitalized
        let other = String(self.suffix(self.count-1))
        return first + other
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

class ConventionConverter{
    
    
    
    private func hasValue(string:String!)->Bool{
        return string != nil && string.count > 0
    }
    
    
    private func getNameByPrettyCase(nameString:String,convention:NamingConvention)->Name!{
        if convention.otherParticlesCase == ParticleCase.Pretty {
            let ret = Name()
            ret.particles = nameString.splitByCaseChange()
            return ret
        }
        return nil
    }
    
    
    func getName(nameString:String,convention:NamingConvention)->Name!{
        var name = nameString
        if hasValue(string: convention.starter){
            name = String(name.suffix(convention.starter.count))
        }
        if hasValue(string: convention.separator) {
            let ret = Name()
            ret.particles = nameString.components(separatedBy: convention.separator)
            return ret
        }
        return getNameByPrettyCase(nameString:name,convention: convention)
    }
    
    func getName(nameString:String)->Name{
        var resultConventions:[NamingConvention]=[]
        var resultNames:[Name]=[]
        for convention in NamingConventions.All {
            let name = getName(nameString: nameString,convention:convention)
            if let unwraped = name {
                resultConventions.append(convention)
                resultNames.append(unwraped)
            }
        }
        for name in resultNames{
            if name.particles.count > 1 {
                return name
            }
        }
        return getSingleParticledName(nameString:nameString)
    }
    
    
    private func getSingleParticledName(nameString:String)->Name{
        let ret = Name()
        ret.particles = [nameString]
        return ret
    }
    
    
    
    func getString(of:Name,by:NamingConvention)->String{
        var ret = ""
        if hasValue(string: by.starter){
            ret.append(by.starter)
        }
        if of.particles.count > 0 {
            ret.append(reCase(particle:of.particles[0],pcase:by.firstParticleCase))
            let sep = (hasValue(string: by.separator) ? by.separator : "")!
            for i in 1..<of.particles.count {
                ret.append(sep)
                ret.append(reCase(particle:of.particles[i],pcase:by.otherParticlesCase))
            }
        }
        return ret
    }
    
    
    private func reCase(particle:String,pcase:ParticleCase)->String{
        if pcase == ParticleCase.Lower {
            return particle.lowercased()
        }
        if pcase == ParticleCase.Upper {
            return particle.uppercased()
        }
        if  pcase == ParticleCase.Pretty {
            return particle.capitalizingFirstLetter()
        }
        
        return particle
    }
    
    public func autoConvert(from:String,to:NamingConvention)->String{
        let name = getName(nameString: from)
        return getString(of: name, by: to)
    }
}
