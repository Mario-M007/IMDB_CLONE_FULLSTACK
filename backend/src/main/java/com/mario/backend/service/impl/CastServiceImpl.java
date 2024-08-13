package com.mario.backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.mario.backend.dto.CastDTO;
import com.mario.backend.entity.Cast;
import com.mario.backend.exception.ResourceNotFoundException;
import com.mario.backend.mapper.CastMapper;
import com.mario.backend.repository.CastRepository;
import com.mario.backend.service.CastService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CastServiceImpl implements CastService {

    private final CastRepository castRepository;

    @Override
    public CastDTO getCastById(Long castId) {
        Cast cast = castRepository.findById(castId)
                .orElseThrow(() -> new ResourceNotFoundException("Cast does not exist with the given id: " + castId));
        return CastMapper.mapToCastDTO(cast);
    }

    @Override
    public List<CastDTO> getCastListByMovieId(Long movieId) {
        List<Cast> casts = castRepository.findByMovieId(movieId);
        return casts.stream().map(cast -> CastMapper.mapToCastDTO(cast)).collect(Collectors.toList());
    }
}