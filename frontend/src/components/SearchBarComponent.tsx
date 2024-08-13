import { useEffect, useState } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";

const SearchBarComponent = () => {
  const [filter, setFilter] = useState<string>("");
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();

  useEffect(() => {
    const initialFilter = searchParams.get("filter") || "";
    setFilter(initialFilter);
  }, [searchParams]);

  const searchMovie = (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    navigate(`/movies?filter=${filter}`);
  };

  return (
    <header className="bg-dark text-light py-3 border-bottom border-light border-opacity-25">
      <nav className="navbar navbar-expand-lg navbar-dark">
        <div className="container">
          <a className="navbar-brand" href="/">
            IMDB CLONE
          </a>
          <div>
            <form className="d-flex ms-auto">
              <input
                className="form-control me-2 bg-secondary text-light border-0"
                type="search"
                placeholder="Search Movies"
                aria-label="Search"
                value={filter}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => {
                  setFilter(e.target.value);
                }}
              />
              <button className="btn btn-outline-light" onClick={searchMovie}>
                Search
              </button>
            </form>
          </div>
        </div>
      </nav>
    </header>
  );
};

export default SearchBarComponent;
