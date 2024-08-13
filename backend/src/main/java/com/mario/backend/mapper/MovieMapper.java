package com.mario.backend.mapper;

import com.mario.backend.dto.MovieDTO;
import com.mario.backend.entity.Movie;

public class MovieMapper {
    public static MovieDTO mapToMovieDTO(Movie movie) {
        return new MovieDTO(
                movie.getId(),
                movie.getTitle(),
                movie.getThumbnailURL(),
                movie.getPlot(),
                movie.getVideoURL());
    }

    public static Movie mapToMovie(MovieDTO movieDTO) {
        return new Movie(
                movieDTO.getId(),
                movieDTO.getTitle(),
                movieDTO.getThumbnailURL(),
                movieDTO.getPlot(),
                movieDTO.getVideoURL(),
                null);
    }
}
