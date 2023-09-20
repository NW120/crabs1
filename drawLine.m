function handle = drawLine (p, q, color)

x=[p(1);q(1)];
y=[p(2);q(2)];
handle = plot(x,y,color);
set(handle, "LineWidth", 2);

%{
x= -10:0.05:10;
plot(x, (x*3))
%}
endfunction
