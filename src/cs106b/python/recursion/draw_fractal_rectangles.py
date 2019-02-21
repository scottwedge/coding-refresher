from matplotlib import pyplot as plt
from matplotlib.patches import Rectangle

someX, someY = 0.5, 0.5
plt.figure()
currentAxis = plt.gca()
currentAxis.add_patch(Rectangle((someX - .1, someY - .1), 0.2, 0.2, fill=None, alpha=1))
plt.show()
# need to learn how the plt works