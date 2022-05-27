//
//  PhoneNumbersView.swift
//  ContactList_SwiftUI
//
//  Created by Daniil Auhustsinovich on 27.05.22.
//

import SwiftUI

struct PhoneNumbersView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullname)) {
                        RowSectionView(icon: "phone", info: contact.phoneNumber)
                        RowSectionView(icon: "tray", info: contact.email)
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct PhoneNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumbersView(contacts: Person.getContactList())
    }
}
