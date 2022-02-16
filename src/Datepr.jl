
module Datepr
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_datepickerrange.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "datepr",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "datepr.min.js",
    external_url = "https://unpkg.com/datepr@0.0.1/datepr/datepr.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "datepr.min.js.map",
    external_url = "https://unpkg.com/datepr@0.0.1/datepr/datepr.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
