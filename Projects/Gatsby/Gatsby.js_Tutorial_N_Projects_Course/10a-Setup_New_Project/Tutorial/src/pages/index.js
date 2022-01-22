import React from "react"
import Layout from "../components/Layout"

export default function Home() {
  return (
    <Layout>
      {/* <h1 style={{ color: "gold", textTransform: "capitalize" }}>home page</h1> */}
      <div className="home-heading">
        <h1>home page</h1>
        <h1>hello world</h1>
        <h1>hello people</h1>
      </div>
    </Layout>
  )
}
