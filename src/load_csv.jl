function load_csv(filepath, filename=nothing)
    data = []
    if filename == nothing
        csv_check = true
        while csv_check
            
            files = readdir(filepath)
            
            menu = RadioMenu(files, pagesize=5, charset=:unicode)
            choice = request("Choose a .csv file to load:\n(Navgate with arrow keys, press enter to select)", menu)

            if choice != -1
                if contains(files[choice], ".csv")
                    csv_check = false
                    println("Loading ", files[choice], "...")
                    data = CSV.read(filepath*files[choice], header=1, Tables.matrix)
                    println("Complete!")
                else
                    filepath = string(filepath, files[choice], "/")
                    continue
                end
            else
                println("menu cancelled.")
                return
            end
        end
    else
        data = CSV.read(filepath*filename, header=1, Tables.matrix)
    end

    if size(data)[2] == 3
        x, y, z = transmute2D(data)
        return x, y, z
    else
        return data[:,1], data[:, 2]
    end
end



# "C:/users/angus/OneDrive - University of Strathclyde/Documents/University work/5th Year/Project/Angus_VNA/"

function transmute2D(loaded_csv)
    x_size = 0  
    y_size = 1
    for i = 2:size(loaded_csv,1)
        if loaded_csv[i,1] != loaded_csv[i-1,1] 
            if x_size==0
                x_size= i-1
            end
            y_size+=1
            
        end
    end

    # Initialises the x and y Vectors and z Array.
    z = fill(NaN, (x_size, y_size))
    x = fill(NaN, (x_size))
    y = fill(NaN, (y_size))
    x_index = 1
    y_index = 1
    first_run = true

    # This loop puts the values into our empty vectors and array
    for i = 1 : size(loaded_csv,1)
        z[x_index, y_index] = loaded_csv[i, 3]
        
        if first_run == true
            x[x_index] = loaded_csv[i, 2]
        end
        x_index += 1

        if mod(i, x_size) == 0
            y[y_index] = loaded_csv[i, 1]
            y_index +=1
            first_run = false
            x_index = 1
        end
    end
    return x, y, z'
end