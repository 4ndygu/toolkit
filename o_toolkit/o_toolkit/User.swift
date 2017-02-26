//
//  User.swift
//  o_toolkit
//
//  Created by Student on 2/25/17.
//  Copyright © 2017 wow. All rights reserved.
//

import Foundation
import FirebaseDatabase

class User
{
    var ref: FIRDatabaseReference! = FIRDatabase.database().reference()
    var user_id:Int
    var username:String
    var pw_hash:String
    var email:String
    var following:[String]
    var admin_groups:[Int]
    var banned:Int

    init()
    {
        print("hello")
        
        // Generate a reference to a new location and add some data using push()
        //var newPostRef = ref.push([ "author": "gracehop", "title": "Announcing COBOL, a New Programming Language"]);
        // Get the unique ID generated by push() by accessing its key
        //var postID = newPostRef.key;
        //print(postID);
        
        user_id = 1;
        username = "he"
        pw_hash = "aef"
        email = "eaf"
        following = ["sup", "bro"]
        admin_groups = [1, 3, 2, 7]
        banned = 0
    }
    
}
