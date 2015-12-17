my_data = linspace(0,49,50);

% NOCLOBBER prevents overwriting when the same filename exists.
ncid = netcdf.create('my_file.nc','NOCLOBBER');
dimid = netcdf.defDim(ncid,'my_dim',50);
varid = netcdf.defVar(ncid,'my_var','NC_BYTE',dimid)
netcdf.endDef(ncid) % This command terminates the definition mode; to write data into files, the mode should be changed to the data mode.

netcdf.putVar(ncid,varid,my_data)
netcdf.close(ncid)