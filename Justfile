dev:
    hugo mod tidy
    hugo server --logLevel debug --disableFastRender --baseURL "localhost:1313/ait/"

build:
    hugo --gc --minify
