package nhupham.nhuptt.cosmeticsapp.responses;

import com.fasterxml.jackson.annotation.JsonProperty;
import nhupham.nhuptt.cosmeticsapp.models.User;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RegisterResponse {
    @JsonProperty("message")
    private String message;

    @JsonProperty("user")
    private User user;
}
