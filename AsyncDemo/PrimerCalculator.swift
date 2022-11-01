// Created by Prof. H in 2022
// Part of the AsyncDemo project
// Using Swift 5.0
// Qapla'

import Foundation

struct PrimeCalculator {
  
  // MARK: Calculating Primes
  // These methods are just so we can spend a lot of time tying up the interface
  func isPrime(number: Int) -> Bool {
    if number <= 1 {
      return false
    }
    if number <= 3 {
      return true
    }
    var i = 2
    while i * i <= number {
      if number % i == 0 {
        return false
      }
      i = i + 2
    }
    return true
  }

  func calculatePrimes() {
    for number in 0...1_000_000 {
      let isPrimeNumber = isPrime(number: number)
      print("\(number) is prime: \(isPrimeNumber)")
    }
  }
  
  func calculatePrimesAsync() async {
    // 1000 vs 100_000 vs 100_000_000
    for number in 0...1_000_000 {
      let isPrimeNumber = isPrime(number: number)
      print("\(number) is prime: \(isPrimeNumber)")
    }
  }
  
  func calculatePrimesQuick() {
    // Only 100_000 vs 1_000_000
    for number in 0...100_000 {
      let isPrimeNumber = isPrime(number: number)
      print("\(number) is prime: \(isPrimeNumber)")
    }
  }
  
}


