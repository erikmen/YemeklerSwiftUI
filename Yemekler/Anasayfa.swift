//
//  ContentView.swift
//  Yemekler
//
//  Created by Kaan Deniz Erikmen on 17.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var yemeklerListesi = [Yemekler]()
    var body: some View {
        
        NavigationStack{
            List{
                ForEach(yemeklerListesi){yemek in
                    NavigationLink(destination: DetaySayfasi(yemek: yemek)){
                        YemekSatir(yemek: yemek)
                    }
                }
            }.navigationTitle("Yemekler")
                .onAppear{
                    var liste = [Yemekler]()
                    let y1 = Yemekler(yemek_id: 1, yemek_adi: "Ayran", yemek_resim_adi: "ayran", yemek_fiyat: 70)
                    let y2 = Yemekler(yemek_id: 2, yemek_adi: "Baklava", yemek_resim_adi: "baklava", yemek_fiyat: 10)
                    let y3 = Yemekler(yemek_id: 3, yemek_adi: "Fanta", yemek_resim_adi: "fanta", yemek_fiyat: 50)
                    let y4 = Yemekler(yemek_id: 4, yemek_adi: "Kadayıf", yemek_resim_adi: "kadayif", yemek_fiyat: 60)
                    let y5 = Yemekler(yemek_id: 5, yemek_adi: "Kofte", yemek_resim_adi: "kofte", yemek_fiyat: 55)
                    let y6 = Yemekler(yemek_id: 6, yemek_adi: "Makarna", yemek_resim_adi: "makarna", yemek_fiyat: 90)
                    liste.append(y1)
                    liste.append(y2)
                    liste.append(y3)
                    liste.append(y4)
                    liste.append(y5)
                    liste.append(y6)
                    
                    yemeklerListesi = liste
                    
                }
        }
    }
}

#Preview {
    Anasayfa()
}
