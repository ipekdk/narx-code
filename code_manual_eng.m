% This code is modified from the example in this page:
% https://www.mathworks.com/help/deeplearning/ug/maglev-modeling.html

load('data.mat') % load the data

n=50; % the data size to use for training

% composing input and output data for modeling
th=data(:,2);
ah=data(:,5);
ph=data(:,6);
ig=data(:,7);
x=[th ah ph ig]; % inputs
y=[data(:,9) data(:,11)]; % outputs
X=table2array(x);
Y=table2array(y);

% taking n of the data
X=X(1:n,:);
Y=Y(1:n,:);

% forming outputs
Yaptt=Y(:,1);
Yfib=Y(:,2);

% transforming to cell data for using in narx model
t=num2cell(Yaptt');
x=num2cell(X');

% Training the model
x = tonndata(X,false,false);
t = tonndata(Yaptt,false,false);
setdemorandstream(491218381)
net = narxnet(1:2,1:2,10,'open','trainbr');
view(net)
[Xs,Xi,Ai,Ts] = preparets(net,x,{},t);  

% narxnet(inputDelays,feedbackDelays,hiddenSizes,feedbackMode,trainFcn

[net,tr] = train(net,Xs,Ts,Xi,Ai);
plotperform(tr)
Y = net(Xs,Xi,Ai);

% Measuring performance
perf = mse(net,Ts,Y)   %10 ->86303 
plotresponse(Ts,Y)
E = gsubtract(Ts,Y);
ploterrcorr(E)
plotinerrcorr(Xs,E)

%making closed loop
net2 = closeloop(net);
view(net2)
[Xs,Xi,Ai,Ts] = preparets(net2,x,{},t);
Y = net2(Xs,Xi,Ai);
plotresponse(Ts,Y)
perf2 = mse(net,Ts,Y)  %10->146870
E = gsubtract(Ts,Y);
ploterrcorr(E)
plotinerrcorr(Xs,E)


%to remove 1 delay
net3 = removedelay(net);
view(net3)
[Xs,Xi,Ai,Ts] = preparets(net3,x,{},t);
Y = net3(Xs,Xi,Ai);
plotresponse(Ts,Y)
perf3 = mse(net,Ts,Y) %10-> 86303
E = gsubtract(Ts,Y);
ploterrcorr(E)
plotinerrcorr(Xs,E)