import React from "react"
import styled from "styled-components"
import sunset from "../assets/images/sunset.jpeg"
// import big from "../assets/images/big.jpg"

const Images = () => {
  return (
    <Wrapper>
      <h2>Gatsby Image</h2>
      <img src={sunset} alt="sunset" />
    </Wrapper>
  )
}

const Wrapper = styled.section`
img{
  width: 400px;
}`
export default Images
