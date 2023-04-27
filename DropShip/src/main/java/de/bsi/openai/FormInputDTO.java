package de.bsi.openai;

import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
public class FormInputDTO {
    private String prompt;

    public String getPrompt() {
        return prompt;
    }
}