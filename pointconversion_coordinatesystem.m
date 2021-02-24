system = menu('point conversion_coordinate system','Cartesian to cylindrical','Cylindrical to Cartesian','Cartesian to spherical','Spherical to cartesian');
a1 = input('Enter the values of 1st coordinate = ');
a2 = input('Enter the values of 2nd coordinate = ');
a3 = input('Enter the values of 3rd coordinate = ');
switch(system)
    case 1
        if((-inf<a1)<inf&&(-inf<a2)<inf&&(-inf<a3)<inf)
         S = [sqrt(a1*a1+a2*a2),atan(a2/a3),a3];
        else
            disp('error!!');
        end
    case 2
        if((0<a1)<inf&&(0<a2)<2*pi&&(-inf<a3)<inf)
         S = [a1*cos(a2),a1*sin(a2),a3];
        else
            disp('error!!');
        end
    case 3
        if((-inf<a1)<inf&&(-inf<a2)<inf&&(-inf<a3)<inf)
          S = [sqrt(a1*a1+a2*a2+a3*a3),atan((sqrt(a1*a1+a2*a2))/a3),atan(a2/a1)];
        else
            disp('Error!')
        end
    case 4
        if((0<a1)<inf&&(0<a2)<2*pi&&(0<a3)<2*pi)
            S = [a1*sin(a2)*cos(a3),a1*sin(a2)*sin(a3),a1*cos(a2)];
        else
            disp('error!!');
        end
    otherwise
        disp('Error!!');
end
disp(S)     
