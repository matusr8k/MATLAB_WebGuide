%% �e�L�X�g�t�@�C�����琔�l�f�[�^��ǂݍ���
%  ���̃T���v���v���O�����ł�
%�@�E�e�L�X�g�t�@�C�����琔�l�f�[�^��ǂݍ���
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �������݂���e�L�X�g�t�@�C�����w�肷��
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.txt';'*.csv';'*.*'},...
                          'Select Text File');

filename = fullfile(path, file);
fileID = fopen(filename, 'r');

%% [data, cnt] = fscanf(fileID, '�t�H�[�}�b�g�w��q', [datasize]);
%  �t�@�C������f�[�^��ǂݍ���
data = fscanf(fileID, '%f\n', [2 inf]);
% datasize �͏c�~���œǂݍ��݂���f�[�^�̒������w��ł���
% inf�̓t�@�C���I�[�܂ł�\��

%% ���̓f�[�^��\������
plot(data(1,:), data(2,:));
xlabel('X');
ylabel('Y');

%% fclose(fileID);
%  �t�@�C�������
fclose(fileID);
