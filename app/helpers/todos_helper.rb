module TodosHelper
    def priority_bg_class(priority)
      {
        1 => 'bg-red-100',
        2 => 'bg-orange-100',
        3 => 'bg-yellow-100',
        4 => 'bg-green-100',
        5 => 'bg-blue-100'
      }[priority] || 'bg-white'
    end

    
      def todo_deadline_class(todo)
        if todo.deadline.present? && todo.deadline <= Date.today
          "border-2 border-red-500 bg-red-50"
        else
          "border border-gray-200"
        end
  
    end
  end
  