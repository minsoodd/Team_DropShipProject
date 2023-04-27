//package de.bsi.openai;
//
//import java.io.IOException;
//import java.net.URI;
//import java.net.http.HttpClient;
//import java.net.http.HttpRequest;
//import java.net.http.HttpRequest.BodyPublishers;
//import java.net.http.HttpResponse;
//
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.MediaType;
//import org.springframework.stereotype.Component;
//
//@Component
//public class OpenAiApiClient {
//
//	public enum OpenAiService {
//		DALL_E, GPT_3;
//	}
//
//	@Value("${openai.api_key}")
//	private String openaiApiKey;
//
//	private final HttpClient client = HttpClient.newHttpClient();
//
//	public String postToOpenAiApi(String requestBodyAsJson, OpenAiService service)
//			throws IOException, InterruptedException {
//		var request = HttpRequest.newBuilder().uri(selectUri(service))
//				.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
//				.header(HttpHeaders.AUTHORIZATION, "Bearer " + openaiApiKey)
//				.POST(BodyPublishers.ofString(requestBodyAsJson)).build();
//		return client.send(request, HttpResponse.BodyHandlers.ofString()).body();
//	}
//
//	private URI selectUri(OpenAiService service) {
//		return URI.create(switch (service) {
//		case DALL_E -> "https://api.openai.com/v1/images/generations";
//		case GPT_3 -> "https://api.openai.com/v1/completions";
//		});
//	}
//
//}


package de.bsi.openai;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;

@Component
public class OpenAiApiClient {

    public enum OpenAiService {
        DALL_E, GPT_3;
    }
    
    // 1. 원본(application.properties에 api키 저장해놓은 걸 변수형식으로 가져오기(안됨))
//    @Value("${openai.api_key}")
//    private String openaiApiKey;
    
    // 2. 그냥 무식하게 바로 api키 여기다 집어넣음 (api키 깃허브에 올리면 키 사라짐. 다시 얼마든지 만들 순 있긴 한데 그래도 조심..)
    private String openaiApiKey = "";

    private final HttpClient client = HttpClient.newHttpClient();

    public String postToOpenAiApi(String requestBodyAsJson, OpenAiService service)
            throws IOException, InterruptedException {
        HttpRequest.Builder requestBuilder = HttpRequest.newBuilder().uri(selectUri(service))
                .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                .header(HttpHeaders.AUTHORIZATION, "Bearer " + openaiApiKey)
                .POST(BodyPublishers.ofString(requestBodyAsJson));
        HttpRequest request = requestBuilder.build();
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        return response.body();
    }

    private URI selectUri(OpenAiService service) {
        String uriString = null;
        switch (service) {
            case DALL_E:
                uriString = "https://api.openai.com/v1/images/generations";
                break;
            case GPT_3:
            	uriString = "https://api.openai.com/v1/chat/completions";
            	break;
        }
        return URI.create(uriString);
    }
}
