module.exports = {
  title: "VuePress",
  base: process.env.BASE_URL || "/",
  themeConfig: {
    nav: [
      { text: "Home", link: "/" },
      { text: "Config", link: "/config/" },
      { text: "Guide", link: "/guide/" }
    ],
    sidebar: ["/", "/config", "/guide/"]
  }
};
