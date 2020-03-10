Mx=input('Mx deðerini giriniz:');
Nx=input('Nx deðerini giriniz:');
x=input('x[n] dizisini giriniz:');
Lx=Nx-Mx+1;


Mh=input('Mh deðerini giriniz:');
Nh=input('Nh deðerini giriniz:');
h=input('h[n] dizisini giriniz:');
Lh=Nh-Mh+1;

Ly=Lx+Lh-1;
tersh = zeros(1,Lh);
for i = 0:Lh-1
tersh(i+1)=h(Lh-i);
end

y=zeros(1,Ly);
top=0;  
for k=1:Ly
    if(k<=Lx)
        j=Lh;
        i=k;
    else
        j=j-1;
        i=Lx;
    end
    top=0;
    b=j;
    while(i>0 && j>0)
       top=top+(x(i)*tersh(j));
       i=i-1;
       j=j-1;  
   end
   y(k)=top;
   j=b;
end
subplot(2,2,1);
n=Mx:Nx;
stem(n,x,'filled');
title('X[n] sinyali') 

subplot(2,2,2);
n=Mh:Nh;
stem(n,h,'filled');
title('H[n] sinyali')

subplot(2,2,3);
n=Mx+Mh:Nx+Nh;
stem(n,y,'filled')
title('MY CONVOLUTÝON FUNCTÝON')


subplot(2,2,4);
n=Mx+Mh:Nx+Nh;
stem(n,conv(x,h),'filled')
title('MATLAB CONVOLUTÝON FUNCTÝON')
 
