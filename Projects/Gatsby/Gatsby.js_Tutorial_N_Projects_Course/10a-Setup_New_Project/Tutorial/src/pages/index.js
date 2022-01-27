import React from "react"
import { Link } from "gatsby"
import Layout from "../components/Layout"
import Images from "../examples/Images"
import big from "../assets/images/big.jpg"

export default function Home() {
  return (
    <Layout>
      <h1>Home page</h1>
      <Images />
    </Layout>
  )
}
