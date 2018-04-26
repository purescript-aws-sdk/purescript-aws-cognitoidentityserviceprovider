## Module AWS.CognitoIdentityServiceProvider.Requests

#### `addCustomAttributes`

``` purescript
addCustomAttributes :: forall eff. Service -> AddCustomAttributesRequest -> Aff (exception :: EXCEPTION | eff) AddCustomAttributesResponse
```

<p>Adds additional user attributes to the user pool schema.</p>

#### `adminAddUserToGroup`

``` purescript
adminAddUserToGroup :: forall eff. Service -> AdminAddUserToGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Adds the specified user to the specified group.</p> <p>Requires developer credentials.</p>

#### `adminConfirmSignUp`

``` purescript
adminConfirmSignUp :: forall eff. Service -> AdminConfirmSignUpRequest -> Aff (exception :: EXCEPTION | eff) AdminConfirmSignUpResponse
```

<p>Confirms user registration as an admin without using a confirmation code. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminCreateUser`

``` purescript
adminCreateUser :: forall eff. Service -> AdminCreateUserRequest -> Aff (exception :: EXCEPTION | eff) AdminCreateUserResponse
```

<p>Creates a new user in the specified user pool.</p> <p>If <code>MessageAction</code> is not set, the default is to send a welcome message via email or phone (SMS).</p> <note> <p>This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.</p> </note> <p>Alternatively, you can call AdminCreateUser with “SUPPRESS” for the <code>MessageAction</code> parameter, and Amazon Cognito will not send any email. </p> <p>In either case, the user will be in the <code>FORCE_CHANGE_PASSWORD</code> state until they sign in and change their password.</p> <p>AdminCreateUser requires developer credentials.</p>

#### `adminDeleteUser`

``` purescript
adminDeleteUser :: forall eff. Service -> AdminDeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes a user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminDeleteUserAttributes`

``` purescript
adminDeleteUserAttributes :: forall eff. Service -> AdminDeleteUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) AdminDeleteUserAttributesResponse
```

<p>Deletes the user attributes in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminDisableProviderForUser`

``` purescript
adminDisableProviderForUser :: forall eff. Service -> AdminDisableProviderForUserRequest -> Aff (exception :: EXCEPTION | eff) AdminDisableProviderForUserResponse
```

<p>Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked <code>DestinationUser</code>) signs in, they must create a new user account. See .</p> <p>This action is enabled only for admin access and requires developer credentials.</p> <p>The <code>ProviderName</code> must match the value specified when creating an IdP for the pool. </p> <p>To disable a native username + password user, the <code>ProviderName</code> value must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code>, with the <code>ProviderAttributeValue</code> being the name that is used in the user pool for the user.</p> <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for social identity providers. The <code>ProviderAttributeValue</code> must always be the exact subject that was used when the user was originally linked as a source user.</p> <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the <code>ProviderAttributeName</code> and <code>ProviderAttributeValue</code> must be the same values that were used for the <code>SourceUser</code> when the identities were originally linked in the call. (If the linking was done with <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same applies here). However, if the user has already signed in, the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the subject of the SAML assertion.</p>

#### `adminDisableUser`

``` purescript
adminDisableUser :: forall eff. Service -> AdminDisableUserRequest -> Aff (exception :: EXCEPTION | eff) AdminDisableUserResponse
```

<p>Disables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminEnableUser`

``` purescript
adminEnableUser :: forall eff. Service -> AdminEnableUserRequest -> Aff (exception :: EXCEPTION | eff) AdminEnableUserResponse
```

<p>Enables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminForgetDevice`

``` purescript
adminForgetDevice :: forall eff. Service -> AdminForgetDeviceRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Forgets the device, as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminGetDevice`

``` purescript
adminGetDevice :: forall eff. Service -> AdminGetDeviceRequest -> Aff (exception :: EXCEPTION | eff) AdminGetDeviceResponse
```

<p>Gets the device, as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminGetUser`

``` purescript
adminGetUser :: forall eff. Service -> AdminGetUserRequest -> Aff (exception :: EXCEPTION | eff) AdminGetUserResponse
```

<p>Gets the specified user by user name in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminInitiateAuth`

``` purescript
adminInitiateAuth :: forall eff. Service -> AdminInitiateAuthRequest -> Aff (exception :: EXCEPTION | eff) AdminInitiateAuthResponse
```

<p>Initiates the authentication flow, as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminLinkProviderForUser`

