%% グラフィックスファイルに書き込む
%  このサンプルプログラムでは
%　・グラフィックスファイルに読み込む
%  ことができます
%% ファイル取得セクション
%  書き込みするグラフィックスファイルを指定する
%  ファイル選択ダイアログボックス
[file, path] = uigetfile({'*.png';'*.bmp';'*.jpg';'*.gif';'*.*'},...
                          'Select Image File');

filename = fullfile(path, file);

%% イメージデータ作成
% 50×50×3のデータ
Img = rand(49,49);
Img(:,:,2) = rand(49,49);
Img(:,:,3) = rand(49,49);

%% imwrite(Image, 'ファイル名');
%  グラフィックスファイルへの書き込み
imwrite(Img, filename);

%% image(Img);
%  イメージを表示する
image(Img);
