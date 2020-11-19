ogr2ogr -sql "SELECT * FROM gadm36_SVN_2 WHERE NAME_2='Izola'" -f "ESRI Shapefile" Izola.shp gadm36_SVN.gpkg gadm36_SVN_2
gdalwarp -cutline Izola.shp -cl Izola -crop_to_cutline -t_srs EPSG:32632 -r near dem_merge.tif dem_merge_Izola_clip.tif
gdaldem slope dem_merge_Izola_clip.tif dem_merge_Izola_clip_slope.tif
gdaldem hillshade dem_merge_Izola_clip_slope.tif output_Izola_hillshade.tif