``` purescript
adminLinkProviderForUser :: forall eff. Service -> AdminLinkProviderForUserRequest -> Aff (exception :: EXCEPTION | eff) AdminLinkProviderForUserResponse
```

<p>Links an existing user account in a user pool (<code>DestinationUser</code>) to an identity from an external identity provider (<code>SourceUser</code>) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account. </p> <p> For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account. </p> <important> <p>Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.</p> </important> <p>See also .</p> <p>This action is enabled only for admin access and requires developer credentials.</p>

#### `adminListDevices`

``` purescript
adminListDevices :: forall eff. Service -> AdminListDevicesRequest -> Aff (exception :: EXCEPTION | eff) AdminListDevicesResponse
```

<p>Lists devices, as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminListGroupsForUser`

``` purescript
adminListGroupsForUser :: forall eff. Service -> AdminListGroupsForUserRequest -> Aff (exception :: EXCEPTION | eff) AdminListGroupsForUserResponse
```

<p>Lists the groups that the user belongs to.</p> <p>Requires developer credentials.</p>

#### `adminListUserAuthEvents`

``` purescript
adminListUserAuthEvents :: forall eff. Service -> AdminListUserAuthEventsRequest -> Aff (exception :: EXCEPTION | eff) AdminListUserAuthEventsResponse
```

<p>Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.</p>

#### `adminRemoveUserFromGroup`

``` purescript
adminRemoveUserFromGroup :: forall eff. Service -> AdminRemoveUserFromGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Removes the specified user from the specified group.</p> <p>Requires developer credentials.</p>

#### `adminResetUserPassword`

``` purescript
adminResetUserPassword :: forall eff. Service -> AdminResetUserPasswordRequest -> Aff (exception :: EXCEPTION | eff) AdminResetUserPasswordResponse
```

<p>Resets the specified user's password in a user pool as an administrator. Works on any user.</p> <p>When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.</p> <p>Requires developer credentials.</p>

#### `adminRespondToAuthChallenge`

``` purescript
adminRespondToAuthChallenge :: forall eff. Service -> AdminRespondToAuthChallengeRequest -> Aff (exception :: EXCEPTION | eff) AdminRespondToAuthChallengeResponse
```

