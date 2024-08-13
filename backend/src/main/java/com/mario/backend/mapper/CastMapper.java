package com.mario.backend.mapper;

import com.mario.backend.dto.CastDTO;
import com.mario.backend.entity.Cast;

public class CastMapper {
    public static CastDTO mapToCastDTO(Cast cast) {
        return new CastDTO(
                cast.getId(),
                cast.getFirstName(),
                cast.getMiddleName(),
                cast.getLastName(),
                cast.getThumbnailURL(),
                cast.getBiography(),
                cast.getMovie().getId());
    }
}
