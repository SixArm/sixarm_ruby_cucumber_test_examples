module NavigationHelpers

  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name

    # Relative URL that starts with a "/"
    when /^\//
      page_name

    # Absolute URI that starts with e.g. "http://"
    when /^(\w+):\/\//  # URI
      page_name

    # The word "home" goes to the root URL "/"
    when /^home$/i
      '/'

    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
