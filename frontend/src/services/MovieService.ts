import axios from "axios";
import { IMovie } from "../models/Movie";

const REST_API_BASE_URL = "http://localhost:8080";

// Movie Methods

export const getMovies = async (filter?: string) => {
  return await axios.get(
    `${REST_API_BASE_URL}/movies${filter ? `?filter=${filter}` : ""}`
  );
};

export const getMovieDetails = async (id: number) => {
  return await axios.get(`${REST_API_BASE_URL}/movies/${id}`);
};

export const addMovie = async (movie: IMovie) => {
  return await axios.post(`${REST_API_BASE_URL}/movies`, movie);
};

export const updateMovie = async (id: number, movie: IMovie) => {
  return await axios.put(`${REST_API_BASE_URL}/movies/${id}`, movie);
};

export const deleteMovie = async (id: number) => {
  return await axios.delete(`${REST_API_BASE_URL}/movies/${id}`);
};

// Cast methods

export const getCastList = async (id: number) => {
  return await axios.get(`${REST_API_BASE_URL}/movies/${id}/cast`);
};

export const getCastDetails = async (id: number, castId: number) => {
  return await axios.get(`${REST_API_BASE_URL}/movies/${id}/cast/${castId}`);
};
