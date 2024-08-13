import { useEffect, useState } from "react";
import { getCastDetails } from "../services/MovieService";
import { useParams } from "react-router-dom";
import { ICast } from "../models/Cast";

const CastDetailsComponent = () => {
  const { id } = useParams<{ id: string }>();
  const { castId } = useParams<{ castId: string }>();
  const [cast, setCast] = useState<ICast | null>(null);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<Error | null>(null);

  useEffect(() => {
    if (id) {
      getCastDetails(Number(id), Number(castId))
        .then((response) => {
          setCast(response.data);
          setLoading(false);
        })
        .catch((error) => {
          setError(error);
          setLoading(false);
        });
    }
  }, [id, castId]);

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
      {cast && (
        <div>
          <h2 className="mb-3">
            {cast.firstName} {cast.lastName}
          </h2>
          <img
            src={cast.thumbnailURL}
            alt={`${cast.firstName}_${cast.lastName}_image`}
            className="img-fluid img-thumbnail mb-3"
          />
          {cast.middleName && (
            <p className="card-text">
              <strong>Middle Name:</strong> {cast.middleName}
            </p>
          )}
          <p className="card-text">
            <strong>Biography:</strong> {cast.biography}
          </p>
        </div>
      )}
      <br />
    </div>
  );
};

export default CastDetailsComponent;
