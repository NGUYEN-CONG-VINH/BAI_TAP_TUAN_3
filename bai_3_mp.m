syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 l7 l8
q1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1]
q2=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1]
q3=[1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1]
q4=[cos(t2) 0 sin(t2) 0;0 1 0 0;-sin(t2) 0 cos(t2) 0;0 0 0 1]
q5=[1 0 0 0;0 1 0 -l3;0 0 1 0;0 0 0 1]
q6=[1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1]
q7=[cos(t3) 0 sin(t3) 0;0 1 0 0;-sin(t3) 0 cos(t3) 0;0 0 0 1]
q8=[1 0 0 0;0 1 0 0;0 0 1 -l8;0 0 0 1]
q9=[cos(t4) 0 sin(t4) 0;0 1 0 0;-sin(t4) 0 cos(t4) 0;0 0 0 1]
q10=[1 0 0 0;0 1 0 -l6;0 0 1 0;0 0 0 1]
q11=[1 0 0 l7;0 1 0 0;0 0 1 0;0 0 0 1]
q12=[0;0;0;1]
q14=[1 0 0 l5;0 1 0 0;0 0 1 0;0 0 0 1]
k=q1*q2*q3*q4*q5*q6*q7*q8*q14*q9*q10*q11*q12
simplify(k)
l1=20
l2=50
l3=40
l8=20
l4=20
l5=20
l6=20
l7=20
syms t1 t2 t3 t4 t5
for t1=0:0.2:pi/2
    for t2=0:0.2:pi/2
        for t3=0:0.2:pi/2
            for t4=0:0.1:pi/2
            px=l2*cos(t1)+l3*sin(t1) + l6*sin(t1)+l5*cos(t2 + t3)*cos(t1) - l8*sin(t2 + t3)*cos(t1) + l4*cos(t1)*cos(t2) + l7*cos(t2 + t3 + t4)*cos(t1);
            py=l2*sin(t1)-l6*cos(t1)-l3*cos(t1)+l5*cos(t2 + t3)*sin(t1) - l8*sin(t2 + t3)*sin(t1) + l4*cos(t2)*sin(t1) + l7*cos(t2 + t3 + t4)*sin(t1);
            pz=l1-l8*cos(t2 + t3) - l5*sin(t2 + t3) - l4*sin(t2) - l7*sin(t2 + t3 + t4);
            plot3(px,py,pz,'*')
            hold on
            end
        end 
    end
end
            

