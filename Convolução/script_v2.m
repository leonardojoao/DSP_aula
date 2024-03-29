%[x,n] = double(impseg(0,-10,10));
%[x,n] = impseg(0,-10,10);
[x,n] = sigdeg(0,-10,10);

%[x1,n1]= myfunction2(x,n);

[x3,n3] = stepseq(0,-10,10);
[y,ny] = conv_a(x,n,x3,n3);

[y1,ny1] = conv_n(x,n,x3,n3);

subplot(2,2,1);stem(n,x);title('Sinal X[n]');
subplot(2,2,2);stem(n3,x3);title('Sinal H[n]');
subplot(2,2,3);stem(ny1,y1);title('Convolu��o (fun��o matlab)');
subplot(2,2,4);stem(ny,y);title('Convolu��o (fun��o implementada)');