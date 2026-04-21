using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using ITensorMakie: ITensorMakie

DocMeta.setdocmeta!(
    ITensorMakie, :DocTestSetup, :(using ITensorMakie); recursive = true
)

ITensorFormatter.make_index!(pkgdir(ITensorMakie))

makedocs(;
    modules = [ITensorMakie],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "ITensorMakie.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/ITensorMakie.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/ITensorMakie.jl", devbranch = "main",
    push_preview = true
)
