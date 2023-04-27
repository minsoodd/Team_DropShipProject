package de.bsi.openai.dalle;

public class GenerationRequest {

    private final String prompt;
    private final int n;
    private final String size;
    private final String response_format;

    public GenerationRequest(String prompt, int n, String size, String response_format) {
        this.prompt = prompt;
        this.n = n;
        this.size = size;
        this.response_format = response_format;
    }

    public static GenerationRequest defaultWith(String prompt) {
        return new GenerationRequest(prompt, 1, "512x512", "url");
    }

    public String getPrompt() {
        return prompt;
    }

    public int getN() {
        return n;
    }

    public String getSize() {
        return size;
    }

    public String getResponse_format() {
        return response_format;
    }
}





//package de.bsi.openai.dalle;
//
//public record GenerationRequest(String prompt, int n, 
//		String size, String response_format) {
//	
//	public static GenerationRequest defaultWith(String prompt) {
//		return new GenerationRequest(prompt, 1, "1024x1024", "url");
//	}
//	
//}
