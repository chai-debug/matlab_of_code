clc                 %clc：清除命令窗口的内容，对工作环境中的全部变量无任何影响
clear all;          %clear all：清除工作空间的所有变量，函数，和MEX文件
close all;          %close all:关闭所有的Figure窗口

hn=figure('name','心形图','MenuBar','None');  %产生一个窗口
set(hn,'color','w');                            %将背景设为白色

for n=1:100          %循环100次
    cla                    %即清除当前图形中的当前活动轴。其他轴不受影响。

    t=num2str(n);%把n转化为字符串

    Lf1='(-x)^(2/3)+(0.9*(3.3-(-x)^2)^0.5)*sin(';

    Lf2='*pi*(-x))';

    Left=[Lf1,t,Lf2];           %左侧的函数

    ezplot(Left);               %一维绘图函数
    hold on             	    %在作用下一幅图像时保留已有图像
    Rf1='x^(2/3)+(0.9*(3.3-x^2)^0.5)*sin(';
    Rf2='*pi*x)';
    Right=[Rf1,t,Rf2];          %这样分开处理目的是通过t的变化产生动画效果
                                %左右两侧函数是一样的，只是将变量对称
    ezplot(Right);               %右侧的函数
    hold off
    axis([-2 2 -1.5 2.5]);       %坐标轴范围
    axis off                     %取消对坐标轴的一切设置
    drawnow;                     %刷新一下  产生动画效果 
    title('心形图')
    f=getframe(gcf);
    imind=frame2im(f);
    [imind,cm] = rgb2ind(imind,256);
    if n == 1
        imwrite(imind,cm,'AmModulation.gif','GIF', 'Loopcount',inf,'DelayTime',0.1);
    else
        imwrite(imind,cm,'AmModulation.gif','GIF','WriteMode','append','DelayTime',0.1);
    end

end
