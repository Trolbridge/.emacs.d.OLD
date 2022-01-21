import React from "react"
import { Link } from "gatsby"
import Layout from "../components/Layout"

export default function Home() {
  return (
    <Layout>
      <h1 style={{ color: "gold", textTransform: "capitalize" }}>home page</h1>
      <div>
        <Link to="/company/history">history</Link>
      </div>
      <div>
        <Link to="/about">about</Link>
      </div>
      <a href="/about">reg link</a>
      <a href="https://www.gatsbyjs.com/docs/">gatsby docs</a>
    </Layout>
  )
}
