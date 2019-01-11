%% CSVファイルに書き込む
%  このサンプルプログラムでは
%　・CSVファイルに書き込む
%  ことができます
%% ファイル取得セクション
%  書き込みするCSVファイルを指定する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.csv';'*.dat';'*.*'},...
                          'Select CSV File');

filename = fullfile(path, file);

%% 行列データ作成
M = [1 2 3 4 5
     6 6 6 6 6
     5 4 3 2 1];

%% csvwrite('ファイル名', 行列);
%  CSVファイルへの書き込み
csvwrite(filename, M);