<p>Responds to an authentication challenge, as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminSetUserMFAPreference`

``` purescript
adminSetUserMFAPreference :: forall eff. Service -> AdminSetUserMFAPreferenceRequest -> Aff (exception :: EXCEPTION | eff) AdminSetUserMFAPreferenceResponse
```

<p>Sets the user's multi-factor authentication (MFA) preference.</p>

#### `adminSetUserSettings`

``` purescript
adminSetUserSettings :: forall eff. Service -> AdminSetUserSettingsRequest -> Aff (exception :: EXCEPTION | eff) AdminSetUserSettingsResponse
```

<p>Sets all the user settings for a specified user name. Works on any user.</p> <p>Requires developer credentials.</p>

#### `adminUpdateAuthEventFeedback`

``` purescript
adminUpdateAuthEventFeedback :: forall eff. Service -> AdminUpdateAuthEventFeedbackRequest -> Aff (exception :: EXCEPTION | eff) AdminUpdateAuthEventFeedbackResponse
```

<p>Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>

#### `adminUpdateDeviceStatus`

``` purescript
adminUpdateDeviceStatus :: forall eff. Service -> AdminUpdateDeviceStatusRequest -> Aff (exception :: EXCEPTION | eff) AdminUpdateDeviceStatusResponse
```

<p>Updates the device status as an administrator.</p> <p>Requires developer credentials.</p>

#### `adminUpdateUserAttributes`

``` purescript
adminUpdateUserAttributes :: forall eff. Service -> AdminUpdateUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) AdminUpdateUserAttributesResponse
```

<p>Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>In addition to updating user attributes, this API can also be used to mark phone and email as verified.</p> <p>Requires developer credentials.</p>

#### `adminUserGlobalSignOut`

``` purescript
adminUserGlobalSignOut :: forall eff. Service -> AdminUserGlobalSignOutRequest -> Aff (exception :: EXCEPTION | eff) AdminUserGlobalSignOutResponse
```

<p>Signs out users from all devices, as an administrator.</p> <p>Requires developer credentials.</p>

#### `associateSoftwareToken`

``` purescript
associateSoftwareToken :: forall eff. Service -> AssociateSoftwareTokenRequest -> Aff (exception :: EXCEPTION | eff) AssociateSoftwareTokenResponse
```

<p>Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.</p>

#### `changePassword`

``` purescript
changePassword :: forall eff. Service -> ChangePasswordRequest -> Aff (exception :: EXCEPTION | eff) ChangePasswordResponse
```

<p>Changes the password for a specified user in a user pool.</p>

#### `confirmDevice`

``` purescript
confirmDevice :: forall eff. Service -> ConfirmDeviceRequest -> Aff (exception :: EXCEPTION | eff) ConfirmDeviceResponse
```

<p>Confirms tracking of the device. This API call is the call that begins device tracking.</p>

#### `confirmForgotPassword`

``` purescript
confirmForgotPassword :: forall eff. Service -> ConfirmForgotPasswordRequest -> Aff (exception :: EXCEPTION | eff) ConfirmForgotPasswordResponse
```

<p>Allows a user to enter a confirmation code to reset a forgotten password.</p>

#### `confirmSignUp`

``` purescript
confirmSignUp :: forall eff. Service -> ConfirmSignUpRequest -> Aff (exception :: EXCEPTION | eff) ConfirmSignUpResponse
```

<p>Confirms registration of a user and handles the existing alias from a previous user.</p>

#### `createGroup`

``` purescript
createGroup :: forall eff. Service -> CreateGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateGroupResponse
```

<p>Creates a new group in the specified user pool.</p> <p>Requires developer credentials.</p>

#### `createIdentityProvider`

``` purescript
createIdentityProvider :: forall eff. Service -> CreateIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) CreateIdentityProviderResponse
```

<p>Creates an identity provider for a user pool.</p>

#### `createResourceServer`

``` purescript
createResourceServer :: forall eff. Service -> CreateResourceServerRequest -> Aff (exception :: EXCEPTION | eff) CreateResourceServerResponse
```

<p>Creates a new OAuth2.0 resource server and defines custom scopes in it.</p>

#### `createUserImportJob`

``` purescript
createUserImportJob :: forall eff. Service -> CreateUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) CreateUserImportJobResponse
```

<p>Creates the user import job.</p>

#### `createUserPool`

``` purescript
createUserPool :: forall eff. Service -> CreateUserPoolRequest -> Aff (exception :: EXCEPTION | eff) CreateUserPoolResponse
```

<p>Creates a new Amazon Cognito user pool and sets the password policy for the pool.</p>

#### `createUserPoolClient`

``` purescript
createUserPoolClient :: forall eff. Service -> CreateUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) CreateUserPoolClientResponse
```

<p>Creates the user pool client.</p>

#### `createUserPoolDomain`

``` purescript
createUserPoolDomain :: forall eff. Service -> CreateUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) CreateUserPoolDomainResponse
```

<p>Creates a new domain for a user pool.</p>

#### `deleteGroup`

``` purescript
deleteGroup :: forall eff. Service -> DeleteGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes a group. Currently only groups with no members can be deleted.</p> <p>Requires developer credentials.</p>

#### `deleteIdentityProvider`

``` purescript
deleteIdentityProvider :: forall eff. Service -> DeleteIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes an identity provider for a user pool.</p>

#### `deleteResourceServer`

``` purescript
deleteResourceServer :: forall eff. Service -> DeleteResourceServerRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes a resource server.</p>

#### `deleteUser`

``` purescript
deleteUser :: forall eff. Service -> DeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Allows a user to delete himself or herself.</p>

#### `deleteUserAttributes`

``` purescript
deleteUserAttributes :: forall eff. Service -> DeleteUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) DeleteUserAttributesResponse
```

<p>Deletes the attributes for a user.</p>

#### `deleteUserPool`

``` purescript
deleteUserPool :: forall eff. Service -> DeleteUserPoolRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the specified Amazon Cognito user pool.</p>

#### `deleteUserPoolClient`

