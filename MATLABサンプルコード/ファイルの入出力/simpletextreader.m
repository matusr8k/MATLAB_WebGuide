%% テキストファイルから数値データを読み込む
%  このサンプルプログラムでは
%　・テキストファイルから数値データを読み込む
%  ことができます
%% ファイル取得セクション
%  書き込みするテキストファイルを指定する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.txt';'*.csv';'*.*'},...
                          'Select Text File');

filename = fullfile(path, file);
fileID = fopen(filename, 'r');

%% [data, cnt] = fscanf(fileID, 'フォーマット指定子', [datasize]);
%  ファイルからデータを読み込む
data = fscanf(fileID, '%f\n', [2 inf]);
% datasize は縦×横で読み込みするデータの長さを指定できる
% infはファイル終端までを表す

%% 入力データを表示する
plot(data(1,:), data(2,:));
xlabel('X');
ylabel('Y');

%% fclose(fileID);
%  ファイルを閉じる
fclose(fileID);
