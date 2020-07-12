const { environment } = require('@rails/webpacker')

// ***** 以下を追加 *****
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}))
// ***** 以上を追加 *****

module.exports = environment
