%% CSV�t�@�C���ɏ�������
%  ���̃T���v���v���O�����ł�
%�@�ECSV�t�@�C���ɏ�������
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �������݂���CSV�t�@�C�����w�肷��
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.csv';'*.dat';'*.*'},...
                          'Select CSV File');

filename = fullfile(path, file);

%% �s��f�[�^�쐬
M = [1 2 3 4 5
     6 6 6 6 6
     5 4 3 2 1];

%% csvwrite('�t�@�C����', �s��);
%  CSV�t�@�C���ւ̏�������
csvwrite(filename, M);
