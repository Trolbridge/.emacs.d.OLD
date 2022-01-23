import React from "react"

const Footer = () => {
  return (
    <footer className="page-footer">
      <p>
        &copy; {new Date().getFullYear()}
        <span>SimplyRecipes</span>.
      </p>
    </footer>
  )
}

export default Footer
