%put all mat files in a folder you could even hard link it
cd('D:\FLDI_UMD\Data')
Matfiles = dir('**/*.mat');
for i = 1:length(Matfiles)
    i
    load([Matfiles(i).folder,'\', Matfiles(i).name])
%     save([Matfiles(i).folder,'\', Matfiles(i).name],...
%     'chA_run', 'chA_noise','chA_noise2', 'chB_run', 'chB_noise','chB_noise2',...
%     'chA_run_info', 'chA_noise_info','chA_noise_info2', 'chB_run_info', 'chB_noise_info','chB_noise_info2',...
%     'timeMs','Fs', 'numSamples', 'bitRes', 'vmax', 'vmin', 'vavg', 'dx1', 'dx2', 'tunnel_section', 'x_dist', 'y_dist', 'z_dist',...
%     'Gain', 'HLfilter', 'RL', 'num_diaphrams', 'expected_burst_pressure','model', 'NDfilter', 'BPfilter', 'obj_lens',...
%     'notes', 'date', 'DailyRunNum', 'CampainRunNum', 'PositionRunNumber');
    C = who('-file',[Matfiles(i).folder,'\', Matfiles(i).name]);
    save([Matfiles(i).folder,'\', Matfiles(i).name],C{:})
end