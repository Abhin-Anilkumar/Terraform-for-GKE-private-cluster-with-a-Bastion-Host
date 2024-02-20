output "accounts" {
  value = [for sa in google_service_account.sa : sa.email]
}