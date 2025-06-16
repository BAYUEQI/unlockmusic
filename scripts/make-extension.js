#!/usr/bin/env node

const fs = require('fs')
const path = require('path')

const DIR_ROOT = path.resolve(__dirname, "..")
const src = DIR_ROOT + "/src/extension/"
const dst = DIR_ROOT + "/dist"
fs.readdirSync(src).forEach(file => {
    let srcPath = path.join(src, file)
    let dstPath = path.join(dst, file)
    fs.copyFileSync(srcPath, dstPath)
    console.log(`Copy: ${srcPath} => ${dstPath}`)
})

const manifestRaw = fs.readFileSync(DIR_ROOT + "/extension-manifest.json", "utf-8")
const manifest = JSON.parse(manifestRaw)

const pkgRaw = fs.readFileSync(DIR_ROOT + "/package.json", "utf-8")
const pkg = JSON.parse(pkgRaw)

verExt = pkg["version"]
if (verExt.startsWith("v")) verExt = verExt.slice(1)
if (verExt.includes("-")) verExt = verExt.split("-")[0]
manifest["version"] = `${verExt}.${pkg["ext_build"]}`
manifest["version_name"] = pkg["version"]

fs.writeFileSync(DIR_ROOT + "/dist/manifest.json", JSON.stringify(manifest), "utf-8")
console.log("Write: manifest.json")
