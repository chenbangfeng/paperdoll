function make(varargin)
%MAKE Build necessary binary files.

  cwd = fileparts(mfilename('fullpath'));
  cmd = sprintf('mex %s %s -outdir %s -output %s', ...
                fullfile(cwd, 'private', 'anigauss.c'),...
                fullfile(cwd, 'private', 'anigauss_mex.c'),...
                fullfile(cwd, 'private'),...
                'anigauss'...
               );
  disp(cmd);
  eval(cmd);
 
end
