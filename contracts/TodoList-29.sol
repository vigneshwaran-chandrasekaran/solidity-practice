// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({text: _text, completed: false}));
    }

    function updateText(uint256 _index, string calldata _text) external {
        /**This is one way to assign value, if we have single value to change */
        // todos[_index].text = _text;

        /**If we want to change multiple ways use this method */
        Todo storage todo = todos[_index];
        todo.text = _text;

        /** Below two lines are exmples */
        // todo.somedata = _somedata
        // todo.moredata = _moredata
    }

    function get(uint256 _index) external view returns (string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function update(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
