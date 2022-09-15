syms t1 t2 l1 l2 l3 l4 l5 
q1=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1]
q2=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1]
q3=[1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1]
q4=[1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1]
q5=[cos(t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0; 0 0 1 0;0 0 0 1]
q6=[1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1]
q7=[1 0 0 0;0 1 0 0;0 0 1 -l5;0 0 0 1]
q8=[0;0;0;1]
k=q1*q2*q3*q4*q5*q6*q7*q8
simplify(k)
l1=20
l2=50
l3=20
l4=20
l5=10
syms t1 t2 
for t1=0:0.1:pi
    for t2=0:0.1:pi
            px=l4*cos(t1 + t2) + l2*cos(t1);
            py=l4*sin(t1 + t2) + l2*sin(t1);
            pz=l1 + l3 - l5;
            plot3(px,py,pz,'*')
            hold on
    end
end
