local function cost()
  if mods["space-age"] then
    return {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1}
    }
  else
    return {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
    }
  end
end

local function prerequisites()
  if mods["space-age"] then
    return {"worker-robots-storage-3", "space-science-pack", "electromagnetic-science-pack"}
  else
    return {"worker-robots-storage-3", "space-science-pack"}
  end
end

data:extend
({
  {
    type = "technology",
    name = "worker-robots-storage-4",
    icon_mipmaps = 4,
    icon_size = 256,
    icons = {
      {
        icon = "__base__/graphics/technology/worker-robots-storage.png",
        icon_size = 256
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-capacity.png",
        icon_size = 128,
        scale = 0.5,
        shift = {50, 50}
      }
    },
    prerequisites = prerequisites(),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    unit =
    {
      count_formula = "500 * 1.94 ^ (L - 1)",
      ingredients = cost(),
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  }
})