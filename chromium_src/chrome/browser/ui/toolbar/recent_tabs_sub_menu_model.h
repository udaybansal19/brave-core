/* Copyright (c) 2020 The Brave Authors. All rights reserved.
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/. */

#ifndef BRAVE_CHROMIUM_SRC_CHROME_BROWSER_UI_TOOLBAR_RECENT_TABS_SUB_MENU_MODEL_H_
#define BRAVE_CHROMIUM_SRC_CHROME_BROWSER_UI_TOOLBAR_RECENT_TABS_SUB_MENU_MODEL_H_

#include <memory>

#define menu_opened_timer_                         \
  menu_opened_timer_;                              \
  std::unique_ptr<sessions::SessionTab> stub_tab_; \
  friend class BraveRecentTabsSubMenuModel

#include "src/chrome/browser/ui/toolbar/recent_tabs_sub_menu_model.h"  // IWYU pragma: export

#undef menu_opened_timer_

#endif  // BRAVE_CHROMIUM_SRC_CHROME_BROWSER_UI_TOOLBAR_RECENT_TABS_SUB_MENU_MODEL_H_
