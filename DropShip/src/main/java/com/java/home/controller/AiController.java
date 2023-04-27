package com.java.home.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.admin.service.AdminService;
import com.java.home.service.MemberService;
import com.java.vo.ArtistVo;
import com.java.vo.MemberVo;
import com.java.vo.WorkVo;

import de.bsi.openai.FormInputDTO;
import de.bsi.openai.OpenAiApiClient;
import de.bsi.openai.OpenAiApiClient.OpenAiService;
import de.bsi.openai.chatgpt.ChatCompletionRequest;
import de.bsi.openai.chatgpt.ChatCompletionResponse;
import de.bsi.openai.chatgpt.Message;
import de.bsi.openai.dalle.GenerationRequest;
import de.bsi.openai.dalle.GenerationResponse;


@Controller
public class AiController {
   
   @Autowired
   HttpSession session;
   
   @Autowired
   MemberService memberService;
   
   @Autowired
   AdminService adminService;
   
   @Autowired
   MemberVo memberVo;
   
   @Autowired
   ArtistVo artistVo;
   
   @Autowired
   WorkVo workVo;
   
   //--------------↓↓↓---------- ChatGPT DALL-E(그림그려주는) 관련 ----------↓↓↓-------------------//
   private String drawImageWithDallE(String prompt) throws Exception {
       GenerationRequest generation = GenerationRequest.defaultWith(prompt);
       String postBodyJson = jsonMapper.writeValueAsString(generation);
       String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.DALL_E);
       GenerationResponse completionResponse = jsonMapper.readValue(responseBody, GenerationResponse.class);
       return completionResponse.firstImageUrl().orElseThrow(() -> new RuntimeException("API로부터 이미지를 받아오지 못했습니다..."));
   }
   
   // 이미지 생성 페이지로 이동 
   @GetMapping("/ai/image_generate")
   public String paintImage(Model model) throws ParseException {
      return "home/ai/image_generate";
   }
   
   // 이미지 생성 실행
   @PostMapping("/ai/image_generate")
   public String drawImage(Model model, FormInputDTO dto, String generate_work_name, 
         String generate_work_content) throws Exception {
      
      String member_nName = (String) session.getAttribute("sessionMember_nName");

      // 이미지 생성에 필요한 것들   (필수)
      model.addAttribute("request", dto.getPrompt());
      model.addAttribute("imageUri", drawImageWithDallE(dto.getPrompt()));
      
      // 새로고침 할 때 그대로 보여지게
      session.setAttribute("imageUri", drawImageWithDallE(dto.getPrompt()));
      session.setAttribute("prompt", dto.getPrompt());
      session.setAttribute("generate_work_name", generate_work_name);
      session.setAttribute("generate_work_content", generate_work_content);
      session.setAttribute("member_nName", member_nName);
       
       return "redirect:image_generate_result2";
   }

   // 새로고침 할 때마다 그림 새로 생성방지하기 위해 똑같은 페이지를 결과용도로 하나 더 만듦
   @GetMapping("/ai/image_generate_result2")
   public String showImage(Model model) {
       return "home/ai/image_generate_result2";
   }
   
   
   // 생성된 이미지 작품으로 등록 ajax
   @PostMapping("/ai/register_ai_work")
   @ResponseBody
   public int register_ai_work(String work_img_url, @RequestParam(name = "generate_work_name") String work_name, 
         @RequestParam(name = "generate_work_content") String work_content, @RequestParam(name = "price") int work_price, 
         @RequestParam(name = "genre") String work_genre, @RequestParam(name = "subject") String work_subject,
         String member_nName) throws IOException {
      int successOrFail = adminService.registerAiWork(work_img_url, work_name, work_content, work_price, work_genre, work_subject, member_nName, session);
       return successOrFail;
   }

   

   //--------------↓↓↓---------- ChatGPT chat-completion 관련 ----------↓↓↓-------------------//
//   private static final String MAIN_PAGE = "chat_index";

   @Autowired
   private ObjectMapper jsonMapper;	// JSON 데이터를 처리하기 위한 ObjectMapper
   
   OpenAiApiClient client = new OpenAiApiClient();	// OpenAI API 클라이언트 생성
   
//      @Autowired
//      private OpenAiApiClient client;

