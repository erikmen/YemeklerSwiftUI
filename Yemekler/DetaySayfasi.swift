//
//  DetaySayfasi.swift
//  Yemekler
//
//  Created by Kaan Deniz Erikmen on 17.10.2023.
//

import SwiftUI

struct DetaySayfasi: View {
    var yemek = Yemekler()
    var body: some View {
        VStack(spacing:100){
            Image(yemek.yemek_resim_adi!)
            
            Text("\(yemek.yemek_fiyat!) ₺")
                .font(.system(size: 50))
                .foregroundColor(.blue)
            
            Button("Sipariş Ver"){
                print("\(yemek.yemek_adi!) sipariş verildi")
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(.blue)
            .cornerRadius(10)
            
        }.navigationTitle(yemek.yemek_adi!)
    }
}

#Preview {
    DetaySayfasi()
}

