## declare the SVD type here: duplicates base/linalg/svd.jl definition
## which, along with all other factorization types, has been lost in current Julia
## (Version 0.4.5 (2016-03-18 00:58 UTC))

immutable SVD{T,Tr,M<:AbstractArray} <: Factorization{T}
    U::M
    S::Vector{Tr}
    Vt::M
    SVD(U::AbstractArray{T}, S::Vector{Tr}, Vt::AbstractArray{T}) = new(U, S, Vt)
end

export SVD
