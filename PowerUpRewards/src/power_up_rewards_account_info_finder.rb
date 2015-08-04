module PowerUpRewardsAccountInfoFinder

  # Returns the PowerUp Rewards logo link - No ATS class name since creative owns this
  def pur_logo_link()
    $tracer.trace(__method__)
    return ToolTag.new(a.href(create_ats_regex_string("/PowerUpRewards/Home/Index")), __method__)
  end

  # Returns the "Activate" link.
  def activate_link
    $tracer.trace(__method__)
    return ToolTag.new(a.with.className("activate").href("/Activation/"), __method__)
  end

  # Returns the "Login" link.
  def log_in_link
    $tracer.trace(__method__)
    return ToolTag.new(a.with.className("action-login").href("/LogOn/"), __method__)
  end

  # Returns the "Hi, <name>" label.
  def hi_name_label
    $tracer.trace(__method__)
    return ToolTag.new(div.id("login").find.h3, __method__)
  end

  # Returns the "Sign Out" link.
  def sign_out_link
      $tracer.trace(__method__)
      return ToolTag.new(a.href("/LogOff/"), __method__)
  end

  # Returns the original PUR Dashboard menu link
  def dashboard_menu_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("dashboard")), __method__)
  end

  # Returns the original Rewards Catalog menu link
  def rewards_catalog_menu_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("rewards")), __method__)
  end

  # Returns the original My Game Library menu link
  def game_library_menu_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("library")), __method__)
  end

  # Returns the original My Account menu link
  def my_account_menu_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("account")), __method__)
  end

  # Returns the original Xtra Points menu link
  def xtra_points_menu_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("AuthorizedFaq")), __method__)
  end
end
