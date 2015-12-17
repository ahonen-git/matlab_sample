% NOCLOBBER prevents overwriting the existing file.
% CLOBBER overwrites the existing file.
ncid = netcdf.create('nc_out.nc','CLOBBER');
lon_dimid = netcdf.defDim(ncid,'nlon',360);
lat_dimid = netcdf.defDim(ncid,'nlat',180);
time_dimid = netcdf.defDim(ncid,'time',netcdf.getConstant('NC_UNLIMITED'));

% note that matlab adopt the fortran-style order.
varid = netcdf.defVar(ncid,'temp','double',[lon_dimid,lat_dimid,time_dimid]);

netcdf.endDef(ncid) % This command terminates the definition mode; to write data into files, the mode should be changed to the data mode.

netcdf.putVar(ncid,varid,[0,0,0],[360,180,1],zeros(360,180,1));
netcdf.close(ncid)