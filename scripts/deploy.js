async function main() {
  const Banksy = await ethers.getContractFactory('Banksy');
  const Name = "Banksy's Wharf Rat";
  const Symbole = 'BWR';
  const URI = 'ar://YVz0uLt9Q8QGrI_CmlQ1Dab1yQGlCD4eh5rKfVoBA9U';
  const banksy = await Banksy.deploy(Name, Symbole, URI);
  console.log('Contract deployed to address:', banksy.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
