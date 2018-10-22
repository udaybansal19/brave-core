/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/. */

import * as React from 'react'

// Feature-specific components
import { SelectBox, Stat, Grid, EmptyButton, ShowMoreIcon } from '../../../../src/features/shields'

// Component groups
import BlockedResources from './blockedReources/blockedResources'
import StaticList from './blockedReources/staticList'

// Fake data
import locale from '../fakeLocale'
import data from '../fakeData'

interface Props {
  enabled: boolean
  sitename: string
  favicon: string
}

interface State {
  openScriptsBlockedList: boolean
  openDeviceRecognitionList: boolean
}

export default class PrivacyControls extends React.PureComponent<Props, State> {
  constructor (props: Props) {
    super(props)
    this.state = {
      openScriptsBlockedList: false,
      openDeviceRecognitionList: false
    }
  }

  get scriptsBlockedList () {
    const { favicon, sitename } = this.props
    return (
      <BlockedResources
        favicon={favicon}
        sitename={sitename}
        title={locale.javascriptBlocked}
        onToggle={this.onToggleScriptsBlocked}
        data={data.thirdPartyScriptsBlocked}
      >
        <StaticList
          onClickDismiss={this.onToggleScriptsBlocked}
          list={data.blockedFakeResources}
        />
      </BlockedResources>
    )
  }

  get deviceRecognitionList () {
    const { favicon, sitename } = this.props
    return (
      <BlockedResources
        favicon={favicon}
        sitename={sitename}
        title={locale.deviceRecognitionAttempts}
        onToggle={this.onToggleDeviceRecognition}
        data={data.thirdPartyDeviceRecognitionBlocked}
      >
        <StaticList
          onClickDismiss={this.onToggleDeviceRecognition}
          list={data.blockedFakeResources}
        />
      </BlockedResources>
    )
  }

  onToggleScriptsBlocked = () => {
    this.setState({ openScriptsBlockedList: !this.state.openScriptsBlockedList })
  }

  onToggleDeviceRecognition = () => {
    this.setState({ openDeviceRecognitionList: !this.state.openDeviceRecognitionList })
  }

  render () {
    const { enabled } = this.props
    const { openScriptsBlockedList, openDeviceRecognitionList } = this.state

    if (!enabled) {
      return null
    }
    return (
      <>
        {/* cookies select */}
        <Grid>
          <EmptyButton />
          <Stat /> {/* {data.thirdPartyCookiesBlocked}</Stat> */}
          <SelectBox>
            <option value='block_third_party'>{locale.block3partyCookies}</option>
            <option value='block'>{locale.blockAllCookies}</option>
            <option value='allow'>{locale.allowAllCookies}</option>
          </SelectBox>
        </Grid>
        {/* scripts select */}
        <Grid>
          <EmptyButton onClick={this.onToggleScriptsBlocked}><ShowMoreIcon /></EmptyButton>
          <Stat>{data.thirdPartyScriptsBlocked}</Stat>
          <SelectBox>
            <option value='block_third_party'>{locale.block3partyScripts}</option>
            <option value='block'>{locale.blockAllScripts}</option>
            <option value='allow'>{locale.allowAllScripts}</option>
          </SelectBox>
          {openScriptsBlockedList ? this.scriptsBlockedList : null}
        </Grid>
        {/* fingerprinting select */}
        <Grid>
          <EmptyButton onClick={this.onToggleDeviceRecognition}><ShowMoreIcon /></EmptyButton>
          <Stat>{data.thirdPartyDeviceRecognitionBlocked}</Stat>
          <SelectBox>
            <option value='block_third_party'>{locale.block3partyFingerprinting}</option>
            <option value='block'>{locale.blockAllFingerprinting}</option>
            <option value='allow'>{locale.allowAllFingerprinting}</option>
          </SelectBox>
          {openDeviceRecognitionList ? this.deviceRecognitionList : null}
        </Grid>
      </>
    )
  }
}