``` purescript
deleteUserPoolClient :: forall eff. Service -> DeleteUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Allows the developer to delete the user pool client.</p>

#### `deleteUserPoolDomain`

``` purescript
deleteUserPoolDomain :: forall eff. Service -> DeleteUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteUserPoolDomainResponse
```

<p>Deletes a domain for a user pool.</p>

#### `describeIdentityProvider`

``` purescript
describeIdentityProvider :: forall eff. Service -> DescribeIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) DescribeIdentityProviderResponse
```

<p>Gets information about a specific identity provider.</p>

#### `describeResourceServer`

``` purescript
describeResourceServer :: forall eff. Service -> DescribeResourceServerRequest -> Aff (exception :: EXCEPTION | eff) DescribeResourceServerResponse
```

<p>Describes a resource server.</p>

#### `describeRiskConfiguration`

``` purescript
describeRiskConfiguration :: forall eff. Service -> DescribeRiskConfigurationRequest -> Aff (exception :: EXCEPTION | eff) DescribeRiskConfigurationResponse
```

<p>Describes the risk configuration.</p>

#### `describeUserImportJob`

``` purescript
describeUserImportJob :: forall eff. Service -> DescribeUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserImportJobResponse
```

<p>Describes the user import job.</p>

#### `describeUserPool`

``` purescript
describeUserPool :: forall eff. Service -> DescribeUserPoolRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserPoolResponse
```

<p>Returns the configuration information and metadata of the specified user pool.</p>

#### `describeUserPoolClient`

``` purescript
describeUserPoolClient :: forall eff. Service -> DescribeUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserPoolClientResponse
```

<p>Client method for returning the configuration information and metadata of the specified user pool client.</p>

#### `describeUserPoolDomain`

``` purescript
describeUserPoolDomain :: forall eff. Service -> DescribeUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserPoolDomainResponse
```

<p>Gets information about a domain.</p>

#### `forgetDevice`

``` purescript
forgetDevice :: forall eff. Service -> ForgetDeviceRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Forgets the specified device.</p>

#### `forgotPassword`

``` purescript
forgotPassword :: forall eff. Service -> ForgotPasswordRequest -> Aff (exception :: EXCEPTION | eff) ForgotPasswordResponse
```

<p>Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the <code>Username</code> parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, <code>InvalidParameterException</code> is thrown. To use the confirmation code for resetting the password, call .</p>

#### `getCSVHeader`

``` purescript
getCSVHeader :: forall eff. Service -> GetCSVHeaderRequest -> Aff (exception :: EXCEPTION | eff) GetCSVHeaderResponse
```

<p>Gets the header information for the .csv file to be used as input for the user import job.</p>

#### `getDevice`

``` purescript
getDevice :: forall eff. Service -> GetDeviceRequest -> Aff (exception :: EXCEPTION | eff) GetDeviceResponse
```

<p>Gets the device.</p>

#### `getGroup`

``` purescript
getGroup :: forall eff. Service -> GetGroupRequest -> Aff (exception :: EXCEPTION | eff) GetGroupResponse
```

<p>Gets a group.</p> <p>Requires developer credentials.</p>

#### `getIdentityProviderByIdentifier`

``` purescript
getIdentityProviderByIdentifier :: forall eff. Service -> GetIdentityProviderByIdentifierRequest -> Aff (exception :: EXCEPTION | eff) GetIdentityProviderByIdentifierResponse
```

<p>Gets the specified identity provider.</p>

#### `getSigningCertificate`

``` purescript
getSigningCertificate :: forall eff. Service -> GetSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) GetSigningCertificateResponse
```

<p>This method takes a user pool ID, and returns the signing certificate.</p>

#### `getUICustomization`

``` purescript
getUICustomization :: forall eff. Service -> GetUICustomizationRequest -> Aff (exception :: EXCEPTION | eff) GetUICustomizationResponse
```

<p>Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app <code>clientId</code> will be <code>ALL</code>), then that is returned. If nothing is present, then an empty shape is returned.</p>

#### `getUser`

``` purescript
getUser :: forall eff. Service -> GetUserRequest -> Aff (exception :: EXCEPTION | eff) GetUserResponse
```

<p>Gets the user attributes and metadata for a user.</p>

#### `getUserAttributeVerificationCode`

``` purescript
getUserAttributeVerificationCode :: forall eff. Service -> GetUserAttributeVerificationCodeRequest -> Aff (exception :: EXCEPTION | eff) GetUserAttributeVerificationCodeResponse
```

<p>Gets the user attribute verification code for the specified attribute name.</p>

#### `getUserPoolMfaConfig`

``` purescript
getUserPoolMfaConfig :: forall eff. Service -> GetUserPoolMfaConfigRequest -> Aff (exception :: EXCEPTION | eff) GetUserPoolMfaConfigResponse
```

