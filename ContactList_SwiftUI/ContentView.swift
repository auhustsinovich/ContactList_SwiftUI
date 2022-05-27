//
//  ContentView.swift
//  ContactList_SwiftUI
//
//  Created by Daniil Auhustsinovich on 27.05.22.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getContactList()
    var body: some View {
        TabView {
            ContactsView(contactList: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                    
                }
            PhoneNumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
