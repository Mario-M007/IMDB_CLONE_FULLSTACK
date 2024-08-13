import { useCallback, useEffect, useState } from "react";
import { IMovie } from "../models/Movie";
import { useNavigate, useSearchParams } from "react-router-dom";
import { getMovies } from "../services/MovieService";

const ListMovieComponent = () => {
  const [movies, setMovies] = useState<IMovie[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<Error | null>(null);
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();
  const filter = searchParams.get("filter") || "";

  const getAllMovies = useCallback(() => {
    getMovies(filter)
      .then((response) => {
        setMovies(response.data);
        setLoading(false);
      })
      .catch((error) => {
        console.error(error);
        setError(error);
        setLoading(false);
      });
  }, [filter]);

  useEffect(() => {
    getAllMovies();
  }, [getAllMovies]);

  function handleMovieClick(id: number) {
    navigate(`/movies/${id}`);
  }

  function addNewMovie() {
    navigate("/add-movie");
  }

  return (
    <div className="container bg-dark text-light">
      <br />
      <h2 className="text-center">List of Movies</h2>
      <button className="btn btn-primary mb-4" onClick={addNewMovie}>
        Add Movie
      </button>
      {loading && (
        <div className="d-flex justify-content-center">
          <div className="spinner-border text-light" role="status">
            <span className="visually-hidden">Loading...</span>
          </div>
        </div>
      )}
      {error && (
        <div className="alert alert-danger" role="alert">
          Error: {error.message}
        </div>
      )}
      {!loading && !error && (
        <div className="row">
          {movies.length > 0 ? (
            movies.map((movie) => (
              <div
                role="button"
                className="col-md-3 mb-4 cursor-pointer card-container"
                key={movie.id}
                onClick={() => handleMovieClick(Number(movie.id))}
              >
                <div className="card">
                  <img
                    src={movie.thumbnailURL}
                    alt={movie.title}
                    className="card-img-top"
                  />
                  <div className="card-body">
                    <h5 className="card-title">{movie.title}</h5>
                  </div>
                </div>
              </div>
            ))
          ) : (
            <div>No movies found</div>
          )}
        </div>
      )}
      <br />
    </div>
  );
};

export default ListMovieComponent;
