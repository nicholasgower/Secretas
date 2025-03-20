from PIL import Image
import os

def add_last_frame(directory):
    for filename in os.listdir(directory):
        if filename.lower().endswith(('png', 'jpg', 'jpeg')):
            filepath = os.path.join(directory, filename)
            image = Image.open(filepath)
            
            # Get sprite dimensions
            width, height = image.size
            frame_width = width // 4 #(width // height)  # Assumes square frames
            
            # Extract the last frame
            last_frame = image.crop((width - frame_width, 0, width, height))
            
            # Create a new image with one extra frame
            new_image = Image.new('RGBA', (width + frame_width, height))
            new_image.paste(image, (0, 0))
            new_image.paste(last_frame, (width, 0))
            
            # Save the modified spritesheet
            new_filepath = os.path.join(directory, f"modified_{filename}")
            new_image.save(new_filepath)
            print(f"Modified spritesheet saved: {new_filepath}")

# Example usage
