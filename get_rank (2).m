function rank = get_rank(A)
[r,c]=size(A);
im=0;
for i=1:c
    i2=i-im;
    if A(i2,i)==0
        max=A(i2,i);
        maxi=i;
        for k=i+1:r
            if abs(A(k,i2))>abs(max)
                max=A(k,i2);
                maxi=k;
            end
        end
        if max~=0
        A([i,maxi],:)=A([maxi,i],:);
        else
            im=im+1;
            continue;
        end
    end
    for j=i2+1:r
        A(j,:)=A(j,:)-A(j,i)/A(i2,i)*A(i2,:);
        A(j,i)=0;
    end
end
rank=0;
for i=1:r
    nonzerorow=true;
    for j=1:c
        if A(i,j)~=0
           nonzerorow=false;
           break;
        end
    end
    if(nonzerorow)
        break;
    else
        rank=rank+1;
    end
end
end