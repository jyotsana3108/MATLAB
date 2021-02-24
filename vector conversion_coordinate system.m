>> system = menu('vector conversion_coordinate system','Cartesian to cylindrical','Cylindrical to Cartesian','Cartesian to spherical','Spherical to cartesian');
>> a1 = input('Enter the values of 1st  coefficient = ');
>> a2 = input('Enter the values of 2nd  coefficient = ');
>> a3 = input('Enter the values of 3rd  coefficient = ');
>> A =[a1,a2,a3]’ ;
>> switch(system)
     case1
           if((-inf<a1)<inf && (-inf<a2)<inf &&(-inf<a3)<inf)
                   phi = atan(a2/a1);
                    S = [cos(phi),sin(phi),0; -sin(phi),cos(phi),0;0,0,1];
                    M = S*A;
           else
              disp(‘error!!’);
           end
     case2
           if((0<=a1)<inf && (0<=a2)<2*pi && (-inf<a3)<inf)
                   S = [cos(a2),-sin(a2),0; sin(a2),cos(a2),0;0,0,1];
                   M = S*A;
           else
              disp(‘error!!’);
           end
     case3
           if((-inf<a1)<inf && (-inf<a2)<inf &&(-inf<a3)<inf)
               phi = atan(a2/a1);
               rhow = sqrt(a1*a1+a2*a2);
               theta = atan(rhow/a3);
               S = [sin(theta)*cos(phi),sin(theta)*sin(phi),cos(theta); cos(theta)*cos(phi),cos(theta)*sin(phi),-sin(theta);-sin(phi),cos(phi),0];
               M = S*A;           
          else
              disp(‘error!!’);
           end
     case4
           if((0<=a1)<inf && (0<=a2)<=pi && (0<=a3)<2*pi)
                S = [sin(a2)*cos(a3),cos(a2)*cos(a3),-sin(a3); sin(a2)*sin(a3),cos(a2)*sin(a3),cos(a3);cos(a2),-sin(a2),0];
                M = S*A;
           else
              disp(‘error!!’);
           end  
     otherwise     
          disp(‘Error!’);
     end
 >>disp(M)

