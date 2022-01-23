import React from "react"
import Layout from "../components/Layout"

const Contact = () => {
  return (
    <Layout>
      <main className="page">
        <section>
          <h3>want to get in touch?</h3>
          <article className="contact info">
            <p>
              Forage bushwick blue bottle, four dollar toast put a bird on it
              succulents ramps organic woke chia glossier etsy aute.
            </p>
            <p>Palo street art irony fashion axe in.</p>
            <p>
              Cupidatat forage pitchfork, whatever selvage glossier portland you
              probably haven't heard of them viral tousled. Stumptown crucifix
              fashion axe succulents voluptate, air plant mollit swag.
            </p>
          </article>
          <article>
            <form className="form contact-form">
              <div className="form-row">
                <label htmlFor="name">your name</label>
                <input type="text" name="name" id="name" />
              </div>
              <div className="form-row">
                <label htmlFor="email">your email</label>
                <input type="text" name="email" id="email" />
              </div>
              <div className="form-row">
                <label htmlFor="message">message</label>
                <textarea name="message" id="message"></textarea>
              </div>
              <button type="submit" className="btn block">
                submit
              </button>
            </form>
          </article>
        </section>
      </main>
    </Layout>
  )
}
export default Contact
