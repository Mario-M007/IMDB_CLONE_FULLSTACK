import { useEffect, useState } from "react";
import {
  addMovie,
  getMovieDetails,
  updateMovie,
} from "../services/MovieService";
import { useNavigate, useParams } from "react-router-dom";
import { IMovie } from "../models/Movie";

const MovieFormComponent = () => {
  const [title, setTitle] = useState<string>();
  const [thumbnailURL, setThumbnailURL] = useState<string>();
  const [plot, setPlot] = useState<string>();
  const [videoURL, setVideoURL] = useState<string>();
  const [errors, setErrors] = useState({ title: "", thumbnailURL: "" });
  const navigate = useNavigate();
  const { id } = useParams();

  const validateForm = (): boolean => {
    const errorsCopy = { ...errors };
    let valid = true;

    if (!title?.trim()) {
      errorsCopy.title = "Title is required";
      valid = false;
    } else {
      errorsCopy.title = "";
    }

    if (!thumbnailURL?.trim()) {
      errorsCopy.thumbnailURL = "Thumbnail URL is required";
      valid = false;
    } else {
      errorsCopy.thumbnailURL = "";
    }

    setErrors(errorsCopy);
    return valid;
  };

  const saveMovie = async (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    if (validateForm()) {
      const movie: IMovie = { title, thumbnailURL, plot, videoURL };
      try {
        if (id) {
          await updateMovie(Number(id), movie);
        } else {
          await addMovie(movie);
        }
        navigate("/movies");
      } catch (error) {
        console.error(error);
      }
    }
  };

  useEffect(() => {
    if (id) {
      getMovieDetails(Number(id))
        .then((response) => {
          const movie = response.data;
          setTitle(movie.title || "");
          setThumbnailURL(movie.thumbnailURL || "");
          setPlot(movie.plot || "");
          setVideoURL(movie.videoURL || "");
        })
        .catch((error) => console.error(error));
    }
  }, [id]);

  return (
    <div className="container bg-dark text-light">
      <br />
      <div className="row">
        <div className="col-md-6 offset-md-3 text-light">
          <br />
          <h2 className="text-center">{id ? "Update Movie" : "Add Movie"}</h2>
          <div >
            <form>
              <div className="form-group mb-2">
                <label htmlFor="title" className="form-label">
                  Title:
                </label>
                <input
                  type="text"
                  id="title"
                  className={`form-control ${errors.title && "is-invalid"}`}
                  placeholder="Enter Title"
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                />
                {errors.title && (
                  <div className="invalid-feedback">{errors.title}</div>
                )}
              </div>
              <div className="form-group mb-2">
                <label htmlFor="thumbnailURL" className="form-label">
                  Thumbnail URL:
                </label>
                <input
                  type="text"
                  id="thumbnailURL"
                  className={`form-control ${
                    errors.thumbnailURL && "is-invalid"
                  }`}
                  placeholder="Enter Thumbnail URL"
                  value={thumbnailURL}
                  onChange={(e) => setThumbnailURL(e.target.value)}
                />
                {errors.thumbnailURL && (
                  <div className="invalid-feedback">{errors.thumbnailURL}</div>
                )}
              </div>
              <div className="form-group mb-2">
                <label htmlFor="plot" className="form-label">
                  Plot:
                </label>
                <textarea
                  id="plot"
                  className="form-control"
                  placeholder="Enter Plot"
                  value={plot}
                  onChange={(e) => setPlot(e.target.value)}
                  style={{ resize: "none" }}
                />
              </div>
              <div className="form-group mb-2">
                <label htmlFor="videoURL" className="form-label">
                  Video URL:
                </label>
                <input
                  type="text"
                  id="videoURL"
                  className="form-control"
                  placeholder="Enter Video URL"
                  value={videoURL}
                  onChange={(e) => setVideoURL(e.target.value)}
                />
              </div>
              <button className="btn btn-primary" onClick={saveMovie}>
                Submit
              </button>
            </form>
          </div>
        </div>
      </div>
      <br />
    </div>
  );
};

export default MovieFormComponent;
