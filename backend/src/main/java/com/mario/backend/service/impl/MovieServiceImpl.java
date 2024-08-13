package com.mario.backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.mario.backend.dto.MovieDTO;
import com.mario.backend.entity.Movie;
import com.mario.backend.exception.ResourceNotFoundException;
import com.mario.backend.mapper.MovieMapper;
import com.mario.backend.repository.CastRepository;
import com.mario.backend.repository.MovieRepository;
import com.mario.backend.service.MovieService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MovieServiceImpl implements MovieService {

    private final MovieRepository movieRepository;
    private final CastRepository castRepository;

    @Override
    public MovieDTO createMovie(MovieDTO movieDTO) {
        Movie movie = MovieMapper.mapToMovie(movieDTO);
        Movie savedMovie = movieRepository.save(movie);
        return MovieMapper.mapToMovieDTO(savedMovie);
    }

    @Override
    public MovieDTO getMovieById(Long movieId) {
        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new ResourceNotFoundException("Movie does not exist with the given id: " + movieId));
        return MovieMapper.mapToMovieDTO(movie);
    }

    @Override
    public List<MovieDTO> getMovies(String filter) {
        List<Movie> movies = movieRepository.findAll();
        if (filter != null && !filter.isEmpty()) {
            movies = movies.stream()
                    .filter(movie -> movie.getTitle().toLowerCase().contains(filter.toLowerCase()) ||
                            castRepository.findByMovieId(movie.getId()).stream()
                                    .anyMatch(
                                            cast -> cast.getFirstName().toLowerCase().contains(filter.toLowerCase()) ||
                                                    cast.getLastName().toLowerCase().contains(filter.toLowerCase())))
                    .collect(Collectors.toList());
        }
        return movies.stream().map(movie -> MovieMapper.mapToMovieDTO(movie)).collect(Collectors.toList());
    }

    @Override
    public MovieDTO updateMovie(Long movieId, MovieDTO updatedMovieDTO) {
        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new ResourceNotFoundException("Movie does not exist with the given id: " + movieId));
        movie.setTitle(updatedMovieDTO.getTitle());
        movie.setThumbnailURL(updatedMovieDTO.getThumbnailURL());
        movie.setPlot(updatedMovieDTO.getPlot());
        movie.setVideoURL(updatedMovieDTO.getVideoURL());
        Movie updatedMovie = movieRepository.save(movie);
        return MovieMapper.mapToMovieDTO(updatedMovie);
    }

    @Override
    public void deleteMovie(Long movieId) {
        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new ResourceNotFoundException("Movie does not exist with the given id: " + movieId));
        movieRepository.deleteById(movie.getId()); // This deletes the movie itself
    }
}
