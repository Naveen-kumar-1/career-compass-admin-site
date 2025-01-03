const navMenu = document.getElementById('nav-menu');
const navLinks = document.querySelector('.nav-links');

navMenu.addEventListener('click', () => {
    navLinks.classList.toggle('active');
});