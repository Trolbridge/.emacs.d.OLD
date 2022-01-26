import React from "react"
import styled from "styled-components"
import sunset from "../assets/images/sunset.jpeg"
// import big from "../assets/images/big.jpg"
import { StaticImage } from "gatsby-plugin-image"

const Images = () => {
  return (
    <Wrapper>
      <h2>Image Test</h2>
      {/* <img src={sunset} alt="sunset" /> */}
      <StaticImage src="../assets/images/sunset.jpeg" alt="sunset" />
      <StaticImage
        src="https://res.cloudinary.com/diqqf3eq2/image/upload/v1613666858/course%20slides/event-loop_gohdkk.png"
        alt="code"
      />
    </Wrapper>
  )
}

const Wrapper = styled.section`
  img {
    width: 400px;
  }
`
export default Images
