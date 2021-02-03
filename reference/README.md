# Gradient Descent

+ **An overview of gradient descent optimization algorithms**
> 首先介绍梯度下降的三种类型batch gradient descent、stochastic gradient descent和mini-batch gradient descent，之后介绍标准梯度下降的变种形式，包括了Momentum（利用指数加权平均代替每一时刻的梯度值）、NAG（基于Momentum考虑下一时刻位置的梯度值）、Adagrad（将学习率除以之前所有时刻梯度值的平方和以自适应调整学习率）、Adadelta（基于Adagrad采用梯度平方的指数加权平均代替分母，采用每跳步长的指数加权平均代替学习率，因此可以不设定学习率）、RMSprop（基于Adagrad采用梯度平方的指数加权平均代替分母）、Adam（Momentum和RMSprop的结合）、AdaMax（类似Adam采用无穷范数计算分母）和Nadam（Adam和NAG的结合），最后介绍提升优化表现的技巧，包括打乱样本训练顺序和课程式学习（按照样本的难易程度顺序学习）、批标准化、早停和随机噪声的引入（可提高鲁棒性并容易跳出局部最优）。