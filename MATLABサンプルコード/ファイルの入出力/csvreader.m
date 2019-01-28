%% CSVファイルを読み込む
%  このサンプルプログラムでは
%　・CSVファイルを読み込む
%  ことができます
%% ファイル取得セクション
%  サンプル用に「sampleCSV.csv」を用意する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.txt';'*.csv';'*.dat';'*.*'},...
                          'Select CSV File');

filename = fullfile(path, file);

%% csvread('ファイル名');
%  CSVファイルの読み取り
M = csvread(filename)
