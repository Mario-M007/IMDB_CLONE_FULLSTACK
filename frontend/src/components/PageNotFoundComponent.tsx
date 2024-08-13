import { Link } from "react-router-dom";

const PageNotFoundComponent = () => {
  return (
    <div className="container text-center text-light mt-5">
      <br />
      <div className="row">
        <div className="col">
          <h1 className="display-4">404</h1>
          <p className="lead">
            Oops! The page you are looking for does not exist.
          </p>
          <Link to="/" className="btn btn-primary mt-3">
            Go Back to Home
          </Link>
        </div>
      </div>
      <br />
    </div>
  );
};

export default PageNotFoundComponent;
