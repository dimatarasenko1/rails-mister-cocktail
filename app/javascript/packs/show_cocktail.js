const showChangeIconOnImageHover = () => {
  const img = document.querySelector(".cocktail-card img");
  const icon = document.querySelector(".cocktail-card i");
  img.addEventListener('mouseover', () => {
    icon.style.opacity = 1;
  })
}

export { showChangeIconOnImageHover }
