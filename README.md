PolyLog.jl
==========

The PolyLog.jl package provides Julia implementations of real and
complex polylogarithms.


Example
-------

```
include("src/PolyLog.jl")

println(li2(1.0))
println(li2(1.0 + 1.0im))
```


Notes
-----

The implementation of the complex dilogarithm has been inspired by the
implementation in [SPheno](https://spheno.hepforge.org) and has been
translated to Julia.


Citation
--------

~~~
@software{PolyLog.jl,
    author       = {{Alexander Voigt}},
    title        = {{PolyLog.jl}},
    year         = "2021",
    version      = {0.1.0},
    url          = {https://github.com/Expander/PolyLog.jl},
    note         = "[License: MIT]"
}
~~~


Copying
-------

PolyLog.jl is licenced under the MIT License.
