package de.bsi.openai.chatgpt;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Optional;

@Getter
@Setter
public class ChatCompletionResponse {
    @JsonProperty("id")
    private String id;
    @JsonProperty("object")
    private String object;
    @JsonProperty("created")
    private long created;
    @JsonProperty("choices")
    private List<Choice> choices;
    @JsonProperty("usage")
    private Usage usage;

    public Optional<String> firstAnswer() {
        return choices.stream().findFirst().map(Choice::getMessage);
    }

    public Optional<Message> getAssistantMessage() {
        return choices.stream().findFirst().map(Choice::getMessageObject);
    }
    
    @Getter
    @Setter
    public static class Choice {
        @JsonProperty("index")
        private int index;
        @JsonProperty("message")
        private Message message;
        @JsonProperty("finish_reason")
        private String finishReason;

        public String getMessage() {
            return message.getContent();
        }
        
        public Message getMessageObject() {
            return message;
        }
    }

    @Getter
    @Setter
    public static class Usage {
        @JsonProperty("prompt_tokens")
        private int promptTokens;
        @JsonProperty("completion_tokens")
        private int completionTokens;
        @JsonProperty("total_tokens")
        private int totalTokens;
    }
}