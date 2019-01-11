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
T = 0: 1/Fs: t;
y = sin(2*pi*1000*T);
Fs = 44100;

%% audiowrite('ファイル名', 各点での振幅, サンプリング周波数);
%  オーディオファイルへの書き込み
audiowrite(filename, y, Fs);

%% soundsc(y, Fs);
%  データを正規化し、音声として再生する
soundsc(y, Fs);
