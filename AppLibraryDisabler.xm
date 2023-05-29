/* App Library Disabler - Disable App Library on iOS
 * (c) Copyright 2020-2023 Tomasz Poliszuk
 *
 * App Library Disabler is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * App Library Disabler is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with App Library Disabler. If not, see <https://www.gnu.org/licenses/>.
 */


%hook SBIconController
- (bool)isAppLibraryAllowed {
	return NO;
}
- (bool)isAppLibrarySupported {
	return NO;
}
%end

%hook SBFloatingDockDefaults
- (bool)appLibraryEnabled {
	return NO;
}
%end

%hook SBRootFolderController
- (id)trailingCustomViewController {
	return nil;
}
%end

%hook SBRootFolderView
- (id)trailingCustomView {
	return nil;
}
%end
