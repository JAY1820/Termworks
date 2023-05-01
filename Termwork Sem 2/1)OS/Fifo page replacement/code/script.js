var cap = document.getElementById('cap');
var list = document.getElementById('list');
var text = document.getElementById('text');
var add = document.getElementById('add');
var fifo = document.getElementById('fifo');
var faults = document.getElementById('faults');
var replace = document.getElementById('replace');
var hits = document.getElementById('hits');
var hit = 0;
let page_faults = 0;
let page_replace = 0;
var indexes = [];
let s = new Set();
var i = 0;
class Fifo extends Array {
	constructor(...elem) {
		super(...elem);
	}
	display_elements(s2) {
		for (let i = 0; i < s2.length; i++) {
			var x = document.createElement('li');
			var t = document.createTextNode(s2[i]);
			x.appendChild(t);
			list.appendChild(x);
		}
	}
}
function insertAt(array, index, ...elementsArray) {
	array.splice(index, 0, ...elementsArray);
}
let removeElement = (array, n) => {
	let newArray = [];

	for (let i = 0; i < array.length; i++) {
		if (array[i] !== n) {
			newArray.push(array[i]);
		}
	}
	return newArray;
};
const s1 = new Fifo();
function pageFaults() {
	var pageValue = text.value;
	var capacity = cap.value;
	$('ul').empty();
	text.value = '';
	if (s.size < capacity) {
		if (!s.has(pageValue)) {
			s.add(pageValue);
			page_faults++;
			indexes.push(pageValue);
		}
		else {
			hit++;
		}
	}
	else {
		if (i == capacity) {
			i = 0;
		}
		if (!s.has(pageValue)) {
			let val = indexes[i];
			indexes = removeElement(indexes, val);
			s.delete(val);
			s.add(pageValue);
			insertAt(indexes, i++, pageValue);
			page_faults++;
		}
		else {
			hit++;
		}
	}
	//page replace collect value of page faul and cap1 and perform 
	//i want no of frames value here insted of static 3 
	page_replace = `${page_faults-capacity}`;
	for (let j = indexes.length - 1; j >= 0; j--) {
		s1.display_elements(indexes[j]);
	}
	faults.innerHTML = page_faults;
	hits.innerHTML = hit;
	replace.innerHTML = page_replace;
}	