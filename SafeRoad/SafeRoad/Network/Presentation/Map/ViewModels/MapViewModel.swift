//
//  MapViewModel.swift
//  SafeLoad
//
//  Created by 천성우 on 4/8/24.
//

import UIKit

import RxCocoa
import RxSwift

protocol MapViewModelInput {
}

protocol MapViewModelOutput {
    
}

protocol MapViewModelType {
    var inputs: MapViewModelInput { get }
    var outputs: MapViewModelOutput { get }
}

final class MapViewModel: MapViewModelInput, MapViewModelOutput, MapViewModelType {
    
    var inputs: MapViewModelInput { return self }
    var outputs: MapViewModelOutput { return self }
    
    init() {}
}
