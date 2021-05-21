picture=imread('1.jpg');

%for example 
%gray image transformation function is
%gray=rgb2gray(picture);

%gray image transformation algorithm is equivalent this function
%image size -> 412x580x3

for i=1:size(picture,1) %i goes up to 412 (raw size)
    for j=1:size(picture,2) %j goes up to 580 (column)
        for k=1:size(picture,3)
            graypic(i,j)=picture(i,j,1)*0.3+picture(i,j,2)*0.2+picture(i,j,3)*0.5;
        end     
    end
end
%also 
%gray=picture(:,:,1)/3+picture(:,:,2)/3+picture(:,:,3)/3;

%imhist(graypic) function used for histogram
%this is the histogram algorithm

pixel=zeros([1 256]);
value=0;

for raw=1:size(graypic,1)
    for column=1:size(graypic,2)
            value=resim(raw,column);
            value1=double(value);
            pixel(value1)++;
         
        end 
    end 
end
