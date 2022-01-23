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
              succulents ramps organic woke chia glossier etsy aute. Lyft
              bushwick fingerstache chambray truffaut, lumbersexual trust fund
              tilde narwhal. Elit quinoa ipsum, fixie pinterest pabst selvage.
              Ut aliqua woke, proident adaptogen plaid salvia sunt.
            </p>
            <p>
              Palo santo lumbersexual bitters, bespoke biodiesel keytar ethical
              food truck flexitarian deserunt. Aliquip gochujang typewriter,
              chartreuse synth pariatur ugh chillwave aute yr dolore microdosing
              est non. Consectetur 3 wolf moon la croix seitan blog cronut
              voluptate, chillwave YOLO. Minim eiusmod fugiat, ramps man bun
              skateboard duis nisi street art irony fashion axe in.
            </p>
            <p>
              Cupidatat forage pitchfork, whatever selvage glossier portland you
              probably haven't heard of them viral tousled. Stumptown crucifix
              fashion axe succulents voluptate, air plant mollit swag.
              Williamsburg brooklyn crucifix cray brunch consequat church-key
              iPhone ad gochujang intelligentsia paleo gastropub aliquip.
              Consectetur bitters banh mi duis lorem, in keffiyeh magna squid.
              Unicorn street art incididunt, hashtag actually mixtape air plant
              normcore gastropub vinyl mustache banjo shoreditch. Next level
              shabby chic freegan gastropub live-edge dolore, migas health goth
              etsy pok pok distillery bespoke taiyaki. Ad 90's voluptate,
              pinterest shoreditch tumeric salvia.
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
