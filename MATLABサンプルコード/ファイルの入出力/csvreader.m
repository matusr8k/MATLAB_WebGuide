%% CSV�t�@�C����ǂݍ���
%  ���̃T���v���v���O�����ł�
%�@�ECSV�t�@�C����ǂݍ���
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �T���v���p�ɁusampleCSV.csv�v��p�ӂ���
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.txt';'*.csv';'*.dat';'*.*'},...
                          'Select CSV File');

filename = fullfile(path, file);

%% csvread('�t�@�C����');
%  CSV�t�@�C���̓ǂݎ��
M = csvread(filename)
