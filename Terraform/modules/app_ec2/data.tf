# User Data
data "template_file" "windows" {
  template = file("${path.module}/scripts/windows.sh")
}
data "template_file" "redhat01" {
  template = file("${path.module}/scripts/redhat01.sh")
}
data "template_file" "redhat02" {
  template = file("${path.module}/scripts/redhat02.sh")
}
