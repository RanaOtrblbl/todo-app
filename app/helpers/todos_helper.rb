module TodosHelper
    def priority_bg_class(priority)
      {
        1 => 'bg-teal-100',
        2 => 'bg-indigo-100',
        3 => 'bg-purple-100',
        4 => 'bg-red-100',
        5 => 'bg-yellow-100'
      }[priority] || 'bg-white'
    end

      def todo_deadline_class(todo)
        if todo.deadline.present? && todo.deadline <= Date.today
          "border-2 border-red-500 bg-red-10"
        else
          "border border-gray-200"
        end
  
    end
  end
  