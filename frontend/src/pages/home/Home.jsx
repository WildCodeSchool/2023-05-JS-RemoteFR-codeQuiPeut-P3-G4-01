import { Link } from "react-router-dom"
import FiltresBar from "./components/filtres_bar/FiltresBar"
import hydreHome from "../../assets/hydreHome.png"
// import smiley from "../../assets/smiley.png"
import "./Home.scss"

function Home({ user }) {
  return (
    <div className="Home">
      <div className="imageHome">
        <img
          className="imageCatastrophe"
          src={hydreHome}
          alt="imageCatastrophe"
        />
        <div className="ContainerText">
          <div className="bienvenu">
            <h1>
              {user && `Bienvenu, ${user.firstName}`} Vivez votre propre
              aventure avec ALTERWORLD !{/* <img src={smiley} alt="" /> */}
            </h1>
            <p className="textHome">
              Enfin une boutique où les fans de RPG peuvent accéder à du contenu
              de qualité et proposer leurs créations. dans tous les univers
              possible. Sélectionner les univers et les objets desirés et
              commencez l'aventure.
            </p>
          </div>
          <Link to="/contact">
            <button>Proposez vos créations !</button>
          </Link>
        </div>
      </div>
      <div className="FiltresBarH">
        <FiltresBar />
      </div>
    </div>
  )
}

export default Home
