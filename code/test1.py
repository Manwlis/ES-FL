def function1( array ):
    import numpy as np

    print( array )

    temp = array[0]

    array[0] = array[0] * array[1]
    array[1] = temp / array[1]

    #return array
