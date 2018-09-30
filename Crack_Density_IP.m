a=imread('e22.png');
%imshow(a)
b=rgb2gray(a);
% figure, imshow(b) 
c = b>100;
figure, imshow(c)

count=0;
for i=1:1200
    for j=1:1600
        d=c(i,j);
        if d==0
            count=count+1;
        end
    end
end
total_pixels =1200*1600;
crack_density = count/total_pixels;

