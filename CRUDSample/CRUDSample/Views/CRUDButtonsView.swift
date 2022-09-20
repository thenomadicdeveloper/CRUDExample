//
//  CRUDButtonsView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import SwiftUI

struct CRUDButtonsView: View {
    @State var createActive: Bool = false
    @State var readActive: Bool = false
    @State var updateActive: Bool = false
    @State var deleteActive: Bool = false
    var body: some View {
        VStack(spacing: 15) {
            Button("Create") { createActive.toggle()
            }
            Button("Read") {
                readActive.toggle()
            }
            Button("Update") {
                updateActive.toggle()
            }
            Button("Delete") {
                deleteActive.toggle()
            }
            
            NavigationLink(
                "", destination: CreateView(), isActive: $createActive )
            NavigationLink(
                "", destination: ReadView(), isActive: $readActive )
            NavigationLink(
                "", destination: UpdateView(), isActive: $updateActive )
            NavigationLink(
                "", destination: DeleteView(), isActive: $deleteActive )
        }.padding()
    }
}

struct CRUDButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        CRUDButtonsView()
    }
}
