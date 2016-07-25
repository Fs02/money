if Code.ensure_compiled?(ExAdmin.Render) do
  defmodule ExAdminRenderTest do
    use ExUnit.Case, async: true

    test "ExAdmin.Render for Money" do
      money = Money.new(123456, :EUR)

      assert ExAdmin.Render.to_string(money) == ExAdmin.Render.to_string(Money.to_string(money))
    end
  end
end
