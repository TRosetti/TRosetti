//
//  LocationSearchView.swift
//  UberSwiftUiTutorial
//
//  Created by Thiago Rosetti Miranda on 12/8/22.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        VStack{
            // Header View
            HStack{
                VStack {
                    VStack{
                        Circle()
                            .fill(Color(.systemGray3))
                            .frame(width: 6, height: 6)
                        Rectangle()
                            .fill(Color(.systemGray3))
                            .frame(width: 1, height: 24)
                        Rectangle()
                            .fill(Color(.black))
                            .frame(width: 6, height: 6)
                    }
                }
                VStack{
                    TextField("Current Location" ,text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    TextField("Where to?" ,text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            Divider()
                .padding(.vertical)
            // List View
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(viewModel.results, id: \.self){ result in 
                        LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                            .onTapGesture {
                                withAnimation(.spring()){
                                    viewModel.selectLocation(result)
                                    mapState = .locationSelected 
                                }
                                
                            }
                    }
                }
            }
        }
        .background(Color.theme.backgroungColor)
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView( mapState: .constant(.searchingForLocation))
    }
}
