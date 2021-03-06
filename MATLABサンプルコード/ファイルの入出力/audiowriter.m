%% オーディオファイルに書き込む
%  このサンプルプログラムでは
%　・オーディオファイルに書き込む
%  ことができます
%% ファイル取得セクション
%  書き込みするオーディオファイルを指定する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.wav';'*.ogg';'*.mp3';'*.m4a';'*.*'},...
                          'Select Audio File');

filename = fullfile(path, file);

%% オーディオデータ作成
t = 1; % オーディオの長さ[s]
F = 1000; % 正弦波の周波数
Fs = 44100;
T = 0: 1/Fs: t;
y = sin(2*pi*F*T);

%% audiowrite('ファイル名', 各点での振幅, サンプリング周波数);
%  オーディオファイルへの書き込み
audiowrite(filename, y, Fs);

%% soundsc(y, Fs);
%  データを正規化し、音声として再生する
soundsc(y, Fs);

%% 書き出しオーディオデータのグラフ作成
plot( (0: F/Fs: 1), y(1:floor(Fs/F+1)) )
