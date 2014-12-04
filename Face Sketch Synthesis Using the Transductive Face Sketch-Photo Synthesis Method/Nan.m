clear;
clc;

imList = dir('Face Sketch Synthesis Using the Transductive Face Sketch-Photo Synthesis Method/*.jpg');
path1  = 'CUHK/CUHK_testing_cropped_photos/';
path2  = 'CUHK/CUHK_testing_cropped_sketches/';
path3  = 'CUHK/CUHK_training_cropped_photos/';
path4  = 'CUHK/CUHK_training_cropped_sketches/';

path5  = 'AR/AR_cropped_photos/';
path6  = 'AR/AR_cropped_sketches/';

savepath = '1/';

% fid  = fopen('Orignal.txt','w');
% 
% for i = 1:length(imList)
%     
%     if length(find(imList(i).name =='(')) == 0
%         fprintf(fid,'%s\n',imList(i).name);
%     end
%    
% end
% 
% fclose(fid);

for i = 1:length(imList)
    
    if length(find(imList(i).name =='(')) ~= 0
        continue;
    end
    
    if exist([path1,imList(i).name],'file') == 2 
        
        im = imread([path1,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
    end
    
    if exist([path2,imList(i).name],'file') == 2 
        
        im = imread([path2,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
    end
    
     if exist([path3,imList(i).name],'file') == 2 
        
        im = imread([path3,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
     end
    
     if exist([path4,imList(i).name],'file') == 2 
        
        im = imread([path4,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
     end
    
     if exist([path5,imList(i).name],'file') == 2 
        
        im = imread([path5,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
     end
    
     if exist([path6,imList(i).name],'file') == 2 
        
        im = imread([path6,imList(i).name]);
        imwrite(im,[savepath,imList(i).name],'quality',100);
        continue;
     
     end
    
end