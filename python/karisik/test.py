def add_column(a):
    """
     >>> a = [[1, 2], [3, 4]]
     >>> add_column(a)
     [[1, 2, 0], [3, 4, 0]]
     >>> a
     [[1, 2], [3, 4]]
    """
    t = []
    for i in a:
        t.append(i + [0])
    return t
