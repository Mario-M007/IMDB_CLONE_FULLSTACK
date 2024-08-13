package com.mario.backend.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CastDTO {
    private Long id;
    private String firstName;
    private String middleName;
    private String lastName;
    private String thumbnailURL;
    private String biography;
    private Long movieId;
}
