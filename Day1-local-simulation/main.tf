resource "local_file" "welcome_file" {
  content   = var.file_content
  filename  = "${path.module}/welcome.txt"
}