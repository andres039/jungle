<<<<<<< HEAD
# Helper function to open product images
=======
>>>>>>> feature/testing-product-page
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end