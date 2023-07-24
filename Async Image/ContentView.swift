//
//  ContentView.swift
//  Async Image
//
//  Created by Salih Yusuf Göktaş on 24.07.2023.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		
		NavigationView {
			VStack {
								
				AsyncImage(url: URL(string: "https://4kwallpapers.com/images/wallpapers/the-batman-2022-movies-dc-comics-red-background-7680x4320-6775.jpg")!) { image in
					image.resizable().frame(width: 300, height: 275, alignment: .center)
				} placeholder: {
					ProgressView()
				}
				 
				
				
				List(superHeroArray) { superhero in
					Text(superhero.name)
						.font(.title3)
						.foregroundColor(.blue)
				}
			}.navigationTitle(Text("Superhero Book"))
				
					 
		}

		}
	
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
