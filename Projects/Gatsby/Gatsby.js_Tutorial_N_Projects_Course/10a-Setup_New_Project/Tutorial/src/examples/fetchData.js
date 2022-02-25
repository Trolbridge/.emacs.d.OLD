import React from "react"
import { useStaticQuery, graphql } from "gatsby" // named imports

// Lesson 53
// Query Names must be unique 
const getData = graphql`
  query {
    site {
      info: siteMetadata {
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
      info: { title },
    },
  } = useStaticQuery(getData)
  return (
    <div>
      {/* <h2>Name : {data.site.info.person.name}</h2> */}
      <h2>site title is : {title}</h2>
    </div>
  )
}

export default FetchData
