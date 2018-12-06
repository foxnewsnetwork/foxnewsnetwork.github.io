# Hello Blog

Here is my first entry in my new static blog site, it's built using:

- reason-react
- remark
- postcss

What could more appropriate for a first entry to this blog system than documenting how I set everything up

## ReasonReact

At the very on-set of trying to follow the quickstart at [reason-react guides](https://reasonml.github.io/reason-react/), I encounter the following install error:

~~~text
Building js.ml
File "/Users/tchen2/.nvm/versions/node/v10.14.1/lib/node_modules/bs-platform/jscomp/runtime/js.ml", line 1:
Error: Corrupted compiled interface
/Users/tchen2/.nvm/versions/node/v10.14.1/lib/node_modules/bs-platform/jscomp/runtime/bs_stdlib_mini.cmi
make[1]: *** [js.cmj] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [libs] Error 2
child_process.js:651
    throw err;
    ^

Error: Command failed: make libs && make install
    at checkExecSyncError (child_process.js:611:11)
    at Object.execSync (child_process.js:648:13)
~~~

while trying to perform

~~~zsh
npm install -g bs-platform
~~~

As it turns out, it has to do with the version of bs-platform being broken - see [my bug report here](https://github.com/BuckleScript/bucklescript/issues/3191).

### Resolution

Downgrading bs-platform from `4.0.8` -> `4.0.5` solves this; with the proper install, I am now able to run:

~~~zsh
yarn run start
~~~

To start the ReasonML compilation


## Webpack Issue

Next, I tried to start the webpack and immediately was greeted by the strange type error 

~~~zsh
$ webpack -w
/Users/tchen2/Documents/GitHub/foxnewsnetwork/node_modules/webpack-cli/bin/config-yargs.js:89
				describe: optionsSchema.definitions.output.properties.path.description,
~~~

~~~text
TypeError: Cannot read property 'properties' of undefined
~~~

Welp, after a bit of search on the internet, it seems there's an issue with webpack versions also.

### Resolution

The solution here is to upgrade webpack from `2.1.x` to `4.19.1`, note that if we go into `4.20.x` this issue comes back and breaks it again.

Forcing `yarn add --dev webpack@4.19.1` allows me to properly run webpack

## Remark for Markdown

To render markdown, I decided to use the [remark engine](https://remark.js.org/) as it's apparently an extensible markdown engine that will support additional features via [remark plugins](https://github.com/remarkjs/remark/blob/master/doc/plugins.md):

- [code highlight](https://github.com/remarkjs/remark-highlight.js)
  - problematic
- [react codemirror](https://github.com/craftzdog/remark-react-codemirror)
- [react transform](https://github.com/mapbox/remark-react)

@TODO: document how I did this

## PostCSS for Styling

[PostCSS](https://postcss.org/) is what I decided to go with with regards to rendering styling. Luckily, the have a [setup for webpack guide](https://github.com/postcss/postcss#webpack)

- add there is *a lot* to add to get this to work
~~~zsh
`yarn add --dev postcss-loader style-loader css-loader autoprefixer precss`
~~~
- Put the following rules into my `webpack.config.js`'s rules section

~~~javascript
{
  test: /\.css$/,
  exclude: /node_modules/,
  use: [
    {
      loader: 'style-loader',
    },
    {
      loader: 'css-loader',
      options: {
        importLoaders: 1,
      }
    },
    {
      loader: 'postcss-loader'
    }
  ]
}
~~~

- Then create the `postcss.config.js` file with the following contents:

~~~javascript
module.exports = {
  plugins: [
    require('precss'),
    require('autoprefixer')
  ]
}
~~~

## References

- [reason-react guides](https://reasonml.github.io/reason-react/)
- [remark](https://remark.js.org/)
- [PostCSS](https://postcss.org/)
- [remark plugins](https://github.com/remarkjs/remark/blob/master/doc/plugins.md)
- [postcss plugins](https://www.postcss.parts/)
