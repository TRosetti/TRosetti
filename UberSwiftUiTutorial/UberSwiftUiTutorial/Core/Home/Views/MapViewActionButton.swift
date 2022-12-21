//
//  MapViewActionButton.swift
//  UberSwiftUiTutorial
//
//  Created by Thiago Rosetti Miranda on 12/8/22.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    var body: some View {
        Button {
            withAnimation(.spring()){
                actionForState(mapState)
            }
        } label: {
            Image(systemName: imageNameForState(mapState))
            // showLocationSearchView ? "arrow.left" : "line.3.horizontal"
            // significa, se estiver mostrando essa view(showLocationSearchView) a imagem vai ser essa ("arrow.left") , caso contrario a imagem é essa ("line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
            }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    func actionForState(_ state: MapViewState){
        switch state {
        case .noInput:
            print("DEBUG: No Input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected, .polylineAdded:
            mapState = .noInput
            viewModel.selectedUberLocation = nil
        }
        
    }
    func imageNameForState(_ state: MapViewState) -> String{
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected , .polylineAdded:
            return "arrow.left"
        default:
            return "line.3.horizontal"
        }
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(mapState: .constant(.noInput))
    }
}
