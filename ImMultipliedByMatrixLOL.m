function out = ImMultipliedByMatrix(Im,M)
s = size(Im);
tmp = reshape(Im,[s(1)*s(2),s(3)]);
out = reshape(tmp*M,[s(1),s(2),s(3)]);