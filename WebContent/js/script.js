function validateForm() {
    var title = document.forms["editProductForm"]["title"].value;
    if (title == "") {
        alert("Title is required");
        return false;
    }
    var titleLength = title.length;
    if (title < 2 || title > 65) {
        alert("Title should have 2 to 65 characters");
        return false;
    }
    
    var price = document.forms["editProductForm"]["price"].value;
    if (isNaN(price)) {
        alert("Price has to be a number");
        return false;
    }
    if (price == "") {
        alert("Price is required");
        return false;
    }

    var dateOfExpiry = document.forms["editProductForm"]["dateOfExpiry"].value;
    if (dateOfExpiry == "") {
        alert("Date of Expiry is required");
        return false;
    }
    
    if (!dateOfExpiry.match(/^(0[1-9]|[12][0-9]|3[01])[\- \/.](?:(0[1-9]|1[012])[\- \/.](19|20)[0-9]{2})$/)) {
        alert("Incorrect date format. Expected format (dd/mm/yyyy)");
        return false;
    }
}