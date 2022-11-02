"""
    fig()

Creates [Matplotlib figure](https://matplotlib.org/) object with a 6x6 size and custom formating. Quick way of keeping figure layout consistent

If plot doesn't display run `pygui(true)` and try again. This should open the matplotlib GUI when a figure object is generated.

# Example
```
julia> fig()

```
"""
function fig()
    plt.figure(figsize = (6, 6))
    rc("xtick.major", size = 4)
    rc("xtick.major", width = 3)
    rc("ytick.major", size = 4)
    rc("ytick.major", width = 3)
    rc("xtick",labelsize=17)
    rc("ytick",labelsize=17)
    rc("font", weight="bold")
    rc("axes", labelsize=17, linewidth=3)
    plt.subplots_adjust(bottom=0.2)
    plt.subplots_adjust(left=0.25)
end

"""
    fig(width::Float64, height::Float64)

Creates [Matplotlib figure](https://matplotlib.org/) object with a 6x6 size and custom formating. Quick way of keeping figure layout consistent

# Example
```
julia> fig(4, 4)

```
# Example
```
julia> fig(14, 8)

```
"""
function fig(width::Number, height::Number)
    plt.figure(figsize = (width, height))
    rc("xtick.major", size = 4)
    rc("xtick.major", width = 3)
    rc("ytick.major", size = 4)
    rc("ytick.major", width = 3)
    rc("xtick",labelsize=17)
    rc("ytick",labelsize=17)
    rc("font", weight="bold")
    rc("axes", labelsize=17, linewidth=3)
    plt.subplots_adjust(bottom=0.2)
    plt.subplots_adjust(left=0.25)
end