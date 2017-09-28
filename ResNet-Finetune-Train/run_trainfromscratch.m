function run_trainfromscratch(Ns, varargin)
setup;
Ns = [18 34 50];
opts.expDir = fullfile('data','exp') ;
opts.bn = true;
opts.meanType = 'image';
opts.whitenData = true;
opts.contrastNormalization = true; 
% opts.border = [4 4 4 4];
opts.gpus = [];
opts.datasetName = '200vein';
opts.datafn = @setup_imdb_vein;
opts.nClasses = 200;

opts = vl_argparse(opts, varargin); 

MTs = 'resnet';
n_exp = numel(Ns); 
if ischar(MTs), MTs = {MTs}; end; 
MTs = repmat(MTs, [1, n_exp]); 


expRoot = opts.expDir; 
opts.checkpointFn = @() plot_results(expRoot, opts.datasetName);

for i=1:n_exp, 
  opts.expDir = fullfile(expRoot, ...
    sprintf('%s-%s-%d', opts.datasetName, MTs{i}, Ns(i))); 
  [net,info] = res_imagenet(Ns(i), opts); 
end
