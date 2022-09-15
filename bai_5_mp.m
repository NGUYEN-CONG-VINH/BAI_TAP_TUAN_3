syms t1 t2 t3 l1 l2
q1=[cos(t1) 0 sin(t1) 0;0 1 0 0;-sin(t1) 0 cos(t1) 0;0 0 0 1]
q2=[1 0 0 0;0 cos(t2) -sin(t2) 0;0 sin(t2) cos(t2) 0;0 0 0 1]
q3=[1 0 0 0;0 1 0 0;0 0 1 -l1;0 0 0 1]
q4=[cos(t3) 0 sin(t3) 0;0 1 0 0;-sin(t3) 0 cos(t3) 0;0 0 0 1]
q5=[1 0 0 0;0 1 0 0;0 0 1 -l2;0 0 0 1]
q6=[0;0;0;1]
k=q1*q2*q3*q4*q5*q6
simplify(k)

l1=20
l2=50
syms t1 t2 t3 
for t1=0:0.1:pi
    for t2=0:0.1:pi
        for t3=0:0.1:pi
            px=-l2*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) - l1*cos(t2)*sin(t1);
            py=sin(t2)*(l1 + l2*cos(t3));
            pz=l2*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) - l1*cos(t1)*cos(t2);
            plot3(px,py,pz,'*')
            hold on
        end 
    end
end
            

