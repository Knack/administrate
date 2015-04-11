class OrderDashboard
  def attribute_adapters
    {
      id: :string,
      address_line_one: :string,
      address_line_two: :string,
      address_city: :string,
      address_state: :string,
      address_zip: :string,
    }
  end

  def index_page_attributes
    attributes
  end

  def form_attributes
    attributes - [:id]
  end

  def show_page_attributes
    attributes
  end

  def title_attribute
    :id
  end

  private

  def attributes
    [
      :id,
      :address_line_one,
      :address_line_two,
      :address_city,
      :address_state,
      :address_zip,
    ]
  end
end