%% �O���t�B�b�N�X�t�@�C���ɏ�������
%  ���̃T���v���v���O�����ł�
%�@�E�O���t�B�b�N�X�t�@�C���ɓǂݍ���
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �������݂���O���t�B�b�N�X�t�@�C�����w�肷��
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.png';'*.bmp';'*.jpg';'*.gif';'*.*'},...
                          'Select Image File');

filename = fullfile(path, file);

%% �C���[�W�f�[�^�쐬
% 50�~50�~3�̃f�[�^
Img = rand(49,49);
Img(:,:,2) = rand(49,49);
Img(:,:,3) = rand(49,49);

%% imwrite(Image, '�t�@�C����');
%  �O���t�B�b�N�X�t�@�C���ւ̏�������
imwrite(Img, filename);

%% image(Img);
%  �C���[�W��\������
image(Img);
