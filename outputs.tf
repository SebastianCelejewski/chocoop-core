output "data_changes_topic_arn" {
  description = "ARN of a SNS Topic used to notify about all data changes."
  value       = module.sns.topic_arn
}