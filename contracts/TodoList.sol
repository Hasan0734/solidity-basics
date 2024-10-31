// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Insert, udpate, read from array of structs

contract TodoList{
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }
   
    function updateText(uint index, string calldata _text) external {
          // 35138 gas
          todos[index].text = _text;  // for one update elemet this is the cheaper 
          todos[index].text = _text;
          todos[index].text = _text;
          todos[index].text = _text;

          // 34578 gas
          Todo storage todo = todos[index];  // for multiple update elemet this is the cheaper 
          todo.text = _text;
          todo.text = _text;
          todo.text = _text;
          todo.text = _text;

    }

    function get(uint _index) external view returns (string memory, bool) {
        // memory - 8234 gas
        // storage - 8151 gas
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
