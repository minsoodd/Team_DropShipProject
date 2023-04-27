package com.java.home.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.java.home.service.NaverTransService;


@RestController 	// jsp를 반환하는게 아님 (ajax용도)
public class TranslateController {
	
	@PostMapping("/ai/translate")
	public String translate(String koreanInput) throws ParseException {
		NaverTransService papago = new NaverTransService(); 
		String result = papago.getTransSentence(koreanInput);
		
		// api 통해서 받아온 결과가 json'모양'의 String임. 
		// 그래서 .parser 메소드를 이용하여 json 형식으로 바꾼 후 .get메소드로 가져와야 함.
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(result);
		JSONObject message = (JSONObject) json.get("message");
		JSONObject resultObj = (JSONObject) message.get("result");
		String englishOutput = (String) resultObj.get("translatedText");
	    
	    return englishOutput;
	}
}// TranslateController
