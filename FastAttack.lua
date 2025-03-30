-- Cargar librería para UI
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/FsJak6AT"))()

-- Crear ventana UI
local Window = Library:CreateWindow("Fast Attack")
local Tab = Window:CreateTab("Main")
local Section = Tab:CreateSection("Toggle")

-- Variable de estado del ataque rápido
local fastAttackEnabled = false

-- Botón para activar/desactivar
Section:CreateToggle("Enable Fast Attack", false, function(state)
    fastAttackEnabled = state
end)

-- Función para hacer ataques rápidos con el arco
local function FastAttack()
    while fastAttackEnabled do
        local player = game.Players.LocalPlayer
        local char = player.Character
        if char and char:FindFirstChildOfClass("Tool") then
            char:FindFirstChildOfClass("Tool"):Activate()
        end
        wait(0.1) -- Ajusta la velocidad de ataque
    end
end

-- Ejecutar en segundo plano
spawn(FastAttack)
