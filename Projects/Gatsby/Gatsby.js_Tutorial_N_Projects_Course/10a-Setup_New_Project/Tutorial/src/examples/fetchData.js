import React from "react"
import { useStaticQuery, graphql } from "gatsby"

const getData = graphql`
  {
    site {
      siteMetadata {
        author
        description
        title
        complexData {
          name
          age
        }
        person {
          name
          age
        }
      }
    }
  }
`

const FetchData = () => {
  //   const data = useStaticQuery(getData)
  const {
    site: {
      siteMetadata: { title },
    },
  } = useStaticQuery(getData)
  return (
    <div>
      {/* <h2>Name : {data.site.siteMetadata.person.name}</h2> */}
      <h2>site title is : {title}</h2>
    </div>
  )
}

export default FetchData
