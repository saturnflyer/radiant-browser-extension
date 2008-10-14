# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class BrowserExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/browser"
  
  define_routes do |map|
    map.browser_search 'admin/browser/search/:type', :controller => 'admin/browser', :action => 'search', :type => 'snippets'
  end
  
  def activate
    admin.page.edit.add :form, 'browser', :before => 'edit_page_parts'
  end
  
  def deactivate
    # admin.tabs.remove "Browser"
  end
  
end