//
//  HomeView.swift
//  DeliverflyVardanSofanyan
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var navigation: Navigation
    let list: [Restaurant] = .restaurants
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                HStack {
                    Button {
                    } label: {
                        Image(.history)
                            .padding()
                            .background(.lightGray)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading) {
                        Text("DELIVER TO")
                            .font(.caption)
                            .bold()
                            .foregroundStyle(.darkOrange)
                        Text("16 Halabyan St, Yerevan  0038")
                            .font(.footnote)
                            .foregroundStyle(.darkGray)
                        
                    }
                    .padding()
                }
                Text("Restaurants")
                    .font(.title3)
                    .padding(.vertical)
                ForEach(list, id: \.self) { restaurant in
                    Button(action: {
                        navigation.goTo(view: .restaurant(info: restaurant))
                    }, label: {
                        RestaurantPreview(restaurant: restaurant)
                    }
                           
                    )
                }
            }
                }
                .padding(.horizontal)
                .scrollIndicators(.hidden)
            }
        }
        
#Preview {
            HomeView()
        }
    
    

