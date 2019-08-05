%Titus John
%AusculTech Dx 
%8-1-2019

%% Header
% Lung Sound Quality System
% Matlab Implemention that need to be converted to C++

%This code is meant to measure the snr of the signal in realtime

% Input
% the audio buffer is input into this system currently for processing (this
% buffer can be of varying lengths

%Output
% The SNR value and boolean value indicating if the the sound is to loud

%% LungSoundQualityCheck
function [SNR, qualityValue] = lungSoundQualityCheck(audioBuffer, Fs) 

    
%This ensures the buffer is of the proper length to push into the recording
%pipline This will usally be raw audio
[bufferLenghtCheck] = checkBufferLength(audioBuffer,Fs)

% Now that the buffer has been passed in terms of length requriements need
% to caclulate the SNR of the signal
[SNR] = snrCalculation(auidoBuffer, Fs, bufferLenghtCheck)


%Now take this SNR value and calculate the quality value of the produced
%SNR, this can be like a score of 1-5 for right now/ simple value mapping,
%need to explore how this works in realtime
[qualityValue] = qualityCalculation(SNR)



end