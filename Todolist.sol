//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Todos {
    struct Todo { uint id; string message; }

    Todo[] todos;

    constructor() {
        todos.push(Todo(0,"Hack"));
        todos.push(Todo(1,"Sleep"));
        todos.push(Todo(2,"Repeat"));
    }

    function showAllTasks() public view returns (Todo [] memory) {
        return todos;
    }

    function addTask(string memory task) public {
        todos.push( Todo( todos.length, task));
    }

    function updateTask(uint id, string memory task) public {
        todos[id] = Todo(id, task);
    }

    function deleteTask(uint id) public {
        for(uint i=id; i< todos.length-1; i++) {
            todos[i] = todos[i+1];
        }
        todos.pop();
    }

}
  
