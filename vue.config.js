const bootstrapSassAbstractsImports = require('vue-cli-plugin-bootstrap-vue/sassAbstractsImports.js')
const { defineConfig } = require('@vue/cli-service')
const webpack = require('webpack');

module.exports = defineConfig({
	transpileDependencies: true,
	configureWebpack: {
		//process: {env: {}},
		plugins: [
			// fix "process is not defined" error:
			// (do "npm install process" before running the build)
			new webpack.ProvidePlugin({
				process: 'process/browser',
			}),
		],
	}
})
css: {
	loaderOptions: {
		sass: {
			additionalData: bootstrapSassAbstractsImports.join('\n')
		}
		scss: {
			additionalData: [...bootstrapSassAbstractsImports, ''].join(';\n')
		}
	}
}
