
module DatePickerRange
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_datepickerrangeinternational.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "date_picker_range",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "date_picker_range.min.js",
    external_url = "https://unpkg.com/date_picker_range@0.0.1/date_picker_range/date_picker_range.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "date_picker_range.min.js.map",
    external_url = "https://unpkg.com/date_picker_range@0.0.1/date_picker_range/date_picker_range.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
