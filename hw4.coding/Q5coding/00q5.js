var foo = {name: "foo", one: 1, two: 2};
var bar = {two: "two", three: 3};
Object.setPrototypeOf(bar, foo);
console.log(bar.one);
console.log(bar.three);