<p>Gets the user pool multi-factor authentication (MFA) configuration.</p>

#### `globalSignOut`

``` purescript
globalSignOut :: forall eff. Service -> GlobalSignOutRequest -> Aff (exception :: EXCEPTION | eff) GlobalSignOutResponse
```

<p>Signs out users from all devices.</p>

#### `initiateAuth`

``` purescript
initiateAuth :: forall eff. Service -> InitiateAuthRequest -> Aff (exception :: EXCEPTION | eff) InitiateAuthResponse
```

<p>Initiates the authentication flow.</p>

#### `listDevices`

``` purescript
listDevices :: forall eff. Service -> ListDevicesRequest -> Aff (exception :: EXCEPTION | eff) ListDevicesResponse
```

<p>Lists the devices.</p>

#### `listGroups`

``` purescript
listGroups :: forall eff. Service -> ListGroupsRequest -> Aff (exception :: EXCEPTION | eff) ListGroupsResponse
```

<p>Lists the groups associated with a user pool.</p> <p>Requires developer credentials.</p>

#### `listIdentityProviders`

``` purescript
listIdentityProviders :: forall eff. Service -> ListIdentityProvidersRequest -> Aff (exception :: EXCEPTION | eff) ListIdentityProvidersResponse
```

<p>Lists information about all identity providers for a user pool.</p>

#### `listResourceServers`

``` purescript
listResourceServers :: forall eff. Service -> ListResourceServersRequest -> Aff (exception :: EXCEPTION | eff) ListResourceServersResponse
```

<p>Lists the resource servers for a user pool.</p>

#### `listUserImportJobs`

``` purescript
listUserImportJobs :: forall eff. Service -> ListUserImportJobsRequest -> Aff (exception :: EXCEPTION | eff) ListUserImportJobsResponse
```

<p>Lists the user import jobs.</p>

#### `listUserPoolClients`

``` purescript
listUserPoolClients :: forall eff. Service -> ListUserPoolClientsRequest -> Aff (exception :: EXCEPTION | eff) ListUserPoolClientsResponse
```

<p>Lists the clients that have been created for the specified user pool.</p>

#### `listUserPools`

``` purescript
listUserPools :: forall eff. Service -> ListUserPoolsRequest -> Aff (exception :: EXCEPTION | eff) ListUserPoolsResponse
```

<p>Lists the user pools associated with an AWS account.</p>

#### `listUsers`

``` purescript
listUsers :: forall eff. Service -> ListUsersRequest -> Aff (exception :: EXCEPTION | eff) ListUsersResponse
```

<p>Lists the users in the Amazon Cognito user pool.</p>

#### `listUsersInGroup`

``` purescript
listUsersInGroup :: forall eff. Service -> ListUsersInGroupRequest -> Aff (exception :: EXCEPTION | eff) ListUsersInGroupResponse
```

<p>Lists the users in the specified group.</p> <p>Requires developer credentials.</p>

#### `resendConfirmationCode`

``` purescript
resendConfirmationCode :: forall eff. Service -> ResendConfirmationCodeRequest -> Aff (exception :: EXCEPTION | eff) ResendConfirmationCodeResponse
```

<p>Resends the confirmation (for confirmation of registration) to a specific user in the user pool.</p>

#### `respondToAuthChallenge`

``` purescript
respondToAuthChallenge :: forall eff. Service -> RespondToAuthChallengeRequest -> Aff (exception :: EXCEPTION | eff) RespondToAuthChallengeResponse
```

<p>Responds to the authentication challenge.</p>

#### `setRiskConfiguration`

``` purescript
setRiskConfiguration :: forall eff. Service -> SetRiskConfigurationRequest -> Aff (exception :: EXCEPTION | eff) SetRiskConfigurationResponse
```

<p>Configures actions on detected risks. To delete the risk configuration for <code>UserPoolId</code> or <code>ClientId</code>, pass null values for all four configuration types.</p> <p>To enable Amazon Cognito advanced security features, update the user pool to include the <code>UserPoolAddOns</code> key<code>AdvancedSecurityMode</code>.</p> <p>See .</p>

#### `setUICustomization`

``` purescript
setUICustomization :: forall eff. Service -> SetUICustomizationRequest -> Aff (exception :: EXCEPTION | eff) SetUICustomizationResponse
```

