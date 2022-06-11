ima=imread('5.1.jpg');ima=imread('5.1.jpg');
figure,imshow(ima);
%ans=impixel(ima);
minred=min(ans(:,1));
maxred=max(ans(:,1));
mingreen=min(ans(:,2));
maxgreen=max(ans(:,2));
minblue=min(ans(:,3));
maxblue=max(ans(:,3));
[h w l]=size(ima);
res=zeros(h,w,l);
for i=1:h
    for j=1:w
  if((ima(i,j,1)>=minred&&ima(i,j,1)<=maxred)&&(ima(i,j,2)>=mingreen&&ima(i,j,2)<=maxgreen)&&(ima(i,j,3)>=minblue&&ima(i,j,3)<=maxblue))
        res(i,j,:)=ima(i,j,:);
         end
    end
end














if(((ic(i,j,1)>=240)|| (ic(i,j,1)<=10))&&(ic(i,j,2)>=40)&&(ic(i,j,3)>=40))
        res(i,j,:)=ima(i,j,:);
        sum=sum+1;
       end
if((ima(i,j,1)>=18&& ima(i,j,1)<=45)&&(ima(i,j,2)>=148)&&(ima(i,j,3)>=66))
        res(i,j,:)=ima(i,j,:);
         end
         if((ima(i,j,1)>120&& ima(i,j,1)<=175)&&(ima(i,j,2)>=127.5)&&(ima(i,j,3)>=20))
        res(i,j,:)=ima(i,j,:);
         end