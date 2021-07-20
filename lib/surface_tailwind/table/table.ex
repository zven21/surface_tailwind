defmodule SurfaceTailwind.Table do
  @moduledoc """
  Table Component
  """

  use Surface.LiveComponent

  slot default

  def render(assigns) do
    ~F"""
    <table>
      <#slot />
    </table>
    """
  end
end
