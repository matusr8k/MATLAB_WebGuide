%% �O���t�B�b�N�X�t�@�C����ǂݍ���
%  ���̃T���v���v���O�����ł�
%�@�E�O���t�B�b�N�X�t�@�C����ǂݍ���
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �T���v���p�ɁusampleImage.png�v��p�ӂ���
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.png';'*.bmp';'*.jpg';'*.gif';'*.*'},...
                          'Select Image File');

filename = fullfile(path, file);

%% imread('�t�@�C����');
%  �O���t�B�b�N�X�t�@�C���̃C���[�W�ǂݍ���
Img = imread(filename);

%% image(Img);
%  �C���[�W��\������
image(Img);
