%% �e�L�X�g�t�@�C���������o��
%  ���̃T���v���v���O�����ł�
%�@�E�������w�肵�ăe�L�X�g�t�@�C���������o��
%  ���Ƃ��ł��܂�

%% �t�@�C���擾�Z�N�V����
%  �������݂���e�L�X�g�t�@�C�����w�肷��
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.txt';'*.csv';'*.*'},...
                          'Select Text File');

filename = fullfile(path, file);
fileID = fopen(filename, 'w');

%% �e�L�X�g�f�[�^�쐬
formatSpec = '�v���b�g�_%d X:%23.15e Y:%23.15e\n';
value = [1 2 3 4 5
        10 14 16.5 20 24
        20 28 34 48 60];

%% fprintf(fileID, '�t�H�[�}�b�g�w��q', data);
%  �t�@�C���Ƀf�[�^����������
fprintf(fileID, formatSpec, value);

%% type('�t�@�C����')
%  �t�@�C�����̃f�[�^��\������
type(filename)

%% fclose(fileID);
%  �t�@�C�������
fclose(fileID);
