const FooterComponent = () => {
  return (
    <footer className="w-100 text-center bg-dark text-light py-3 border-top border-light border-opacity-25">
      <span>
        All Rights Reserved &copy;{new Date().getFullYear()} by Mario Maarawi
      </span>
    </footer>
  );
};

export default FooterComponent;
