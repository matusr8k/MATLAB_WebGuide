%% �I�[�f�B�I�t�@�C����ǂݍ���
%  ���̃T���v���v���O�����ł�
%�@�E�I�[�f�B�I�t�@�C����ǂݍ���
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �T���v���p�ɁusampleAudio.wav�v��p�ӂ���
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.wav';'*.ogg';'*.mp3';'*.m4a';'*.*'},...
                          'Select Audio File');

filename = fullfile(path, file);

%% audioread('�t�@�C����');
%  �I�[�f�B�I�t�@�C���̓ǂݎ��
[y, Fs] = audioread(filename);
%  y:�e�T���v���_�ł̐U��
% Fs:�T���v�����O���g��

%% soundsc(y, Fs);
%  �f�[�^�𐳋K�����A�����Ƃ��čĐ�����
soundsc(y, Fs);
