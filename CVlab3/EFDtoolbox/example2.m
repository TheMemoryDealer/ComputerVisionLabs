% Normalized

c = [2 3 3 3 4 4 6 7 6 6 5 4 4 4 3 3 2 6 7 7 0 0 0 1 2 2 3 2 5 4 5 4 3 3 2 2 1 5 6 6 7 7 0 1 0 1 4 4 4 3 2 2 1 1 0 4 5 5 6 6 7 0 0 0 3 2 1 1 0 7 7 3 3 4 5 5 6 7 1 0 0 0 7 7 6 2 3 3 4 4 4 5 0 0 7 7 7 6];
plot_chain_code(c)
hold
plot_fourier_approx(c, 30, 200, -1, 'r');

