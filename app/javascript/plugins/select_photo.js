const selectPhoto = () => {
  const target = document.getElementById("file-ip-1");

  if (target) {
    target.addEventListener("change", (event) => {
      if (event.target.files.length > 0) {
        let src = URL.createObjectURL(event.target.files[0]);
        let preview = document.getElementById("file-ip-1-preview");
        preview.src = src;
        preview.style.display = "block";
      }
    })
  }
};

export { selectPhoto };
