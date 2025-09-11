output "file_path" {
  description = "path to the generated file"
  value          = local_file.welcome_file.filename 
}