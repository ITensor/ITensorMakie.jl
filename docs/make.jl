using ITensorMakie
using Documenter

DocMeta.setdocmeta!(
  ITensorMakie, :DocTestSetup, :(using ITensorMakie); recursive=true
)

makedocs(;
  modules=[ITensorMakie],
  authors="ITensor developers",
  sitename="ITensorMakie.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/ITensorMakie.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/ITensor/ITensorMakie.jl", devbranch="main")
