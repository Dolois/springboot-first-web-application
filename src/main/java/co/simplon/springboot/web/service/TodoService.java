package co.simplon.springboot.web.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.springframework.stereotype.Service;
import co.simplon.springboot.web.model.Todo;

@Service
public class TodoService 
{
	private static List<Todo> todos = new ArrayList<Todo>();
	private static int todoCount = 3;

	static 
	{
		todos.add(new Todo(1, "promo3p20", "Learn Spring MVC", new Date(), false));
		todos.add(new Todo(2, "promo3p20", "Learn JPA", new Date(), false));
		todos.add(new Todo(3, "promo3p20", "Learn Hibernate", new Date(), false));
	}

	public List<Todo> retrieveTodos(String user) 
	{
		List<Todo> filteredTodos = new ArrayList<Todo>();

		for (Todo todo : todos) 
		{
			if (todo.getUser().equals(user)) 
			{
				filteredTodos.add(todo);
			}
		}
		return filteredTodos;
	}
}