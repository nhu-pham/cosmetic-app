package nhupham.nhuptt.cosmeticsapp.responses;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import nhupham.nhuptt.cosmeticsapp.models.Category;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CategoryResponse {
    @JsonProperty("message")
    private String message;

    @JsonProperty("errors")
    private List<String> errors;

    @JsonProperty("category")
    private Category category;
}

