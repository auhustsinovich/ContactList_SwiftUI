//
//  AdditionalInfoView.swift
//  ContactList_SwiftUI
//
//  Created by Daniil Auhustsinovich on 27.05.22.
//

import SwiftUI

struct AdditionalInfoView: View {
    
    let contact: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            
            RowSectionView(icon: "phone", info: contact.phoneNumber)
        }
        .navigationBarTitle(contact.fullname)
    }
}

struct AdditionalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalInfoView(contact: Person.getContactList().randomElement()!)
    }
}
