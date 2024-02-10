//
//  HomeView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct HomeView: View {
    
    @State var query: String = ""
    // @FocusState var queryBoxFocused: Bool
    var body: some View {
        VStack {
            HStack{
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
                // .focused($queryBoxFocused)
                Button {
                    // Action
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .frame(height: 32)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                }
            }.padding(.horizontal)
            
            //Recommended For You, use listing carousel in future
            ScrollView(.vertical, showsIndicators: false) {
                Image("welcome-banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack(spacing: 15) {
                    VStack() {
                        HStack() {
                            Text("Recommended For You")
                                .bold()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ListingItem(listingImage: "p0", listingTitle: "Nike Men's White and Blue Hoodie", listingPrice: 25.00, listingSeller: "juhayedun")
                                ListingItem(listingImage: "p1", listingTitle: "Marvel's Men's White T-Shirt", listingPrice: 15.00, listingSeller: "avaispiderman")
                                ListingItem(listingImage: "p6", listingTitle: "Tommy Hilfiger Men's Jacket", listingPrice: 56.00, listingSeller: "JohnDoe")
                                ListingItem(listingImage: "p2", listingTitle: "Vans Men's Black Trainers", listingPrice: 27.50, listingSeller: "rocketjb02")
                                ListingItem(listingImage: "p3", listingTitle: "Blue jean jacket with side pockets", listingPrice: 15.00, listingSeller: "thriftinghands")
                                ListingItem(listingImage: "p4", listingTitle: "Dickies Men's Black Trousers", listingPrice: 22.0, listingSeller: "viasoul")
                                ListingItem(listingImage: "p5", listingTitle: "Dickie's Men's Grey Black Shirt", listingPrice: 12.00, listingSeller: "sblukiee")
                            }
                        }
                    }.padding(.leading)
                    
                    
                    // Your Favourites ListingCarousel
                    VStack() {
                        HStack() {
                            Text("Your Favourites")
                                .bold()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ListingItem(listingImage: "p7", listingTitle: "Adidas Men's Green Trainers", listingPrice: 55.00, listingSeller: "al3jandro")
                                ListingItem(listingImage: "p8", listingTitle: "Nike Men's Purple Jacket", listingPrice: 32.50, listingSeller: "jackk2wackk")
                                ListingItem(listingImage: "p9", listingTitle: "Adidas Men's Navy Joggers", listingPrice: 24.00, listingSeller: "roloovintage")
                                ListingItem(listingImage: "p10", listingTitle: "Men's Black Cream Beanie", listingPrice: 10.00, listingSeller: "saint_4")
                            }
                        }
                    }.padding(.leading)
                    
                    

                    CategoryCarousel()
                    BrandCarousel()
                    
                    // Other Listings
                    VStack() {
                        HStack() {
                            Text("Other Listings")
                                .bold()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ListingItem(listingImage: "p11", listingTitle: "Vintage Berrini Cat Tote Bag", listingPrice: 12.00, listingSeller: "untruereligion")
                                ListingItem(listingImage: "p12", listingTitle: "Cabela's Women's Tan Shorts", listingPrice: 16.00, listingSeller: "devianJoe")
                                ListingItem(listingImage: "p13", listingTitle: "Jerzees Men's Sweatshirt", listingPrice: 18.00, listingSeller: "damevintage")
                                ListingItem(listingImage: "p14", listingTitle: "Adidas Women's Pink Hoodie", listingPrice: 16.50, listingSeller: "jessiewhite")
                                ListingItem(listingImage: "p15", listingTitle: "Adidas Women's Blue and White Trainers", listingPrice: 50.00, listingSeller: "anapia")
                                ListingItem(listingImage: "p16", listingTitle: "Nike Men's Red Joggers", listingPrice: 25.00, listingSeller: "dxlcev")
                                ListingItem(listingImage: "p17", listingTitle: "Men's Black and White T-shirt", listingPrice: 12.75, listingSeller: "vividvintagep17")
                            }
                        }
                    }.padding(.leading)
                    
                    VStack() {
                        HStack() {
                            Text("Your Listings")
                                .bold()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ListingItem(listingImage: "p18", listingTitle: "Men's Corvette Sweatshirt ", listingPrice: 18.50, listingSeller: "Azar")
                                ListingItem(listingImage: "p19", listingTitle: "California Forest Tee", listingPrice: 12.00, listingSeller: "Azar")
                            }
                        }
                    }.padding(.leading)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
