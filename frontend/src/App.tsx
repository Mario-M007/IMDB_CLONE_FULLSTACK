import "./App.css";
import ListMovieComponent from "./components/ListMovieComponent";
import MovieFormComponent from "./components/MovieFormComponent";
import MovieDetailsComponent from "./components/MovieDetailsComponent";
import SearchBarComponent from "./components/SearchBarComponent";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import CastDetailsComponent from "./components/CastDetailsComponent";
import FooterComponent from "./components/FooterComponent";
import PageNotFoundComponent from "./components/PageNotFoundComponent";

function App() {
  return (
    <>
      <BrowserRouter>
        <div className="d-flex flex-column min-vh-100">
          <SearchBarComponent />
          <main className="flex-grow-1">
            <Routes>
              {/* http://localhost:3000 */}
              <Route path="/" element={<ListMovieComponent />} />

              {/* http://localhost:3000/movies */}
              <Route path="/movies" element={<ListMovieComponent />} />

              {/* http://localhost:3000/movies/:id */}
              <Route path="/movies/:id" element={<MovieDetailsComponent />} />

              {/* http://localhost:3000/add-movie */}
              <Route path="/add-movie" element={<MovieFormComponent />} />

              {/* http://localhost:3000/edit-movie/:id */}
              <Route path="/edit-movie/:id" element={<MovieFormComponent />} />

              {/* http://localhost:3000/movies/:id/cast/:castId */}
              <Route
                path="/movies/:id/cast/:castId"
                element={<CastDetailsComponent />}
              />

              {/* Catch-all route for undefined paths */}
              <Route path="*" element={<PageNotFoundComponent />} />
            </Routes>
          </main>
          <FooterComponent />
        </div>
      </BrowserRouter>
    </>
  );
}

export default App;
