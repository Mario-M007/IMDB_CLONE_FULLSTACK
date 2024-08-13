import { useEffect, useState } from "react";
import {
  getMovieDetails,
  deleteMovie,
  getCastList,
} from "../services/MovieService";
import { useParams, useNavigate } from "react-router-dom";
import { IMovie } from "../models/Movie";
import { ICast } from "../models/Cast";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faEdit, faTrash } from "@fortawesome/free-solid-svg-icons";

const MovieDetailsComponent = () => {
  const { id } = useParams<{ id: string }>();
  const [movie, setMovie] = useState<IMovie | null>(null);
  const [cast, setCast] = useState<ICast[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<Error | null>(null);
  const navigate = useNavigate();

  useEffect(() => {
    if (id) {
      getMovieDetails(Number(id))
        .then((response) => {
          setMovie(response.data);
          return getCastList(Number(id)); // Fetch cast list for the movie
        })
        .then((response) => {
          setCast(response.data);
          setLoading(false);
        })
        .catch((error) => {
          setError(error);
          setLoading(false);
        });
    }
  }, [id]);

  const handleEdit = () => {
    if (movie?.id) {
      navigate(`/edit-movie/${movie.id}`);
    }
  };

  const handleDelete = async () => {
    if (
      movie?.id &&
      window.confirm("Are you sure you want to delete this movie?")
    ) {
      try {
        await deleteMovie(movie.id);
        navigate("/movies");
      } catch (error) {
        setError(new Error("Failed to delete the movie."));
      }
    }
  };

  const handleCastClick = (castId: number) => {
    navigate(`/movies/${movie?.id}/cast/${castId}`); // Navigate to cast details page
  };

  return (
    <div className="container text-light">
      <br />
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
      {movie && (
        <div>
          <br />
          <div className="d-flex mb-4">
            <button
              className="btn btn-outline-warning me-2"
              onClick={handleEdit}
            >
              <FontAwesomeIcon icon={faEdit} />
            </button>
            <button className="btn btn-outline-danger" onClick={handleDelete}>
              <FontAwesomeIcon icon={faTrash} />
            </button>
          </div>
          <h2>{movie.title}</h2>
          <img
            src={movie.thumbnailURL}
            alt={movie.title}
            className="img-fluid img-thumbnail"
          />
          <p className="mt-2">{movie.plot}</p>
          {movie.videoURL && (
            <div className="mb-4">
              <h3>Watch Video</h3>
              <iframe
                src={movie.videoURL}
                title="YouTube video player"
                frameBorder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerPolicy="strict-origin-when-cross-origin"
                allowFullScreen
              ></iframe>
            </div>
          )}
          <h3>Cast</h3>
          <ul>
            {cast.length > 0 ? (
              cast.map((castMember) => (
                <li key={castMember.id}>
                  <a
                    className="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"
                    href=""
                    onClick={() => handleCastClick(Number(castMember?.id))}
                  >
                    {castMember.firstName} {castMember.lastName}
                  </a>
                </li>
              ))
            ) : (
              <li>No cast information available.</li>
            )}
          </ul>
        </div>
      )}
      <br />
    </div>
  );
};

export default MovieDetailsComponent;
