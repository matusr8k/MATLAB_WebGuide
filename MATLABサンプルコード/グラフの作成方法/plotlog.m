%% 対数グラフを表示する
%  このサンプルプログラムでは
%  ・片対数グラフの表示
%  ・両対数グラフの表示
%  することができます

%% 初期化セクション
x = 10.^linspace(0,10);
y = 20.*10.^linspace(0,10);

%% semilogx(x, y);
%  片対数グラフを描写する
semilogx(x, y);
grid();
xlabel('(対数)よこ軸ラベル名[]');
ylabel('たて軸ラベル名[]');

%% semilogy(x, y);
%  片対数グラフを描写する
figure();
semilogy(x, y);
grid();
xlabel('よこ軸ラベル名[]');
ylabel('(対数)たて軸ラベル名[]');

%% loglog(x, y);
%  両対数グラフを描写する
figure();
loglog(x, y);
grid();
xlabel('(対数)よこ軸ラベル名[]');
ylabel('(対数)たて軸ラベル名[]');
