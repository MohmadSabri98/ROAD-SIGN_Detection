

ima=imread('8.3.jpg');
ic=rgb2hsv(ima);
[h w l]=size(ic);
res=zeros(h,w);
sum=0;
for i=1:h
    for j=1:w  
%         Red signs
         if(((ic(i,j,1)*360>=240))&&(ic(i,j,2)>=.3)&&(ic(i,j,3)>=.30))
            res(i,j)=255;
           sum=sum+1;
          end
%           if((ic(i,j,1)*360>=350) && (ic(i,j,2)<=.2520&&ic(i,j,2)>=.05)&&(ic(i,j,3)>=.30))
%             res(i,j,:)=ima(i,j,:);
%            sum=sum+1;  
%           end
           if(( (ic(i,j,1)*360<=10))&&(ic(i,j,2)>=.40)&&(ic(i,j,3)>=.40))
             res(i,j)=255;
           end
    %yellow signs 4.2
           if((ic(i,j,1)*360>=37&& ic(i,j,1)*360<=49)&&(ic(i,j,2)>=.60)&&(ic(i,j,3)>=.90))
              res(i,j)=255;
               sum=sum+1;
           end
% %6.3 
          if((ic(i,j,1)*360>=50&& ic(i,j,1)*360<=65)&&(ic(i,j,2)>=.89&&ic(i,j,2)<=.99)&&(ic(i,j,3)>=.55&&ic(i,j,3)<=.62))
               res(i,j)=255;
               sum=sum+1;
          end
%    % 5.3    
          if((ic(i,j,1)*360>=15&& ic(i,j,1)*360<=45)&&(ic(i,j,2)>=.89&&ic(i,j,2)<=1)&&(ic(i,j,3)>=.90&&ic(i,j,3)<=.99))
               res(i,j)=255;
               sum=sum+1;
            end
         if((ic(i,j,1)*360>=55&& ic(i,j,1)*360<=67)&&(ic(i,j,2)>=.25)&&(ic(i,j,3)>=.65))
               res(i,j)=255;
               sum=sum+1;
            end
         %blue signs
         if((ic(i,j,1)*360>230&& ic(i,j,1)*360<=237)&&(ic(i,j,2)>=.75)&&(ic(i,j,3)>=.75))
        res(i,j)=255;
         end
         
    end
    
    
    
end

figure , imshow(res);