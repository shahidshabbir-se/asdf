import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

// https://vite.dev/config/
export default defineConfig({
  plugins: [svelte()],
  server:{
port:5173,
strictPort:false,
},
preview:{
port:4173,
strictPort:false,
}
})
