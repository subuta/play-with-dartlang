part of counter;

class CounterApp {
  Element counterElement;
  int counter = 0;

  CounterApp() {
    Element body = querySelector('body');
    body.innerHtml = '';
    body.append(createElement());
  }

  Element createElement() {
    // Construct UI.
    Element element = new Element.html('''
			<div id='app' class='p-16 flex items-center justify-center text-2xl'>
        <button
                id='decrement'
                class='py-1 px-4 border rounded'
        >-</button>
  
        <span id='counter'
              class='mx-4'
        >0</span>
  
        <button
                id='increment'
                class='py-1 px-4 border rounded'
        >+</button>
			</div>
		''');

    Element incrementElement = element.querySelector('#increment');
    Element decrementElement = element.querySelector('#decrement');

    counterElement = element.querySelector('#counter');

    incrementElement.onClick.listen((e) {
      counter += 1;
      syncUI();
    });

    decrementElement.onClick.listen((e) {
      counter -= 1;
      syncUI();
    });

    return element;
  }

  void syncUI() {
    counterElement.text = counter.toString();
    print("current = ${this}");
  }

  // Override toString.
  String toString() {
    return "counter: ${counter}";
  }
}
