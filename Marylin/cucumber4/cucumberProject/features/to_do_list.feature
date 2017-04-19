Feature:
Background:
	Given a to-do list like this:
	|  Task  | Status |
	| task_1 |   	  |
	| task_2 |        |
	| task_3 |        |

Scenario:
List the to-do list

Scenario:
When I finish task_1
Then I marked as Completed
When I started task_2
Then I marked as In Progress
And the table should be like:
|  Task  | Status      |
| task_1 | Completed   |
| task_2 | In Progress |
| task_3 |             |
