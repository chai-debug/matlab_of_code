function y=f(x)
if x==1
    y=1;
else 
    y=x*f(x-1);
end
end