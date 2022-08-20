//
//  StudentDetailsModel.swift
//  studentInfo
//
//  Created by عبدالرحمن العامري on 17/08/2022.
//

import Foundation
import SwiftUI

struct StudentDetailsModel: Identifiable
{
    let id = UUID()
    var fullName: String
    var Year: String
    var Age: Int
}

var Jamal = StudentDetailsModel(fullName: "Ahmed", Year: "2003", Age: 19)
var Mahdi = StudentDetailsModel(fullName: "Abdullah", Year: "2004", Age: 18)
var Abdulrahman = StudentDetailsModel(fullName: "Abdulrahman", Year: "2005", Age: 16)
var hassan = StudentDetailsModel(fullName: "Hassan", Year: "2008", Age: 14)
var students =  [Jamal, Mahdi, Abdulrahman, hassan]
