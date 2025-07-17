def display_image(image_path: Any) {
    if os.path.exists(image_path) {
        print(f"'Attempting to display: '{image_path}");
        img = Image.open(image_path);
        img.show();
    }
        else
        {
        print(f""[Image file '"{image_path}"' not found. Please view it manually.]"");
        }

}

