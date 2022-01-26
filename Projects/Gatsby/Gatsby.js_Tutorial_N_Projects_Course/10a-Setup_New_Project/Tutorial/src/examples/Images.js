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
      <StaticImage src="../assets/images/sunset.jpeg"></StaticImage>
    </Wrapper>
  )
}

const Wrapper = styled.section`
  img {
    width: 400px;
  }
`
export default Images
