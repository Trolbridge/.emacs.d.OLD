import React from "react"
import { Link } from "gatsby"

export default function Home() {
  return (
    <div>
      <h1>rafce Hello People!</h1>
      <div>
        <Link to="/company/history">history</Link>
      </div>
      <div>
        <Link to="/about">about</Link>
      </div>
      <a href="/about">reg link</a>
      <a href="https://www.gatsbyjs.com/docs/">gatsby docs</a>
    </div>
  )
}
