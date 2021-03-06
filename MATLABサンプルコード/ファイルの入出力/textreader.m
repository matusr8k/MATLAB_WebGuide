%% テキストファイルを読み込む
%  このサンプルプログラムでは
%　・書式を指定してテキストファイルを読み込む
%  ことができます
%% ファイル取得セクション
%  サンプル用に「sampleText.txt」を用意する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.txt';'*.csv';'*.*'},...
                          'Select Text File');

filename = fullfile(path, file);
fileID = fopen(filename);

%% textscan(fileID, 'フォーマット指定子');
%  テキストファイルから書式付きデータを読み取る
%  Cはcell配列となる
C = textscan(fileID, '%*s X:%f Y:%f');

%  フォーマット指定子'%d'などは読み取るデータを指定できる
%  詳しくは以下のリンク（Matlabドキュメンテーション）
%  https://jp.mathworks.com/help/matlab/ref/textscan.html

%% celldisp(cell);
%  cell配列の内容を表示する
celldisp(C);

%% 入力データを表示する
plot(C{1}, C{2});
xlabel('X');
ylabel('Y');

%% fclose(fileID);
%  ファイルを閉じる
fclose(fileID);
