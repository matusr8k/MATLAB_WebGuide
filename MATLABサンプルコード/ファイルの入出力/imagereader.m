%% グラフィックスファイルを読み込む
%  このサンプルプログラムでは
%　・グラフィックスファイルを読み込む
%  ことができます
%% ファイル取得セクション
%  サンプル用に「sampleImage.png」を用意する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.png';'*.bmp';'*.jpg';'*.gif';'*.*'},...
                          'Select Image File');

filename = fullfile(path, file);

%% imread('ファイル名');
%  グラフィックスファイルのイメージ読み込み
Img = imread(filename);

%% image(Img);
%  イメージを表示する
image(Img);
