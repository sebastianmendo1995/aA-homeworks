export const fetchSearchGiphys = (searchTerm) => (
    $.ajax ({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=GL0ZBDcGHbuW55HP83wt77BZFVsEXRTr&limit=2`  
    })
);