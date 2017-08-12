import $ from 'jquery';
import IncSearch from './incsearch';

$(() => {
  const cards = $('.card');
  const list = cards.map((i, elem, self) => {
    const url = $(elem).children('.url').text();
    const domain = url.split('/').slice(0, 3).join('/');
    const faviconUrl = `http://www.google.com/s2/favicons?domain=${domain}`

    console.log(faviconUrl);

    return {
      url,
      title: $(elem).children('.title').text(),
      info: `<p><img src=${faviconUrl} /></p>${$(elem).children('.text').text()}`,
      tags: [],
      others: [ $(elem).children('.created_at').text() ],
    }
  });

  console.log(list);

  const start = () => {
    new IncSearch.ViewBookmark(
      'text',
      'view_area',
      list,
      {
        /* startElementText: '<table><tr><th width="50%">ゲーム</th><th width="50%">メーカー</th>', */
        ignoreCase: true,
        /* useHotkey: true, */
      }
    );
  };

  window.addEventListener ?
    window.addEventListener('load', start, false) :
    window.attachEvent('onload', start);

});
