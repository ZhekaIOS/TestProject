//
//  tableVC.swift
//  TestWork
//
//  Created by Евгений Ковалевский on 10.02.2018.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

//tekst for getTextButton
var tekst = ""


class parseVC: NSObject {
	
	func getText() {
    // Fetch Request (Создал сам текст с помощью джсон-генератора, ибо по ключу тест не тянется, я пробовал curl, ссылку сайта, приложение и тд. API не имеет текст и выдает ошибку при запросе, точнее он не проверяет ключ буд-то вообще) 
		Alamofire.request("http://www.json-generator.com/api/json/get/bUeftTvXpK?indent=2", method: .get)
			.validate(statusCode: 200..<300)
			.responseJSON { response in
				if (response.result.error == nil) {
					do {
						let json = try JSON(data: response.data!)
						let condition = json["tekst"]["testTeksForWork"].string
                        tekst = condition!
						print( condition!)

					}
					catch {
						print("error 404")
					}
				}
		}

	}
}


