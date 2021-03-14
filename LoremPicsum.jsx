
function LoremPicsum() {

  // Function to generate random id number to pull new photo from Lorem Picsum:
  // I know there are at least 1,000 but less than 1,100 photo ID's available.
  function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
  }
  console.log('getRandomInt:', getRandomInt(1000));

  // Capture random Int
  let randomInt = getRandomInt(1000);

  // Incorporate random Int as photo ID to be used in JSX:
  // Send this to db as picture_url
  let imageSRC = `https://picsum.photos/id/${randomInt}/200/300`

  return (
    <div className="container">
      <h1>Random Photo each time page loads:</h1>
      <img src={imageSRC}
        alt="random image for learner to describe in foreign language" />

    </div>
  );
}