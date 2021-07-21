local frame = CreateFrame('Frame', 'HeroMinimapFrame', Minimap);

frame:EnableMouseWheel(1);
frame:SetAllPoints(true);

frame:RegisterEvent('ADDON_LOADED');

frame:SetScript('OnEvent', function(self, event, ...)
	local arg = {...}

	if (event == 'ADDON_LOADED' and arg[1] == 'HeroMinimap') then
		MinimapZoomIn:Hide();
		MinimapZoomOut:Hide();
	end

end);

frame:SetScript('OnMouseWheel', function(self, delta)

	if (delta > 0 and MinimapZoomIn:IsEnabled()) then
		Minimap_ZoomInClick();
		return
	end

	if (delta < 0 and MinimapZoomOut:IsEnabled()) then
		Minimap_ZoomOutClick();
		return
	end

end);
