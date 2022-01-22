import React from "react"
import Layout from "../components/Layout"
import { page, text } from "../examples/home.module.css"
// import * as homeStyles from "../examples/home.module.css"

export default function Home() {
  return (
    <Layout>
      {/* <h1 style={{ color: "gold", textTransform: "capitalize" }}>home page</h1> */}
      <div className={page}>
        {/* <div className={homeStyles.page}> */}
        <h1>home page</h1>
        <h1>hello world</h1>
        <h1>hello people</h1>
        <h1>Hi Den!</h1>
        <p className={text}>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus
          vitae, voluptatem, tempore non deleniti, ducimus maxime amet et omnis
          laboriosam nihil eligendi cupiditate nemo natus? Quia ipsum quis
          accusantium voluptatibus?
        </p>
      </div>
    </Layout>
  )
}
