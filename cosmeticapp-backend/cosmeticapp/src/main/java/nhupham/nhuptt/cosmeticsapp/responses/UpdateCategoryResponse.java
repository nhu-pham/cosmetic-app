package nhupham.nhuptt.cosmeticsapp.responses;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UpdateCategoryResponse {
    @JsonProperty("message")
    private String message;
}
