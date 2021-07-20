defmodule SurfaceTailwind.Catalogue.Button.Example01 do
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "Label",
    height: "90px",
    direction: "vertical",
    container: {:div, class: "buttons"}

  def render(assigns) do
    ~F"""
    <Button>Hello World</Button>
    """
  end
end
