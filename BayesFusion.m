function [I,C,D] = BayesFusion(U,V)

Y = U-V;
RHO = 1;
LAMBDA = 0.5;

MaxIter = 15;
NumIter = 2;

k1 = [1,-1];k2 = [1;-1];
fft_k1 = psf2otf(k1, size(Y));
fft_k2 = psf2otf(k2, size(Y));
fft_k1sq = conj(fft_k1).*fft_k1;
fft_k2sq = conj(fft_k2).*fft_k2;

C  = ones(size(Y));   D = ones(size(Y));
F2 = zeros(size(Y)); F1 = zeros(size(Y));
H  = zeros(size(Y));
tau_a = 1; tau_b = 1;

for i=1:MaxIter
    % m-step
    for j=1:NumIter
        X = (2*C.*Y+RHO.*H)./(2*C+2*D+RHO);
        H = prox_tv(X,F1,F2, fft_k1, fft_k2, fft_k1sq, fft_k2sq);
        F1 = prox_soft(imfilter(H,k1), LAMBDA./RHO);
        F2 = prox_soft(imfilter(H,k2), LAMBDA./RHO);
    end
    
    % e-step
    D = sqrt(2/tau_b./(X.^2+1e-6));
    C = sqrt(2/tau_a./((Y-X+1e-6).^2));
    D(D>2*C) = 2*C(D>2*C);
    RHO = .5*(C+D);
    
    tau_b = 1./(D+1e-6)+tau_b/2; tau_b = mean(tau_b(:));
    tau_a = 1./(C+1e-6)+tau_a/2; tau_a = mean(tau_a(:));
end
I = X+V;
end

function y = prox_soft(x, thre)
y = sign(x).*max(abs(x)-thre,0);
end

function H=prox_tv(X, F1, F2, fft_k1, fft_k2, fft_k1sq, fft_k2sq)
% C = argmin_{C} |k1*C-D1|^2 + |k2*C-D2|^2 + |X-C|^2

fft_X = fft2(X);
fft_F1 = fft2(F1);
fft_F2 = fft2(F2);

H = fft_X + conj(fft_k1).*fft_F1 + conj(fft_k2).*fft_F2;
H = H./( 1+fft_k1sq+fft_k2sq);
H = real(ifft2(H));
end