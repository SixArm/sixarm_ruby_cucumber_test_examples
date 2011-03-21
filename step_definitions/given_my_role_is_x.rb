# This step uses our Role Based Access Control (RBAC)
# which can have multiple roles, each identified by 
# an "external id" (id) that is typically one word
# like "administrator", "manager", "assistant", etc.
#
# Example:
#   Given my role is an Administrator
#   => @user.rbac_roles=[Factory(:rbac_role, :xid => 'administrator")

Given /my role is (?:|an? )(\w+)/i do |rbac_role_xid|  
  @user.rbac_roles=[Factory(:rbac_role, :xid =>  rbac_role_xid.downcase)]
end
