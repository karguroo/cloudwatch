actions :create
default_action :create

attribute :user, 		:kind_of => String, 	:required => false, :default => "root"
attribute :minute, 		:kind_of => String, 	:required => false, :default => "*"
attribute :hour, 		:kind_of => String, 	:required => false, :default => "*"
attribute :day, 		:kind_of => String, 	:required => false, :default => "*"
attribute :month, 		:kind_of => String, 	:required => false, :default => "*"
attribute :weekday, 	:kind_of => String, 	:required => false, :default => "*"

attribute :alarm_description, 			:kind_of => String, 	:required => true
attribute :metric_period, 				:kind_of => Fixnum, 	:required => false, :default => 300
attribute :metric_evaluation_periods, 	:kind_of => String, 	:required => false,	:default => "1"
attribute :metric_statistic, 			:kind_of => String, 	:required => false, :default => "Average"
attribute :metric_threshold, 			:kind_of => String, 	:required => false, :default => "1"
attribute :metric_comparison_operator, 	:kind_of => String, 	:required => false, :default => "LessThanThreshold"
attribute :metric_namespace, 			:kind_of => String, 	:required => false, :default => "System/Linux"
attribute :metric_unit, 				:kind_of => String, 	:required => false, :default => "Count"

attribute :command, 					:kind_of => String, 	:required => false, :default => ""
attribute :expected_response, 			:kind_of => String, 	:required => false, :default => ""

attribute :script_file, 				:kind_of => String, 	:required => false, :default => ""
attribute :dir_file, 				    :kind_of => String, 	:required => false, :default => "./"
attribute :response_file, 				:kind_of => String, 	:required => true
attribute :script_file_values, 			:kind_of => Hash, 		:required => false
attribute :response_template_values, 	:kind_of => Hash, 		:required => false