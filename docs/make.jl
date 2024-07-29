using Documenter
include("DummyDocs.jl")
using .DummyDocs

makedocs(
    sitename="BcdiMeso.jl",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true"
    ),
    pages = [
        "Main"=>"index.md",
        "Usage"=>"use.md"
    ]
)

deploydocs(
    repo = "github.com/byu-cig/BcdiMeso.jl.git",
)