<p>Sets the UI customization information for a user pool's built-in app UI.</p> <p>You can specify app UI customization settings for a single client (with a specific <code>clientId</code>) or for all clients (by setting the <code>clientId</code> to <code>ALL</code>). If you specify <code>ALL</code>, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the <code>ALL</code> configuration. </p> <note> <p>To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error.</p> </note>

#### `setUserMFAPreference`

``` purescript
setUserMFAPreference :: forall eff. Service -> SetUserMFAPreferenceRequest -> Aff (exception :: EXCEPTION | eff) SetUserMFAPreferenceResponse
```

<p>Set the user's multi-factor authentication (MFA) method preference.</p>

#### `setUserPoolMfaConfig`

``` purescript
setUserPoolMfaConfig :: forall eff. Service -> SetUserPoolMfaConfigRequest -> Aff (exception :: EXCEPTION | eff) SetUserPoolMfaConfigResponse
```

<p>Set the user pool MFA configuration.</p>

#### `setUserSettings`

``` purescript
setUserSettings :: forall eff. Service -> SetUserSettingsRequest -> Aff (exception :: EXCEPTION | eff) SetUserSettingsResponse
```

<p>Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.</p>

#### `signUp`

``` purescript
signUp :: forall eff. Service -> SignUpRequest -> Aff (exception :: EXCEPTION | eff) SignUpResponse
```

<p>Registers the user in the specified user pool and creates a user name, password, and user attributes.</p>

#### `startUserImportJob`

``` purescript
startUserImportJob :: forall eff. Service -> StartUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) StartUserImportJobResponse
```

<p>Starts the user import.</p>

#### `stopUserImportJob`

``` purescript
stopUserImportJob :: forall eff. Service -> StopUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) StopUserImportJobResponse
```

<p>Stops the user import job.</p>

#### `updateAuthEventFeedback`

``` purescript
updateAuthEventFeedback :: forall eff. Service -> UpdateAuthEventFeedbackRequest -> Aff (exception :: EXCEPTION | eff) UpdateAuthEventFeedbackResponse
```

<p>Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>

#### `updateDeviceStatus`

``` purescript
updateDeviceStatus :: forall eff. Service -> UpdateDeviceStatusRequest -> Aff (exception :: EXCEPTION | eff) UpdateDeviceStatusResponse
```

<p>Updates the device status.</p>

#### `updateGroup`

``` purescript
updateGroup :: forall eff. Service -> UpdateGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateGroupResponse
```

<p>Updates the specified group with the specified attributes.</p> <p>Requires developer credentials.</p>

#### `updateIdentityProvider`

``` purescript
updateIdentityProvider :: forall eff. Service -> UpdateIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) UpdateIdentityProviderResponse
```

<p>Updates identity provider information for a user pool.</p>

#### `updateResourceServer`

``` purescript
updateResourceServer :: forall eff. Service -> UpdateResourceServerRequest -> Aff (exception :: EXCEPTION | eff) UpdateResourceServerResponse
```

<p>Updates the name and scopes of resource server. All other fields are read-only.</p>

#### `updateUserAttributes`

``` purescript
updateUserAttributes :: forall eff. Service -> UpdateUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) UpdateUserAttributesResponse
```

<p>Allows a user to update a specific attribute (one at a time).</p>

#### `updateUserPool`

``` purescript
updateUserPool :: forall eff. Service -> UpdateUserPoolRequest -> Aff (exception :: EXCEPTION | eff) UpdateUserPoolResponse
```

<p>Updates the specified user pool with the specified attributes.</p>

#### `updateUserPoolClient`

``` purescript
updateUserPoolClient :: forall eff. Service -> UpdateUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) UpdateUserPoolClientResponse
```

<p>Allows the developer to update the specified user pool client and password policy.</p>

#### `verifySoftwareToken`

``` purescript
verifySoftwareToken :: forall eff. Service -> VerifySoftwareTokenRequest -> Aff (exception :: EXCEPTION | eff) VerifySoftwareTokenResponse
```

<p>Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful,</p>

#### `verifyUserAttribute`

``` purescript
verifyUserAttribute :: forall eff. Service -> VerifyUserAttributeRequest -> Aff (exception :: EXCEPTION | eff) VerifyUserAttributeResponse
```

<p>Verifies the specified user attributes in the user pool.</p>


