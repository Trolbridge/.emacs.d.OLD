/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.com/docs/gatsby-config/
 */

module.exports = {
  /* Your site config here */
  siteMetadata: {
    title: "Simply Recipes",
    description: "Nice and clean recipes site",
    author: "@dennismitchell",
    person: { name: "dennis", age: 53 }, // Object
    simpleData: ["item 1", "item 2"], // Array
    complexData: [
      // Array of Objects
      { name: "dennis", age: 53 },
      { name: "susan", age: 52 },
    ],
  },
  plugins: [
    `gatsby-plugin-styled-components`,
    `gatsby-plugin-image`, // gatsby-plugin-image
    `gatsby-plugin-sharp`, // gatsby-plugin-image
    `gatsby-transformer-sharp`, // gatsby-plugin-image - Needed for dynamic images
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `images`,
        path: `${__dirname}/src/assets/images`,
      },
    },
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `examples`,
        path: `${__dirname}/src/examples`,
      },
    },
  ],
}
