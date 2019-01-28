%% テキストファイルを書き出す
%  このサンプルプログラムでは
%　・書式を指定してテキストファイルを書き出す
%  ことができます

%% ファイル取得セクション
%  書き込みするテキストファイルを指定する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.txt';'*.csv';'*.*'},...
                          'Select Text File');

filename = fullfile(path, file);
fileID = fopen(filename, 'w');

%% テキストデータ作成
formatSpec = 'プロット点%d X:%23.15e Y:%23.15e\n';
value = [1 2 3 4 5
        10 14 16.5 20 24
        20 28 34 48 60];

%% fprintf(fileID, 'フォーマット指定子', data);
%  ファイルにデータを書き込む
fprintf(fileID, formatSpec, value);

%% type('ファイル名')
%  ファイル内のデータを表示する
type(filename)

%% fclose(fileID);
%  ファイルを閉じる
fclose(fileID);
