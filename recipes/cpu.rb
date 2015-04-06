aws_custom_metric_cpu "CPU Metric" do
	alarm_description			"CPUUtilization more than 95% in 5 minutes"
	metric_threshold			"95"
	metric_namespace 			"AWS/EC2"
	metric_unit					"Percent"
	metric_comparison_operator	"GreaterThanThreshold"
end
