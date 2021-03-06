var ExtractTextPlugin = require("extract-text-webpack-plugin");
var CopyWebpackPlugin = require("copy-webpack-plugin");
module.exports = {
  entry: [ "./web/static/css/app.css", "./web/static/js/app.js" ],
  output: {
    path: "./priv/static/js",
    filename: "app.js"
  },
  resolve: {
    modulesDirectory: [ "node_modules", __dirname + "/web/static/js" ],
    alias: {
      "vue$": "vue/dist/vue.common.js"
    }
  },
  module: {
    loaders: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: "babel",
      include: __dirname,
      query: {
        presets: ["es2015"]
      }
    },{
      test: /\.css$/,
      loader: ExtractTextPlugin.extract("style", "css")
    }]
  },
  plugins: [
    new ExtractTextPlugin("css/app.css"),
    new CopyWebpackPlugin([{ from: "./web/static/assets" }])
  ]
};
