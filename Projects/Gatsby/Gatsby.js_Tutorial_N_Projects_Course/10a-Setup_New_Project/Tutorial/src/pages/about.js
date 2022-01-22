import React from "react"
import Layout from "../components/Layout"
import { page, text } from "../examples/about.module.css"

const about = () => {
  return (
    <Layout>
      <div className={page}>
        <h1>About Page</h1>
        <h1 className={text}>hello world</h1>
        <p className={text}>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero quas
          atque facilis, amet exercitationem, dolorum minima distinctio sapiente
          unde ipsam accusantium aut omnis accusamus quaerat aliquid praesentium
          molestias laborum? Eveniet.
        </p>
      </div>
    </Layout>
  )
}

export default about
