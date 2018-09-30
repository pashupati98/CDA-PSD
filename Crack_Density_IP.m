a=imread('20. SF-25_ HA - Picture1.jpg');
imshow(a)
b=rgb2gray(a);
figure, imshow(b) 
c = a>90;
figure, imshow(c)
p=size(a);

count=0;
for i=1:p(1,1)
    for j=1:p(1,2)
        d=c(i,j);
        if d==0
            count=count+1;
        end
    end
end

pixel_size=0.645*0.645;
area=count*pixel_size;
dia=sqrt((4*area)/3.14);



