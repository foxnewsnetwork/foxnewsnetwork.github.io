const path = require('path');
const outputDir = path.join(__dirname, "build/");
const HtmlWebpackPlugin = require('html-webpack-plugin');
const isProd = process.env.NODE_ENV === 'production';

module.exports = {
  entry: './src/Index.bs.js',
  mode: isProd ? 'production' : 'development',
  output: {
    path: outputDir,
    publicPath: './',
    filename: 'index.js'
  },
  module:{
    rules: [
      {
        test: /\.md$/,
        use: 'raw-loader'
      }
    ],
  },
  devtool: 'source-map',
  plugins: [
    new HtmlWebpackPlugin({
      template: 'src/index.html'
    })
  ],
};
