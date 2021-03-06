%% Deca-Schlieren Process
%Jack Cobourn 2020610
cd('D:\Jack\Documents\Focused_Laser_Dif_interf')
%% selct required files
basefolder = 'J:\FLDI_HCF_Raw_202004\Schlieren_noVac';

for ii=1:10 
    switch ii
    case 1
        C = mraw([basefolder filesep '20200508' filesep '20200508_Run1']);
        savefile = [basefolder filesep '20200508' filesep '20200508_Run1_ShortAvi'];
    case 2
        C = mraw([basefolder filesep '20200511' filesep '20200511_Run1']);
        savefile = [basefolder filesep '20200511' filesep '20200511_Run1_ShortAvi'];
    case 3
        C = mraw([basefolder filesep '20200512' filesep '20200512_Run1']);
        savefile =[basefolder filesep '20200512' filesep '20200512_Run1_ShortAvi'];
    case 4
        C = mraw([basefolder filesep '20200512' filesep '20200512_Run2']);
        savefile =[basefolder filesep '20200512' filesep '20200512_Run2_ShortAvi'];
    case 5
        C = mraw([basefolder filesep '20200513' filesep '20200513_Run2']);
        savefile =[basefolder filesep '20200513' filesep '20200513_Run2_ShortAvi'];
    case 6
        C = mraw([basefolder filesep '20200515' filesep '20200515_Run1']);   
        savefile =[basefolder filesep '20200515' filesep '20200515_Run1_ShortAvi'];
    case 7
        C = mraw([basefolder filesep '20200518' filesep '20200518_Run1']);
        savefile =[basefolder filesep '20200518' filesep '20200518_Run1_ShortAvi'];
    case 8
        C = mraw(['F:\FLDI_SHC_202006\Schlieren\20200602' filesep '20200602_Run1']);   
        savefile =['F:\FLDI_SHC_202006\Schlieren\20200602' filesep '20200602_Run1_ShortAvi'];
    case 9
        C = mraw(['F:\FLDI_SHC_202006\Schlieren\20200602' filesep '20200602_Run2']);
        savefile =['F:\FLDI_SHC_202006\Schlieren\20200602' filesep '20200602_Run2_ShortAvi'];
    case 10
        C = mraw(['F:\FLDI_SHC_202006\Schlieren\20200603' filesep '20200603_Run1']);
        savefile =['F:\FLDI_SHC_202006\Schlieren\20200603' filesep '20200603_Run1_ShortAvi'];
    end


%% crop of black region of sch
for jj = (900-899):(950-899)
    Images(:,:,jj) = C.getFrame(jj+899);
end
ymin = find(Images(:,384/2,1)>0.1*pow2(12),1,'first');
ymax = find(Images(:,384/2,1)>0.1*pow2(12),1,'last');

AVIwrite(savefile,cast(Images(1:384/2+20,:,:),'double')/pow2(12),10);
end