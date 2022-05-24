//
//  Superhero.swift
//  HeroWidget
//
//  Created by Melih Yuvacı on 22.05.2022.
//
  
import Foundation

struct Superhero : Identifiable,Codable {
    
    var id: String{image}
    let image : String
    let name : String
    let realName : String
    
}

let superman = Superhero(image: "superman", name: "Superman", realName: "Clark Kent")

let batman = Superhero (image: "batman", name: "Batman", realName: "Bruce Wayne")

let ironman = Superhero (image: "ironman", name: "Iron Man", realName: "Tony Stark")
