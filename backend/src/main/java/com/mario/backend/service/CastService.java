package com.mario.backend.service;

import com.mario.backend.dto.CastDTO;

import java.util.List;

public interface CastService {
    CastDTO getCastById(Long castId);

    List<CastDTO> getCastListByMovieId(Long movieId);
}
