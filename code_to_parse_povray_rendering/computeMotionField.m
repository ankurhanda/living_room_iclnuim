function [Mx, My] = computeMotionField(x2,y2,z2,K1,R1,T1,R2,T2)

Mx = zeros(size(x2,1), size(x2,2));
My = zeros(size(x2,1), size(x2,2));

[R1 T1]
[R2 T2]


for r=1:size(x2,1)
    for c=1:size(x2,2)
        P = [x2(r,c) y2(r,c) z2(r,c)]';
        
        p = K1 * R1' *( R2*P + T2 - T1 );
        
        p = p/p(3);
        
        Mx(r,c) = p(1) - c;
        
        My(r,c) = p(2) - r;
        
    end
end


end
