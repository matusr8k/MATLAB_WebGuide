%% オーディオファイルを読み込む
%  このサンプルプログラムでは
%　・オーディオファイルを読み込む
%  ことができます
%% ファイル取得セクション
%  サンプル用に「sampleAudio.wav」を用意する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.wav';'*.ogg';'*.mp3';'*.m4a';'*.*'},...
                          'Select Audio File');

filename = fullfile(path, file);

%% audioread('ファイル名');
%  オーディオファイルの読み取り
[y, Fs] = audioread(filename);
%  y:各サンプル点での振幅
% Fs:サンプリング周波数

%% soundsc(y, Fs);
%  データを正規化し、音声として再生する
soundsc(y, Fs);
