package com.mario.backend.service;

import com.mario.backend.dto.MovieDTO;

import java.util.List;

public interface MovieService {
    MovieDTO createMovie(MovieDTO movieDTO);

    MovieDTO getMovieById(Long movieId);

    List<MovieDTO> getMovies(String filter);

    MovieDTO updateMovie(Long movieId, MovieDTO updatedMovieDTO);

    void deleteMovie(Long movieId);
}
