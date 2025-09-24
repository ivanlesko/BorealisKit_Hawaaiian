//
//  ContentView.swift
//  Hawaaiian
//
//  Created by IvanL on 9/18/25.
//

import SwiftUI
import BorealisKit

struct ContentView: View {
    @State private var selectedTheme = BorealisTheme.hawaaiian
    @State private var buttonType: PrimaryButton.ButtonType = .primary
    @State private var isFullWidthCTA = true
    
    @State private var overlayOpacity: Double = 0.7
    
    var body: some View {
        VStack(spacing: 32) {
            // Card preview
            Card(
                imageURL: URL(string: "https://images.contentstack.io/v3/assets/blt2cefe12c88e9dd91/blte809e81b0efe6db8/66d0ad9723cce70a04d5f656/honolulu.webp?width=800&format=webp&crop=4:3&quality=50"),
                title: "Explore Honolulu’s Island Bliss",
                subtitle: "Lets go on a small adventure",
                paragraph: "Immerse yourself in Honolulu’s stunning beaches, rich Hawaiian culture, and breathtaking natural beauty for an unforgettable island adventure. 🌺",
                ctaTitle: "Visit Honolulu",
                ctaAction: { print("CTA tapped") },
                theme: selectedTheme.theme,
                buttonType: buttonType,
                isFullWidthCTA: isFullWidthCTA
            )
            .fixedSize(horizontal: false, vertical: true)
            
            FeatureBanner(headline: "Adventure awaits",
                          description: "Golden beaches, lush rainforests, and vibrant marine life await you on your next island adventure.",
                          theme: selectedTheme.theme,
                          backgroundImageURL: "https://images.unsplash.com/photo-1505852679233-d9fd70aff56d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          backgroundOverlay: Color.white.opacity(overlayOpacity),
                          imageShape: .circle,
                          imageURL: "https://images.unsplash.com/photo-1586996292898-71f4036c4e07?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          ctaType: .primary,
                          ctaTitle: "Plan your trip",
                          ctaAction: {})
        }
        .padding()
        .frame(maxWidth: 420)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ContentView()
}
