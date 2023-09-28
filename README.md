# ThreeJS-GLSL-Starter-Vite

Basic starter using ThreeJS and vite module for glsl. 

`npm i three`

`npm i vite-plugin-glsl`

`npm run dev`


Create vite config if it doesnt exist.

```js

import glsl from 'vite-plugin-glsl';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [glsl()]
});

```
