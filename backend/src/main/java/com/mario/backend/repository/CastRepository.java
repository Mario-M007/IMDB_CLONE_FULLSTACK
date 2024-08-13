package com.mario.backend.repository;

import com.mario.backend.entity.Cast;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CastRepository extends JpaRepository<Cast, Long> {
    List<Cast> findByMovieId(Long movieId);
}
