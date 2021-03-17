class Bottles {
  // constructor() {

  // }

  song() {
    return this.verses(99, 0);
  }

  verses(start_at, finish_at) {
    let collection = [];

    for (let i = finish_at; i <= start_at; i += 1) {
      collection.push(this.verse(i));
    }

    return collection.reverse().join('\n');
  }

  verse(number) {
    let output = '';

    if (number == 0) {
      output = 'No more bottles of beer on the wall, ' +
      'no more bottles of beer.\n' +
      'Go to the store and buy some more, ' +
      '99 bottles of beer on the wall.\n';
    } else if (number == 1) {
      output = '1 bottle of beer on the wall, ' +
      '1 bottle of beer.\n' +
      'Take it down and pass it around, ' +
      'no more bottles of beer on the wall.\n';
    } else if (number == 2) {
      output = '2 bottles of beer on the wall, ' +
      '2 bottles of beer.\n' +
      'Take one down and pass it around, ' +
      '1 bottle of beer on the wall.\n';
    } else if (number == 3) {
      output = '3 bottles of beer on the wall, ' +
      '3 bottles of beer.\n' +
      'Take one down and pass it around, ' +
      '2 bottles of beer on the wall.\n';

    } else {
      output = `${number} bottles of beer on the wall, ` +
        `${number} bottles of beer.\n` +
        'Take one down and pass it around, ' +
        `${number - 1} bottles of beer on the wall.\n`;
    }

    return output;
  }

}

export { Bottles };
