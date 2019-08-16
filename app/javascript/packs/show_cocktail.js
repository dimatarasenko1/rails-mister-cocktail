const showChangeIconOnImageHover = () => {
  const img = document.querySelector(".cocktail-card img");
  const icon = document.querySelector(".cocktail-card i");
  img.addEventListener('mouseover', () => {
    icon.style.opacity = 1;
  })
  img.addEventListener('mouseout', (event) => {
    console.log(event.relatedTarget)
    console.log(icon)
    if (event.relatedTarget !== icon) icon.style.opacity = 0;
  })
}

export { showChangeIconOnImageHover }
