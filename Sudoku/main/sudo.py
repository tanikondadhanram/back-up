def RandGenerator(board, nOfCellsToBeFilled, shouldCreateNewBoard):
    copyOfTheBoard = board.copy()
    if shouldCreateNewBoard:
        newBoardWithZeros = [[0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0]]
        copyOfTheBoard = makeNewSudo(
            newBoardWithZeros, 1)
        return RandGenerator(copyOfTheBoard, nOfCellsToBeFilled, 2)


def makeNewSudo(board):
    copyOfTheBoard = board.copy()
    for i in range(9):
        for j in range(9):
            posnum = FindPosNums(copyOfTheBoard, i, j)
    return copyOfTheBoard