//   private String chatWithGpt3(List<Message> messages) throws Exception {
//	   ChatCompletionRequest chatCompletion = ChatCompletionRequest.defaultWith(messages);	// OpenAI API 요청 객체 생성
//	   String postBodyJson = jsonMapper.writeValueAsString(chatCompletion);					// ChatCompletionRequest 객체를 JSON 문자열로 변환
//	   String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.GPT_3);		// OpenAI API로 요청을 보내고 응답을 받음
//	   ChatCompletionResponse chatCompletionResponse = jsonMapper.readValue(responseBody, ChatCompletionResponse.class);	// 받은 OpenAI API 응답을 ChatCompletionResponse 객체로 변환
//	   
//	   Optional<Message> assistantMessageOpt = chatCompletionResponse.getAssistantMessage();	// ChatCompletionResponse에서 assistantMessage를 가져옴
//	   if (assistantMessageOpt.isPresent()) {	// assistantMessage가 존재하는 경우
//		   Message assistantMessage = assistantMessageOpt.get();	// assistantMessage를 가져옴
//		   String role = assistantMessage.getRole();	// assistantMessage의 Role을 가져옴
//		   String content = assistantMessage.getContent();	// assistantMessage의 Content를 가져옴
////              System.out.println("Role: " + role);
////              System.out.println("Content: " + content);
//	   } else {
//		   throw new Exception("Error in communication with OpenAI ChatGPT API.");
//	   }
//	   return chatCompletionResponse.firstAnswer()	// ChatCompletionResponse에서 첫 번째 응답을 가져와 반환함
//			   .orElseThrow(() -> new Exception("Error in communication with OpenAI ChatGPT API."));	
//   }
    private String chatWithGpt3(List<Message> messages) throws Exception {
          ChatCompletionRequest chatCompletion = ChatCompletionRequest.defaultWith(messages);	// OpenAI API 요청 객체 생성
          String postBodyJson = jsonMapper.writeValueAsString(chatCompletion);					// ChatCompletionRequest 객체를 JSON 문자열로 변환
          String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.GPT_3);		// OpenAI API로 요청을 보내고 응답을 받음
          ChatCompletionResponse chatCompletionResponse = jsonMapper.readValue(responseBody, ChatCompletionResponse.class);	// 받은 OpenAI API 응답을 ChatCompletionResponse 객체로 변환

          Optional<Message> assistantMessageOpt = chatCompletionResponse.getAssistantMessage();	// ChatCompletionResponse에서 assistantMessage를 가져옴
          if (assistantMessageOpt.isPresent()) {	// assistantMessage가 존재하는 경우
              Message assistantMessage = assistantMessageOpt.get();	// assistantMessage를 가져옴
              String role = assistantMessage.getRole();	// assistantMessage의 Role을 가져옴
              String content = assistantMessage.getContent();	// assistantMessage의 Content를 가져옴
//              System.out.println("Role: " + role);
//              System.out.println("Content: " + content);
          } else {
              throw new Exception("Error in communication with OpenAI ChatGPT API.");
          }
           return chatCompletionResponse.firstAnswer()	// ChatCompletionResponse에서 첫 번째 응답을 가져와 반환함
                   .orElseThrow(() -> new Exception("Error in communication with OpenAI ChatGPT API."));	
   }

   @GetMapping("/ai/chat_index")
   public String chat_index() {
      return "home/ai/chat_index";
   }

   
   @PostMapping("/ai/chat_index")
//   @PostMapping(value = "/ai/chat_index", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE) // 생략가능
   @ResponseBody
   public ResponseEntity<Map<String, String>> chat_index(@RequestBody FormInputDTO dto) {	//ResponseEntity를 반환해주면 1.HTTP 상태 코드, 2.헤더 3.본문을 설정할 수 있어서 그냥 map을 전달해주는 거보다 좋음
       Map<String, String> responseMap = new HashMap<>();	// 응답 메시지를 담을 Map 객체 생성
       try {	
           List<Message> messages = List.of(
               new Message("system", "You're the knowledgeable, friendly, proactive docent at an art exhibit who can come up with a novel question 90% of the time when asked."),
               new Message("user", dto.getPrompt())		// 사용자가 입력한 메시지를 담은 Message 객체 생성
           );

           String response = chatWithGpt3(messages);	// 생성한 Message 객체 목록을 전달하여 OpenAI API로부터 응답을 받음
           responseMap.put("response", response);	// 응답 메시지를 responseMap에 추가함
           return ResponseEntity.ok(responseMap);	// 응답 메시지와 HTTP 상태코드 200을 반환함
       } catch (Exception e) {
    	   System.out.println(e);
           responseMap.put("response", "An error occurred communicating with ChatGpt...");	// 예외 발생시 오류 메시지를 responseMap에 추가함
           return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(responseMap);	// 응답 메시지와 HTTP 상태코드 500을 반환함
       }
   }
   
}// AiController











