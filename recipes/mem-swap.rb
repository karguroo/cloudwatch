cloudwatch_memory "Create memory alarm" do
   alarm_description          "MemoryUtilization is more than 95% in 5 minutes"
   metric_threshold           "95"
   metric_comparison_operator "GreaterThanThreshold"
   metric_unit                "Percent"
end

cloudwatch_swap "Create swap alarm" do
   alarm_description          "SwapUtilization is more than 20% in 5 minutes"
   metric_threshold           "20"
   metric_comparison_operator "GreaterThanThreshold"
   metric_unit                "Percent"
end