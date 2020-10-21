%hook SBIconController
- (bool)isAppLibraryAllowed {
	return NO;
}
- (bool)isAppLibrarySupported {
	return NO;
}
%end

%ctor {
	%init;
}
