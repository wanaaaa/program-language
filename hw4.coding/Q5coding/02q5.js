var obj1 = {};
obj1.x = 20;
var obj2 = {};
obj2 = Object.setPrototypeOf(obj2, obj1);
var obj3 = {};
obj3 = Object.setPrototypeOf(obj3, obj2);
var obj4 = {};
obj4 = Object.setPrototypeOf(obj4, obj1);

obj2.y = 5;
obj4.x = 10;
obj3.z = 30;

console.log("obj1.x= ", obj1.x);
console.log("obj2.x= ", obj2.x);
console.log("obj3.x= ", obj3.x);
console.log("obj4.x= ", obj4.x);
console.log("obj4.y= ", obj4.y);
console.log("obj2.y= ", obj2.y);
console.log("obj3.y= ", obj3.y);
console.log("obj3.z= ", obj3.z);
