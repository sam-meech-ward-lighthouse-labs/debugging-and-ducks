//
//  ViewController.swift
//  RubberDuck
//
//  Created by Sam Meech-Ward on 2019-06-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  var duck: String?
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


  var maps = [MKMapView]()
  @IBAction func quack(_ sender: Any) {
    
    if let duck = duck {
      label.text = duck
    } else {
      label.text = "💩"
    }
    
    for _ in 0...1000 {
      let map = MKMapView()
      maps.append(map)
    }
    
    do {
      _ = try fly()
    } catch {
      print(error)
    }
    
  }
  
  enum DuckError: Error {
    case injuredWing
  }
  
  
  func fly() throws -> Bool {
    
    try doSomething()
    if duck == "rubber" {
      return false
    }
    return true
  }
  
  func doSomething() throws {
    try doSomethingElse()
  }
  
  func doSomethingElse() throws {
    throw DuckError.injuredWing
  }
  
}

