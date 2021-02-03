% Momentum Gradient Descent
x=linspace(-6,8,10000);
y=f(x);
plot(x,y);
xlabel('x');
ylabel('y');
hold on;
alpha=0.018;
beta=0.9;
momentum=1;
nabula_ea=0;
x_init=-5;
x_now=x_init;
scatter(x_now,f(x_now),'k');
fmat=moviein(50);
for iteration=1:50
    fmat(:,iteration)=getframe;
    if momentum
        nabula_ea=[nabula_ea;beta*nabula_ea(end)+(1-beta)*f_grad(x_now)];
        x_now=x_now-alpha*nabula_ea(end);
    else
        x_now=x_now-alpha*f_grad(x_now);
    end
    scatter(x_now,f(x_now),'r');
end
movie(fmat,1);

% objective fucntion
function y=f(x)
y=(x+3).*(x+2).*(x-1).*(x-8);
end

% gradient of objective function
function y_grad=f_grad(x)
y_grad=4.*x^3-12*x^2-62.*x-14;
end