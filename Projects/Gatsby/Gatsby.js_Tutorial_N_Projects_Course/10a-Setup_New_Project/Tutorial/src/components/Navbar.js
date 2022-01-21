import React from "react"
import { Link } from "gatsby"

const Navbar = () => {
  return (
    <nav>
      <ul>
        <li>
          <Link to="/about">about</Link>
        </li>
        <li>
          <Link to="/">home</Link>
        </li>
      </ul>
    </nav>
  )
}

export default Navbar
