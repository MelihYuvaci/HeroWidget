//
//  ContentView.swift
//  HeroWidget
//
//  Created by Melih Yuvacı on 22.05.2022.
//

import SwiftUI
import WidgetKit

let superHeroArray = [superman,batman,ironman]

struct ContentView: View {
    
    @AppStorage ("hero",store: UserDefaults(suiteName: "group.com.melihyuvaci.HeroWidget"))
    var heroData: Data = Data()
    
    
    var body: some View {
        VStack{
            ForEach(superHeroArray){hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                    
                }
            }
        }
    }
    
    func saveToDefaults (hero: Superhero){
       // print(hero.name)
        if let heroData = try? JSONEncoder().encode(hero){
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
