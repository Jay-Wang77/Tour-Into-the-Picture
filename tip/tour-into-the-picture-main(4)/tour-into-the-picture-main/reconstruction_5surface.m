function reconstruction_5surface(surfaces)
[m,n,p]=size(surfaces{1});
[X,Y] = meshgrid(1:n,1:m);
Z=zeros(m,n);
C=surfaces{1};
h1=surface(X,Y,Z,C);
set(h1,'LineStyle','none')
hold on 

[m,n,p]=size(surfaces{2});
[Z,Y] = meshgrid(-n:-1,1:m);
X=ones(m,n);
C=surfaces{2};
h2=surface(X,Y,Z,C);
set(h2,'LineStyle','none')

[m,n,p]=size(surfaces{3});[m1,n1,p1]=size(surfaces{1});
[X,Z] = meshgrid(1:n,-m:-1);
Y=m1*ones(m,n);
C=surfaces{3};
h3=surface(X,Y,Z,C);
set(h3,'LineStyle','none')

[m,n,p]=size(surfaces{4});[m1,n1,p1]=size(surfaces{1});
[Z,Y] = meshgrid(-n:-1,1:m);
X=n1*ones(m,n);
C=fliplr(surfaces{4});
h4=surface(X,Y,Z,C);
set(h4,'LineStyle','none')

[m,n,p]=size(surfaces{5});[m1,n1,p1]=size(surfaces{1});
[X,Z] = meshgrid(1:n,-m:-1);
Y=ones(m,n);
C=fliplr(surfaces{5});
h5=surface(X,Y,Z,C);
set(h5,'LineStyle','none')
axis equal
end