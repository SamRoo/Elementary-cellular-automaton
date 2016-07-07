function ECA(rule, array, steps)
	%a is an array input
	a = array;
	len = length(a);
	for i = 1: steps
		newline = zeros(1,len);
		value = [a(i,2) a(i,1) a(i,len)]; %opposite order because matlab binary goes from lsb to msb
		newline(1) = decode(rule, value);
		for n = 2: len -1
			value = [a(i,n+1) a(i,n) a(i,n-1) ];
			newline(n) = decode(rule, value);
		end
		value = [a(i,1) a(i,len) a(i,len-1)];
		newline(len) = decode(rule, value);
		a = [a;newline];
	end
	imshow(imcomplement(a));
end

function cell = decode(rule, n)
	r = de2bi(rule,8);
	i = bi2de(n);
	cell = r(i+1);
end
