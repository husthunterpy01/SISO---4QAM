%%%%
%%%%%%%%%%to perform qam modulation it is necessary t convert the input 
%data stream in to binary representation where each group of binary bits 
% represents its decimal conversion%%%% 
%%% the code is for 4 QAM%%%%%%%%%%
n=10^3
M=4
no_of_rows=n/2;
no_of_bits_in_symbol=2;
data_in=randint(1,n);
len_data_in=length(data_in);

%%
%%%%%%%%%%%% Bit to Symbol Mapping and serial to parallel conversion %%%%%%
data_instp=reshape(data_in,no_of_rows,no_of_bits_in_symbol);
size(data_instp);
data_in_sym=bi2de(data_instp);
size(data_in_sym);
figure(1);
stem(data_in_sym);
title('Random Symbols');
xlabel('Symbol Index');ylabel('Integer Value');
%%
%%%%%%%%%%%%%%%%%%%% QAM Modulation  %%%%%%%%%%%%%%%%%%%%%%%
mod_data=qammod(data_in_sym,M);
scatterplot(mod_data);