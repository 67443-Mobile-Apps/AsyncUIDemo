// Created by Prof. H in 2022
// Part of the AsyncDemo project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct ContentView: View {
  
  let calculator = PrimeCalculator()
  
  var body: some View {
    VStack {
      Spacer()
      // this date picker isn't connected to anything; just here to show (or not) a frozen UI
      DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Choose Date") })
      Spacer()
      
      // now a button with a method that will take some time
      Button("Calculate Primes") {
        // calculator.calculatePrimes()
        Task {
          await calculator.calculatePrimesAsync()
        }
        // calculator.calculatePrimesQuick()
      }
      Spacer()
        
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
