const path = require('path');
const resolve = path.resolve.bind(path, __dirname);
const project_name = 'helloku';
const js_path = './' + project_name + '/static/js/';

module.exports = {
  mode: 'development',
  entry: './static/js/' + project_name + '.js',
  output: {
    path: resolve(js_path),
    filename: project_name + '.js'
  },
  module: {
    rules: [
      {
        test: /\.less$/,
        use: [
          'style-loader',
          'css-loader',
          'less-loader'
        ]
      }
    ]
  }
}
