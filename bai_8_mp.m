syms t1 t2 t3 t4 t5 l1 l2 l3 l4 l5 l6 
q1=[cos(t1) 0 sin(t1) 0;0 1 0 0;-sin(t1) 0 cos(t1) 0;0 0 0 1]
q2=[1 0 0 l1;0 1 0 0;0 0 1 0;0 0 0 1]
q3=[1 0 0 0;0 1 0 l2;0 0 1 0;0 0 0 1]
q4=[cos(t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0;0 0 1 0;0 0 0 1]
q5=[1 0 0 0;0 1 0 l3;0 0 1 0; 0 0 0 1]
q6=[cos(t3) -sin(t3) 0 0;sin(t3) cos(t3) 0 0;0 0 1 0; 0 0 0 1]
q7=[1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1]
q8=[cos(t4) -sin(t4) 0 0;sin(t4) cos(t4) 0 0;0 0 1 0;0 0 0 1]
q9=[1 0 0 0;0 1 0 l5;0 0 1 0;0 0 0 1]
q10=[1 0 0 l6;0 1 0 0;0 0 1 0;0 0 0 1]
q11=[cos(t5) -sin(t5) 0 0;sin(t5) cos(t5) 0 0;0 0 1 0;0 0 0 1]
q12=[0;0;0;1]
k=q1*q2*q3*q4*q5*q6*q7*q8*q9*q10*q11*q12
simplify(k)
l1=20
l2=50
l3=40
l4=20
l5=20
l6=20
l7=20
syms t1 t2 t3 
for t1=0:0.1:pi
    for t2=0:0.1:pi
        for t3=0:0.1:pi
            for t4=0:0.1:pi
                for t5=0:0.1:pi
                    px= cos(t1)*(l1 + l4*cos(t2 + t3) - l3*sin(t2) + l6*cos(t2 + t3 + t4) - l5*sin(t2 + t3 + t4));
                    py= l2 + l4*sin(t2 + t3) + l3*cos(t2) + l5*cos(t2 + t3 + t4) + l6*sin(t2 + t3 + t4);
                    pz=-sin(t1)*(l1 + l4*cos(t2 + t3) - l3*sin(t2) + l6*cos(t2 + t3 + t4) - l5*sin(t2 + t3 + t4));

                plot3(px,py,pz,'*')
                hold on
                end
            end
        end 
    end
end
            

