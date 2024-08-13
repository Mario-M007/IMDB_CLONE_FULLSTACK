package com.mario.backend.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.mario.backend.dto.CastDTO;
import com.mario.backend.dto.MovieDTO;
import com.mario.backend.service.CastService;
import com.mario.backend.service.MovieService;

import lombok.AllArgsConstructor;

@CrossOrigin("*")
@AllArgsConstructor
@RestController
@RequestMapping("/movies")
public class APIController {

    private final MovieService movieService;
    private final CastService castService;

    // Movie methods

    // GET API "/movies" to retrieve all movies or movies based on filter
    @GetMapping
    public ResponseEntity<List<MovieDTO>> getMovies(@RequestParam(value = "filter", required = false) String filter) {
        List<MovieDTO> movies = movieService.getMovies(filter);
        return ResponseEntity.ok(movies);
    }

    // GET API "/movies/{id}" to retrieve movie by id
    @GetMapping("/{id}")
    public ResponseEntity<MovieDTO> getMovieById(@PathVariable("id") Long movieId) {
        MovieDTO movieDTO = movieService.getMovieById(movieId);
        return ResponseEntity.ok(movieDTO);
    }

    // POST API "/movies" to create movie
    @PostMapping
    public ResponseEntity<MovieDTO> createMovie(@RequestBody MovieDTO movieDTO) {
        MovieDTO savedMovie = movieService.createMovie(movieDTO);
        return new ResponseEntity<>(savedMovie, HttpStatus.CREATED);
    }

    // PUT API "/movies/{id}" to update movie based on id
    @PutMapping("/{id}")
    public ResponseEntity<MovieDTO> updateMovie(@PathVariable("id") Long movieId,
            @RequestBody MovieDTO updatedMovieDTO) {
        MovieDTO movieDTO = movieService.updateMovie(movieId, updatedMovieDTO);
        return ResponseEntity.ok(movieDTO);
    }

    // DELETE API "/movies/{id}" to delete movie based on id
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteMovie(@PathVariable("id") Long movieId) {
        movieService.deleteMovie(movieId);
        return ResponseEntity.ok("Movie has been deleted successfully");
    }

    // Cast Methods

    // GET API "/movies/{id}/cast" to retrieve movie cast list by movie id
    @GetMapping("/{id}/cast")
    public ResponseEntity<List<CastDTO>> getCastListByMovieId(@PathVariable("id") Long movieId) {
        List<CastDTO> castList = castService.getCastListByMovieId(movieId);
        return ResponseEntity.ok(castList);
    }

    // GET API "/movies/{id}/cast/{castId}" to retrieve movie cast details by castId
    @GetMapping("/{id}/cast/{castId}")
    public ResponseEntity<CastDTO> getCastDetailsByMovieId(@PathVariable("id") Long movieId,
            @PathVariable("castId") Long castId) {
        CastDTO castDTO = castService.getCastById(castId);
        if (castDTO.getMovieId().equals(movieId)) {
            return ResponseEntity.ok(castDTO);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }
}
