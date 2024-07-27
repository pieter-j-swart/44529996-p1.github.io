// Handle navigation clicks
document.querySelectorAll('.menu li').forEach(item => {
    item.addEventListener('click', event => {
        // Hide all content items
        document.querySelectorAll('.content-item').forEach(content => {
            content.classList.remove('active');
        });
        // Show the selected content item
        const contentId = item.getAttribute('data-content');
        document.getElementById(contentId).classList.add('active');
    });
});

// Handle certification descriptions
document.querySelectorAll('.cert-item').forEach(item => {
    item.addEventListener('mouseover', () => {
        // Show the description for the hovered item
        const certId = item.getAttribute('data-cert');
        document.getElementById(certId).classList.add('show-description');
    });

    item.addEventListener('mouseout', () => {
        // Hide the description when mouse leaves
        const certId = item.getAttribute('data-cert');
        document.getElementById(certId).classList.remove('show-description');
    });
});

