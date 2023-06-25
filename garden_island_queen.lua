--[[
--File Name: HopeInHealthcare.lua
--Description: This code will provide a solution for healthcare concerns
--Written By: John Smith
--[[

--== Constants ==--
local MAX_HEALTH_VALUE = 100;
local RESTORE_RATE_PER_TURN = 5;

--== Variables ==--
local healthValue = 0;

--== Functions ==--
--Restore the healthValue based on the current healthValue
local function restoreHealthValue()
	if healthValue < MAX_HEALTH_VALUE then
		healthValue = healthValue + RESTORE_RATE_PER_TURN;
	end
end

--Get the current healthValue
local function getHealthValue()
	return healthValue;
end

--Increase the healthValue by a given amount
local function addHealthValue(value)
	healthValue = healthValue + value;
end

--Decrease the healthValue by a given amount
local function subtractHealthValue(value)
	healthValue = healthValue - value;
end

--Check if the current healthValue is below a given threshold
local function isBelowThreshold(threshold)
	return healthValue < threshold;
end

--Check if the current healthValue is equal to or above a given threshold
local function isEqualOrAboveThreshold(threshold)
	return healthValue >= threshold;
end

--== Main Code ==--
--Restore the healthValue every turn
restoreHealthValue();

--Check if the current healthValue is below a given threshold
if isBelowThreshold(30) then
	--Do something
end

--Check if the current healthValue is equal or above a given threshold
if isEqualOrAboveThreshold(90) then
	--Do something else
end

--== End of File ==--