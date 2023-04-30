module "db_authors_table" {
  source = "./modules/dynamodb"

  name    = "Authors"
  context = module.name.context

}

module "db_courses_table" {
  source = "./modules/dynamodb"

  name    = "Courses"
  context = module.name.context
}



