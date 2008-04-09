module PackageHelper


  def build_log_url( project, package, platform, arch )
    #get_frontend_url_for( :controller => 'result' ) +
    #  "/#{project}/#{platform}/#{package}/#{arch}/log"
    "https://api.opensuse.org/result/#{project}/#{platform}/#{package}/#{arch}/log"
  end


  def file_url( project, package, filename )
    #get_frontend_url_for( :controller => 'source') +
    #  "/#{project}/#{package}/#{filename}"
    "https://api.opensuse.org/source/#{project}/#{package}/#{filename}"
  end


  def rpm_url( project, package, repository, arch, filename )
    #get_frontend_url_for( :controller => 'rpm' ) +
    #  "/#{project}/#{repository}/#{package}/#{arch}/#{filename}"
    "https://api.opensuse.org/build/#{project}/#{repository}/#{arch}/#{package}/#{filename}"
  end

  def human_readable_fsize( bytes )
    number_to_human_size(bytes, 2)
  end

end

