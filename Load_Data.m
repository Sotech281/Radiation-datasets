function [Training, Target] = Load_Data(File_Name)

warning('off')
Training_Dataset = File_Name;
Training_Dataset_Options = detectImportOptions(Training_Dataset);

Training_Data = readtable(Training_Dataset, Training_Dataset_Options, "UseExcel", false);

Ra_Result = Training_Data.Ra;
Th_Result = Training_Data.Th;
K_Result = Training_Data.K;

Training = [Ra_Result Th_Result K_Result];
Target = Training_Data.GammaIndex;

end