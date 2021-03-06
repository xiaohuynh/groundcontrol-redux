AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.ExplodeRadius = 300
ENT.ExplodeDamage = 100
ENT.Model = "models/weapons/w_cw_fraggrenade_thrown.mdl"

local phys, ef

function ENT:Initialize()
    self:SetModel(self.Model)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_BBOX)
    self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    self.NextImpact = 0
    phys = self:GetPhysicsObject()

    if phys and phys:IsValid() then
        phys:Wake()
    end

    self:GetPhysicsObject():SetBuoyancyRatio(0)
end

function ENT:Use(activator, caller)
    return false
end

function ENT:OnRemove()
    return false
end

local vel, len, CT

function ENT:PhysicsCollide(data, physobj)
    vel = physobj:GetVelocity()
    len = vel:Length()

    if len > 500 then -- let it roll
        physobj:SetVelocity(vel * 0.6) -- cheap as fuck, but it works
    end

    if len > 100 then
        CT = CurTime()

        if CT > self.NextImpact then
            self:EmitSound("weapons/hegrenade/he_bounce-1.wav", 75, 100)
            self.NextImpact = CT + 0.1
        end
    end
end

function ENT:Fuse(t)
    t = t or 3

    timer.Simple(t, function()
        if self:IsValid() then
            util.BlastDamage(self, self:GetOwner(), self:GetPos(), self.ExplodeRadius, self.ExplodeDamage)

            ef = EffectData()
            ef:SetOrigin(self:GetPos())
            ef:SetMagnitude(1)

            util.Effect("Explosion", ef)

            self:Remove()
        end
    end)
end