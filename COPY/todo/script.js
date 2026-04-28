const taskInput = document.getElementById('task-input');
const addTaskBtn = document.getElementById('add-task-btn');
const taskList = document.getElementById('task-list');

let tasks = JSON.parse(localStorage.getItem('tasks')) || [];

function renderTasks() {
    taskList.innerHTML = '';
    tasks.forEach((task, index) => {
        const li = document.createElement('li');
        li.innerHTML = `
            <span class="${task.completed ? 'completed' : ''}" onclick="toggleTask(${index})">${task.text}</span>
            <button onclick="deleteTask(${index})">❌</button>`;
        taskList.appendChild(li);
    });
    localStorage.setItem('tasks', JSON.stringify(tasks));
}

addTaskBtn.onclick = () => {
    if (taskInput.value.trim()) {
        tasks.push({ text: taskInput.value, completed: false });
        taskInput.value = '';
        renderTasks();
    }
};

window.deleteTask = (index) => { tasks.splice(index, 1); renderTasks(); };
window.toggleTask = (index) => { tasks[index].completed = !tasks[index].completed; renderTasks(); };

renderTasks();
