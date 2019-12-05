const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let seeMore = document.querySelectorAll('.seeMore');

    function addDescription(thing) {
        let targetInfo = document.querySelector(`#info${thing.ID}`),
            targetSeeMore = document.querySelector(`#seeMore${thing.ID}`),
            infoContent = `<p>${thing.Description}</p>`;
            

        if (targetSeeMore.innerHTML == "About The Game") {

            targetInfo.innerHTML = infoContent;
            targetSeeMore.innerHTML = "Less Info";
        }else {
            targetInfo.innerHTML = "";
            targetSeeMore.innerHTML = "About The Game";
        }
        
    }

    function getDescription(event) {
        event.preventDefault();

        // 1, 2, or 3 depending on which a tag you click
        let url = `/things/${this.getAttribute('href')}`;

        // This goes and fetches the database content (or an API endpoint) That's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                addDescription(data);
            })
            .catch((err) => console.log(err));
    }

    seeMore.forEach(button => button.addEventListener('click', getDescription));
})();