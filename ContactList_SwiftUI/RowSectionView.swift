//
//  RowSectionView.swift
//  ContactList_SwiftUI
//
//  Created by Daniil Auhustsinovich on 27.05.22.
//

import SwiftUI

struct RowSectionView: View {
    
    let icon: String
    let info: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text(info)
        }
    }
}

struct RowSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RowSectionView(
            icon: "phone",
            info: Person.getContactList().randomElement()!.email
        )
    }
}
