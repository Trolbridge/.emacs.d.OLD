let name = 'John';
let age = 30;
let job = 'Web Developer';
let city = 'Miami';

let html;

// Without template strings (ES5)
html = '<ul><li>Name: ' + name + '</li><li>Age: ' + age + ' </li><li>Job: ' + job + ' </li><li>City: ' + city + '</li></ul>';

        
function hello() {
    return 'Hello!!!!';
}

// With Template Literals (ES6)

html = `
    <ul>
        <li>Name: ${name}</li>
        <li>Age: ${age}</li>
        <li>Job: ${job}</li>
        <li>City: ${city}</li>
        <li>${2 + 2}</li>
        <li>${hello()}</li>
        <li>${hello}</li>
        <li>${age > 29 ? 'Over 30' : 'Under 30'}</li>
    </ul> 
    `;

document.body.innerHTML = html;
