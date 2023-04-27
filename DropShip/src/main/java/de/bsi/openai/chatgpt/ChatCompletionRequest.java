package de.bsi.openai.chatgpt;


import java.util.List;

public class ChatCompletionRequest {
	private String model;
    private List<Message> messages;
    private double temperature;
    private int max_tokens;

    public ChatCompletionRequest(String model, List<Message> messages, double temperature, int max_tokens) {
        this.model = model;
        this.messages = messages;
        this.temperature = temperature;
        this.max_tokens = max_tokens;
    }

    public static ChatCompletionRequest defaultWith(List<Message> messages) {
        return new ChatCompletionRequest("gpt-3.5-turbo", messages, 0.8, 500);
    }
    
    public String getModel() {
        return model;
    }
    
    public List<Message> getMessages() {
        return messages;
    }
}






//package de.bsi.openai.chatgpt;
//
//public record CompletionRequest(String model, String prompt, 	// https://platform.openai.com/docs/api-reference/chat/create
//		double temperature, int max_tokens) {
//	
//	public static CompletionRequest defaultWith(String prompt) {
//		return new CompletionRequest("text-davinci-003", prompt, 0.7, 500);
//	}
//	
//}
