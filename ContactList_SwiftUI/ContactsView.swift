//
//  ContactsView.swift
//  ContactList_SwiftUI
//
//  Created by Daniil Auhustsinovich on 27.05.22.
//

import SwiftUI

struct ContactsView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                NavigationLink(destination: AdditionalInfoView(contact: contact)) {
                    Text(contact.fullname)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContactList())
    }
}
