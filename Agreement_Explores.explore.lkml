# include all the views
include: "/Views/Agreement_Analytics_Views/*.view"

explore: agmt_exp{
  required_access_grants: [agreement_expiry_grant]
  label: "Agreement Expiry"
}
explore: agmt_requests{
  label: "Agreement Requests"
}
