defmodule SurfaceTailwind.Button do
  @moduledoc """
  """

  use Surface.Component

  prop type, :string, default: "button"

  @doc "The label of the button, when no content (default slot) is provided"
  prop label, :string

  @doc "Loading state"
  prop loading, :boolean

  slot default

  def render(assigns) do
    ~F"""
    <button>
      <#slot />
    </button>
    """
  end
end
