## Module AWS.CognitoIdentityServiceProvider.Types

#### `options`

``` purescript
options :: Options
```

#### `AWSAccountIdType`

``` purescript
newtype AWSAccountIdType
  = AWSAccountIdType String
```

##### Instances
``` purescript
Newtype AWSAccountIdType _
Generic AWSAccountIdType _
Show AWSAccountIdType
Decode AWSAccountIdType
Encode AWSAccountIdType
```

#### `AccountTakeoverActionNotifyType`

``` purescript
newtype AccountTakeoverActionNotifyType
  = AccountTakeoverActionNotifyType Boolean
```

##### Instances
``` purescript
Newtype AccountTakeoverActionNotifyType _
Generic AccountTakeoverActionNotifyType _
Show AccountTakeoverActionNotifyType
Decode AccountTakeoverActionNotifyType
Encode AccountTakeoverActionNotifyType
```

#### `AccountTakeoverActionType`

``` purescript
newtype AccountTakeoverActionType
  = AccountTakeoverActionType { "Notify" :: AccountTakeoverActionNotifyType, "EventAction" :: AccountTakeoverEventActionType }
```

<p>Account takeover action type.</p>

##### Instances
``` purescript
Newtype AccountTakeoverActionType _
Generic AccountTakeoverActionType _
Show AccountTakeoverActionType
Decode AccountTakeoverActionType
Encode AccountTakeoverActionType
```

#### `newAccountTakeoverActionType`

``` purescript
newAccountTakeoverActionType :: AccountTakeoverEventActionType -> AccountTakeoverActionNotifyType -> AccountTakeoverActionType
```

Constructs AccountTakeoverActionType from required parameters

#### `newAccountTakeoverActionType'`

``` purescript
newAccountTakeoverActionType' :: AccountTakeoverEventActionType -> AccountTakeoverActionNotifyType -> ({ "Notify" :: AccountTakeoverActionNotifyType, "EventAction" :: AccountTakeoverEventActionType } -> { "Notify" :: AccountTakeoverActionNotifyType, "EventAction" :: AccountTakeoverEventActionType }) -> AccountTakeoverActionType
```

Constructs AccountTakeoverActionType's fields from required parameters

#### `AccountTakeoverActionsType`

``` purescript
newtype AccountTakeoverActionsType
  = AccountTakeoverActionsType { "LowAction" :: NullOrUndefined (AccountTakeoverActionType), "MediumAction" :: NullOrUndefined (AccountTakeoverActionType), "HighAction" :: NullOrUndefined (AccountTakeoverActionType) }
```

<p>Account takeover actions type.</p>

##### Instances
``` purescript
Newtype AccountTakeoverActionsType _
Generic AccountTakeoverActionsType _
Show AccountTakeoverActionsType
Decode AccountTakeoverActionsType
Encode AccountTakeoverActionsType
```

#### `newAccountTakeoverActionsType`

``` purescript
newAccountTakeoverActionsType :: AccountTakeoverActionsType
```

Constructs AccountTakeoverActionsType from required parameters

#### `newAccountTakeoverActionsType'`

``` purescript
newAccountTakeoverActionsType' :: ({ "LowAction" :: NullOrUndefined (AccountTakeoverActionType), "MediumAction" :: NullOrUndefined (AccountTakeoverActionType), "HighAction" :: NullOrUndefined (AccountTakeoverActionType) } -> { "LowAction" :: NullOrUndefined (AccountTakeoverActionType), "MediumAction" :: NullOrUndefined (AccountTakeoverActionType), "HighAction" :: NullOrUndefined (AccountTakeoverActionType) }) -> AccountTakeoverActionsType
```

Constructs AccountTakeoverActionsType's fields from required parameters

#### `AccountTakeoverEventActionType`

``` purescript
newtype AccountTakeoverEventActionType
  = AccountTakeoverEventActionType String
```

##### Instances
``` purescript
Newtype AccountTakeoverEventActionType _
Generic AccountTakeoverEventActionType _
Show AccountTakeoverEventActionType
Decode AccountTakeoverEventActionType
Encode AccountTakeoverEventActionType
```

#### `AccountTakeoverRiskConfigurationType`

``` purescript
newtype AccountTakeoverRiskConfigurationType
  = AccountTakeoverRiskConfigurationType { "NotifyConfiguration" :: NullOrUndefined (NotifyConfigurationType), "Actions" :: AccountTakeoverActionsType }
```

<p>Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.</p>

##### Instances
``` purescript
Newtype AccountTakeoverRiskConfigurationType _
Generic AccountTakeoverRiskConfigurationType _
Show AccountTakeoverRiskConfigurationType
Decode AccountTakeoverRiskConfigurationType
Encode AccountTakeoverRiskConfigurationType
```

#### `newAccountTakeoverRiskConfigurationType`

``` purescript
newAccountTakeoverRiskConfigurationType :: AccountTakeoverActionsType -> AccountTakeoverRiskConfigurationType
```

Constructs AccountTakeoverRiskConfigurationType from required parameters

#### `newAccountTakeoverRiskConfigurationType'`

``` purescript
newAccountTakeoverRiskConfigurationType' :: AccountTakeoverActionsType -> ({ "NotifyConfiguration" :: NullOrUndefined (NotifyConfigurationType), "Actions" :: AccountTakeoverActionsType } -> { "NotifyConfiguration" :: NullOrUndefined (NotifyConfigurationType), "Actions" :: AccountTakeoverActionsType }) -> AccountTakeoverRiskConfigurationType
```

Constructs AccountTakeoverRiskConfigurationType's fields from required parameters

#### `AddCustomAttributesRequest`

``` purescript
newtype AddCustomAttributesRequest
  = AddCustomAttributesRequest { "UserPoolId" :: UserPoolIdType, "CustomAttributes" :: CustomAttributesListType }
```

<p>Represents the request to add custom attributes.</p>

##### Instances
``` purescript
Newtype AddCustomAttributesRequest _
Generic AddCustomAttributesRequest _
Show AddCustomAttributesRequest
Decode AddCustomAttributesRequest
Encode AddCustomAttributesRequest
```

#### `newAddCustomAttributesRequest`

``` purescript
newAddCustomAttributesRequest :: CustomAttributesListType -> UserPoolIdType -> AddCustomAttributesRequest
```

Constructs AddCustomAttributesRequest from required parameters

#### `newAddCustomAttributesRequest'`

``` purescript
newAddCustomAttributesRequest' :: CustomAttributesListType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "CustomAttributes" :: CustomAttributesListType } -> { "UserPoolId" :: UserPoolIdType, "CustomAttributes" :: CustomAttributesListType }) -> AddCustomAttributesRequest
```

Constructs AddCustomAttributesRequest's fields from required parameters

#### `AddCustomAttributesResponse`

``` purescript
newtype AddCustomAttributesResponse
  = AddCustomAttributesResponse NoArguments
```

<p>Represents the response from the server for the request to add custom attributes.</p>

##### Instances
``` purescript
Newtype AddCustomAttributesResponse _
Generic AddCustomAttributesResponse _
Show AddCustomAttributesResponse
Decode AddCustomAttributesResponse
Encode AddCustomAttributesResponse
```

#### `AdminAddUserToGroupRequest`

``` purescript
newtype AdminAddUserToGroupRequest
  = AdminAddUserToGroupRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType }
```

##### Instances
``` purescript
Newtype AdminAddUserToGroupRequest _
Generic AdminAddUserToGroupRequest _
Show AdminAddUserToGroupRequest
Decode AdminAddUserToGroupRequest
Encode AdminAddUserToGroupRequest
```

#### `newAdminAddUserToGroupRequest`

``` purescript
newAdminAddUserToGroupRequest :: GroupNameType -> UserPoolIdType -> UsernameType -> AdminAddUserToGroupRequest
```

Constructs AdminAddUserToGroupRequest from required parameters

#### `newAdminAddUserToGroupRequest'`

``` purescript
newAdminAddUserToGroupRequest' :: GroupNameType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType }) -> AdminAddUserToGroupRequest
```

Constructs AdminAddUserToGroupRequest's fields from required parameters

#### `AdminConfirmSignUpRequest`

``` purescript
newtype AdminConfirmSignUpRequest
  = AdminConfirmSignUpRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to confirm user registration.</p>

##### Instances
``` purescript
Newtype AdminConfirmSignUpRequest _
Generic AdminConfirmSignUpRequest _
Show AdminConfirmSignUpRequest
Decode AdminConfirmSignUpRequest
Encode AdminConfirmSignUpRequest
```

#### `newAdminConfirmSignUpRequest`

``` purescript
newAdminConfirmSignUpRequest :: UserPoolIdType -> UsernameType -> AdminConfirmSignUpRequest
```

Constructs AdminConfirmSignUpRequest from required parameters

#### `newAdminConfirmSignUpRequest'`

``` purescript
newAdminConfirmSignUpRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminConfirmSignUpRequest
```

Constructs AdminConfirmSignUpRequest's fields from required parameters

#### `AdminConfirmSignUpResponse`

``` purescript
newtype AdminConfirmSignUpResponse
  = AdminConfirmSignUpResponse NoArguments
```

<p>Represents the response from the server for the request to confirm registration.</p>

##### Instances
``` purescript
Newtype AdminConfirmSignUpResponse _
Generic AdminConfirmSignUpResponse _
Show AdminConfirmSignUpResponse
Decode AdminConfirmSignUpResponse
Encode AdminConfirmSignUpResponse
```

#### `AdminCreateUserConfigType`

``` purescript
newtype AdminCreateUserConfigType
  = AdminCreateUserConfigType { "AllowAdminCreateUserOnly" :: NullOrUndefined (BooleanType), "UnusedAccountValidityDays" :: NullOrUndefined (AdminCreateUserUnusedAccountValidityDaysType), "InviteMessageTemplate" :: NullOrUndefined (MessageTemplateType) }
```

<p>The configuration for creating a new user profile.</p>

##### Instances
``` purescript
Newtype AdminCreateUserConfigType _
Generic AdminCreateUserConfigType _
Show AdminCreateUserConfigType
Decode AdminCreateUserConfigType
Encode AdminCreateUserConfigType
```

#### `newAdminCreateUserConfigType`

``` purescript
newAdminCreateUserConfigType :: AdminCreateUserConfigType
```

Constructs AdminCreateUserConfigType from required parameters

#### `newAdminCreateUserConfigType'`

``` purescript
newAdminCreateUserConfigType' :: ({ "AllowAdminCreateUserOnly" :: NullOrUndefined (BooleanType), "UnusedAccountValidityDays" :: NullOrUndefined (AdminCreateUserUnusedAccountValidityDaysType), "InviteMessageTemplate" :: NullOrUndefined (MessageTemplateType) } -> { "AllowAdminCreateUserOnly" :: NullOrUndefined (BooleanType), "UnusedAccountValidityDays" :: NullOrUndefined (AdminCreateUserUnusedAccountValidityDaysType), "InviteMessageTemplate" :: NullOrUndefined (MessageTemplateType) }) -> AdminCreateUserConfigType
```

Constructs AdminCreateUserConfigType's fields from required parameters

#### `AdminCreateUserRequest`

``` purescript
newtype AdminCreateUserRequest
  = AdminCreateUserRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "TemporaryPassword" :: NullOrUndefined (PasswordType), "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "MessageAction" :: NullOrUndefined (MessageActionType), "DesiredDeliveryMediums" :: NullOrUndefined (DeliveryMediumListType) }
```

<p>Represents the request to create a user in the specified user pool.</p>

##### Instances
``` purescript
Newtype AdminCreateUserRequest _
Generic AdminCreateUserRequest _
Show AdminCreateUserRequest
Decode AdminCreateUserRequest
Encode AdminCreateUserRequest
```

#### `newAdminCreateUserRequest`

``` purescript
newAdminCreateUserRequest :: UserPoolIdType -> UsernameType -> AdminCreateUserRequest
```

Constructs AdminCreateUserRequest from required parameters

#### `newAdminCreateUserRequest'`

``` purescript
newAdminCreateUserRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "TemporaryPassword" :: NullOrUndefined (PasswordType), "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "MessageAction" :: NullOrUndefined (MessageActionType), "DesiredDeliveryMediums" :: NullOrUndefined (DeliveryMediumListType) } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "TemporaryPassword" :: NullOrUndefined (PasswordType), "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "MessageAction" :: NullOrUndefined (MessageActionType), "DesiredDeliveryMediums" :: NullOrUndefined (DeliveryMediumListType) }) -> AdminCreateUserRequest
```

Constructs AdminCreateUserRequest's fields from required parameters

#### `AdminCreateUserResponse`

``` purescript
newtype AdminCreateUserResponse
  = AdminCreateUserResponse { "User" :: NullOrUndefined (UserType) }
```

<p>Represents the response from the server to the request to create the user.</p>

##### Instances
``` purescript
Newtype AdminCreateUserResponse _
Generic AdminCreateUserResponse _
Show AdminCreateUserResponse
Decode AdminCreateUserResponse
Encode AdminCreateUserResponse
```

#### `newAdminCreateUserResponse`

``` purescript
newAdminCreateUserResponse :: AdminCreateUserResponse
```

Constructs AdminCreateUserResponse from required parameters

#### `newAdminCreateUserResponse'`

``` purescript
newAdminCreateUserResponse' :: ({ "User" :: NullOrUndefined (UserType) } -> { "User" :: NullOrUndefined (UserType) }) -> AdminCreateUserResponse
```

Constructs AdminCreateUserResponse's fields from required parameters

#### `AdminCreateUserUnusedAccountValidityDaysType`

``` purescript
newtype AdminCreateUserUnusedAccountValidityDaysType
  = AdminCreateUserUnusedAccountValidityDaysType Int
```

##### Instances
``` purescript
Newtype AdminCreateUserUnusedAccountValidityDaysType _
Generic AdminCreateUserUnusedAccountValidityDaysType _
Show AdminCreateUserUnusedAccountValidityDaysType
Decode AdminCreateUserUnusedAccountValidityDaysType
Encode AdminCreateUserUnusedAccountValidityDaysType
```

#### `AdminDeleteUserAttributesRequest`

``` purescript
newtype AdminDeleteUserAttributesRequest
  = AdminDeleteUserAttributesRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributeNames" :: AttributeNameListType }
```

<p>Represents the request to delete user attributes as an administrator.</p>

##### Instances
``` purescript
Newtype AdminDeleteUserAttributesRequest _
Generic AdminDeleteUserAttributesRequest _
Show AdminDeleteUserAttributesRequest
Decode AdminDeleteUserAttributesRequest
Encode AdminDeleteUserAttributesRequest
```

#### `newAdminDeleteUserAttributesRequest`

``` purescript
newAdminDeleteUserAttributesRequest :: AttributeNameListType -> UserPoolIdType -> UsernameType -> AdminDeleteUserAttributesRequest
```

Constructs AdminDeleteUserAttributesRequest from required parameters

#### `newAdminDeleteUserAttributesRequest'`

``` purescript
newAdminDeleteUserAttributesRequest' :: AttributeNameListType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributeNames" :: AttributeNameListType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributeNames" :: AttributeNameListType }) -> AdminDeleteUserAttributesRequest
```

Constructs AdminDeleteUserAttributesRequest's fields from required parameters

#### `AdminDeleteUserAttributesResponse`

``` purescript
newtype AdminDeleteUserAttributesResponse
  = AdminDeleteUserAttributesResponse NoArguments
```

<p>Represents the response received from the server for a request to delete user attributes.</p>

##### Instances
``` purescript
Newtype AdminDeleteUserAttributesResponse _
Generic AdminDeleteUserAttributesResponse _
Show AdminDeleteUserAttributesResponse
Decode AdminDeleteUserAttributesResponse
Encode AdminDeleteUserAttributesResponse
```

#### `AdminDeleteUserRequest`

``` purescript
newtype AdminDeleteUserRequest
  = AdminDeleteUserRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to delete a user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminDeleteUserRequest _
Generic AdminDeleteUserRequest _
Show AdminDeleteUserRequest
Decode AdminDeleteUserRequest
Encode AdminDeleteUserRequest
```

#### `newAdminDeleteUserRequest`

``` purescript
newAdminDeleteUserRequest :: UserPoolIdType -> UsernameType -> AdminDeleteUserRequest
```

Constructs AdminDeleteUserRequest from required parameters

#### `newAdminDeleteUserRequest'`

``` purescript
newAdminDeleteUserRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminDeleteUserRequest
```

Constructs AdminDeleteUserRequest's fields from required parameters

#### `AdminDisableProviderForUserRequest`

``` purescript
newtype AdminDisableProviderForUserRequest
  = AdminDisableProviderForUserRequest { "UserPoolId" :: StringType, "User" :: ProviderUserIdentifierType }
```

##### Instances
``` purescript
Newtype AdminDisableProviderForUserRequest _
Generic AdminDisableProviderForUserRequest _
Show AdminDisableProviderForUserRequest
Decode AdminDisableProviderForUserRequest
Encode AdminDisableProviderForUserRequest
```

#### `newAdminDisableProviderForUserRequest`

``` purescript
newAdminDisableProviderForUserRequest :: ProviderUserIdentifierType -> StringType -> AdminDisableProviderForUserRequest
```

Constructs AdminDisableProviderForUserRequest from required parameters

#### `newAdminDisableProviderForUserRequest'`

``` purescript
newAdminDisableProviderForUserRequest' :: ProviderUserIdentifierType -> StringType -> ({ "UserPoolId" :: StringType, "User" :: ProviderUserIdentifierType } -> { "UserPoolId" :: StringType, "User" :: ProviderUserIdentifierType }) -> AdminDisableProviderForUserRequest
```

Constructs AdminDisableProviderForUserRequest's fields from required parameters

#### `AdminDisableProviderForUserResponse`

``` purescript
newtype AdminDisableProviderForUserResponse
  = AdminDisableProviderForUserResponse NoArguments
```

##### Instances
``` purescript
Newtype AdminDisableProviderForUserResponse _
Generic AdminDisableProviderForUserResponse _
Show AdminDisableProviderForUserResponse
Decode AdminDisableProviderForUserResponse
Encode AdminDisableProviderForUserResponse
```

#### `AdminDisableUserRequest`

``` purescript
newtype AdminDisableUserRequest
  = AdminDisableUserRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to disable any user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminDisableUserRequest _
Generic AdminDisableUserRequest _
Show AdminDisableUserRequest
Decode AdminDisableUserRequest
Encode AdminDisableUserRequest
```

#### `newAdminDisableUserRequest`

``` purescript
newAdminDisableUserRequest :: UserPoolIdType -> UsernameType -> AdminDisableUserRequest
```

Constructs AdminDisableUserRequest from required parameters

#### `newAdminDisableUserRequest'`

``` purescript
newAdminDisableUserRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminDisableUserRequest
```

Constructs AdminDisableUserRequest's fields from required parameters

#### `AdminDisableUserResponse`

``` purescript
newtype AdminDisableUserResponse
  = AdminDisableUserResponse NoArguments
```

<p>Represents the response received from the server to disable the user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminDisableUserResponse _
Generic AdminDisableUserResponse _
Show AdminDisableUserResponse
Decode AdminDisableUserResponse
Encode AdminDisableUserResponse
```

#### `AdminEnableUserRequest`

``` purescript
newtype AdminEnableUserRequest
  = AdminEnableUserRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request that enables the user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminEnableUserRequest _
Generic AdminEnableUserRequest _
Show AdminEnableUserRequest
Decode AdminEnableUserRequest
Encode AdminEnableUserRequest
```

#### `newAdminEnableUserRequest`

``` purescript
newAdminEnableUserRequest :: UserPoolIdType -> UsernameType -> AdminEnableUserRequest
```

Constructs AdminEnableUserRequest from required parameters

#### `newAdminEnableUserRequest'`

``` purescript
newAdminEnableUserRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminEnableUserRequest
```

Constructs AdminEnableUserRequest's fields from required parameters

#### `AdminEnableUserResponse`

``` purescript
newtype AdminEnableUserResponse
  = AdminEnableUserResponse NoArguments
```

<p>Represents the response from the server for the request to enable a user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminEnableUserResponse _
Generic AdminEnableUserResponse _
Show AdminEnableUserResponse
Decode AdminEnableUserResponse
Encode AdminEnableUserResponse
```

#### `AdminForgetDeviceRequest`

``` purescript
newtype AdminForgetDeviceRequest
  = AdminForgetDeviceRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType }
```

<p>Sends the forgot device request, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminForgetDeviceRequest _
Generic AdminForgetDeviceRequest _
Show AdminForgetDeviceRequest
Decode AdminForgetDeviceRequest
Encode AdminForgetDeviceRequest
```

#### `newAdminForgetDeviceRequest`

``` purescript
newAdminForgetDeviceRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminForgetDeviceRequest
```

Constructs AdminForgetDeviceRequest from required parameters

#### `newAdminForgetDeviceRequest'`

``` purescript
newAdminForgetDeviceRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType }) -> AdminForgetDeviceRequest
```

Constructs AdminForgetDeviceRequest's fields from required parameters

#### `AdminGetDeviceRequest`

``` purescript
newtype AdminGetDeviceRequest
  = AdminGetDeviceRequest { "DeviceKey" :: DeviceKeyType, "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to get the device, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminGetDeviceRequest _
Generic AdminGetDeviceRequest _
Show AdminGetDeviceRequest
Decode AdminGetDeviceRequest
Encode AdminGetDeviceRequest
```

#### `newAdminGetDeviceRequest`

``` purescript
newAdminGetDeviceRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminGetDeviceRequest
```

Constructs AdminGetDeviceRequest from required parameters

#### `newAdminGetDeviceRequest'`

``` purescript
newAdminGetDeviceRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ({ "DeviceKey" :: DeviceKeyType, "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "DeviceKey" :: DeviceKeyType, "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminGetDeviceRequest
```

Constructs AdminGetDeviceRequest's fields from required parameters

#### `AdminGetDeviceResponse`

``` purescript
newtype AdminGetDeviceResponse
  = AdminGetDeviceResponse { "Device" :: DeviceType }
```

<p>Gets the device response, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminGetDeviceResponse _
Generic AdminGetDeviceResponse _
Show AdminGetDeviceResponse
Decode AdminGetDeviceResponse
Encode AdminGetDeviceResponse
```

#### `newAdminGetDeviceResponse`

``` purescript
newAdminGetDeviceResponse :: DeviceType -> AdminGetDeviceResponse
```

Constructs AdminGetDeviceResponse from required parameters

#### `newAdminGetDeviceResponse'`

``` purescript
newAdminGetDeviceResponse' :: DeviceType -> ({ "Device" :: DeviceType } -> { "Device" :: DeviceType }) -> AdminGetDeviceResponse
```

Constructs AdminGetDeviceResponse's fields from required parameters

#### `AdminGetUserRequest`

``` purescript
newtype AdminGetUserRequest
  = AdminGetUserRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to get the specified user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminGetUserRequest _
Generic AdminGetUserRequest _
Show AdminGetUserRequest
Decode AdminGetUserRequest
Encode AdminGetUserRequest
```

#### `newAdminGetUserRequest`

``` purescript
newAdminGetUserRequest :: UserPoolIdType -> UsernameType -> AdminGetUserRequest
```

Constructs AdminGetUserRequest from required parameters

#### `newAdminGetUserRequest'`

``` purescript
newAdminGetUserRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminGetUserRequest
```

Constructs AdminGetUserRequest's fields from required parameters

#### `AdminGetUserResponse`

``` purescript
newtype AdminGetUserResponse
  = AdminGetUserResponse { "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) }
```

<p>Represents the response from the server from the request to get the specified user as an administrator.</p>

##### Instances
``` purescript
Newtype AdminGetUserResponse _
Generic AdminGetUserResponse _
Show AdminGetUserResponse
Decode AdminGetUserResponse
Encode AdminGetUserResponse
```

#### `newAdminGetUserResponse`

``` purescript
newAdminGetUserResponse :: UsernameType -> AdminGetUserResponse
```

Constructs AdminGetUserResponse from required parameters

#### `newAdminGetUserResponse'`

``` purescript
newAdminGetUserResponse' :: UsernameType -> ({ "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) } -> { "Username" :: UsernameType, "UserAttributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) }) -> AdminGetUserResponse
```

Constructs AdminGetUserResponse's fields from required parameters

#### `AdminInitiateAuthRequest`

``` purescript
newtype AdminInitiateAuthRequest
  = AdminInitiateAuthRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) }
```

<p>Initiates the authorization request, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminInitiateAuthRequest _
Generic AdminInitiateAuthRequest _
Show AdminInitiateAuthRequest
Decode AdminInitiateAuthRequest
Encode AdminInitiateAuthRequest
```

#### `newAdminInitiateAuthRequest`

``` purescript
newAdminInitiateAuthRequest :: AuthFlowType -> ClientIdType -> UserPoolIdType -> AdminInitiateAuthRequest
```

Constructs AdminInitiateAuthRequest from required parameters

#### `newAdminInitiateAuthRequest'`

``` purescript
newAdminInitiateAuthRequest' :: AuthFlowType -> ClientIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) }) -> AdminInitiateAuthRequest
```

Constructs AdminInitiateAuthRequest's fields from required parameters

#### `AdminInitiateAuthResponse`

``` purescript
newtype AdminInitiateAuthResponse
  = AdminInitiateAuthResponse { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }
```

<p>Initiates the authentication response, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminInitiateAuthResponse _
Generic AdminInitiateAuthResponse _
Show AdminInitiateAuthResponse
Decode AdminInitiateAuthResponse
Encode AdminInitiateAuthResponse
```

#### `newAdminInitiateAuthResponse`

``` purescript
newAdminInitiateAuthResponse :: AdminInitiateAuthResponse
```

Constructs AdminInitiateAuthResponse from required parameters

#### `newAdminInitiateAuthResponse'`

``` purescript
newAdminInitiateAuthResponse' :: ({ "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) } -> { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }) -> AdminInitiateAuthResponse
```

Constructs AdminInitiateAuthResponse's fields from required parameters

#### `AdminLinkProviderForUserRequest`

``` purescript
newtype AdminLinkProviderForUserRequest
  = AdminLinkProviderForUserRequest { "UserPoolId" :: StringType, "DestinationUser" :: ProviderUserIdentifierType, "SourceUser" :: ProviderUserIdentifierType }
```

##### Instances
``` purescript
Newtype AdminLinkProviderForUserRequest _
Generic AdminLinkProviderForUserRequest _
Show AdminLinkProviderForUserRequest
Decode AdminLinkProviderForUserRequest
Encode AdminLinkProviderForUserRequest
```

#### `newAdminLinkProviderForUserRequest`

``` purescript
newAdminLinkProviderForUserRequest :: ProviderUserIdentifierType -> ProviderUserIdentifierType -> StringType -> AdminLinkProviderForUserRequest
```

Constructs AdminLinkProviderForUserRequest from required parameters

#### `newAdminLinkProviderForUserRequest'`

``` purescript
newAdminLinkProviderForUserRequest' :: ProviderUserIdentifierType -> ProviderUserIdentifierType -> StringType -> ({ "UserPoolId" :: StringType, "DestinationUser" :: ProviderUserIdentifierType, "SourceUser" :: ProviderUserIdentifierType } -> { "UserPoolId" :: StringType, "DestinationUser" :: ProviderUserIdentifierType, "SourceUser" :: ProviderUserIdentifierType }) -> AdminLinkProviderForUserRequest
```

Constructs AdminLinkProviderForUserRequest's fields from required parameters

#### `AdminLinkProviderForUserResponse`

``` purescript
newtype AdminLinkProviderForUserResponse
  = AdminLinkProviderForUserResponse NoArguments
```

##### Instances
``` purescript
Newtype AdminLinkProviderForUserResponse _
Generic AdminLinkProviderForUserResponse _
Show AdminLinkProviderForUserResponse
Decode AdminLinkProviderForUserResponse
Encode AdminLinkProviderForUserResponse
```

#### `AdminListDevicesRequest`

``` purescript
newtype AdminListDevicesRequest
  = AdminListDevicesRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }
```

<p>Represents the request to list devices, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminListDevicesRequest _
Generic AdminListDevicesRequest _
Show AdminListDevicesRequest
Decode AdminListDevicesRequest
Encode AdminListDevicesRequest
```

#### `newAdminListDevicesRequest`

``` purescript
newAdminListDevicesRequest :: UserPoolIdType -> UsernameType -> AdminListDevicesRequest
```

Constructs AdminListDevicesRequest from required parameters

#### `newAdminListDevicesRequest'`

``` purescript
newAdminListDevicesRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }) -> AdminListDevicesRequest
```

Constructs AdminListDevicesRequest's fields from required parameters

#### `AdminListDevicesResponse`

``` purescript
newtype AdminListDevicesResponse
  = AdminListDevicesResponse { "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }
```

<p>Lists the device's response, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminListDevicesResponse _
Generic AdminListDevicesResponse _
Show AdminListDevicesResponse
Decode AdminListDevicesResponse
Encode AdminListDevicesResponse
```

#### `newAdminListDevicesResponse`

``` purescript
newAdminListDevicesResponse :: AdminListDevicesResponse
```

Constructs AdminListDevicesResponse from required parameters

#### `newAdminListDevicesResponse'`

``` purescript
newAdminListDevicesResponse' :: ({ "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) } -> { "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }) -> AdminListDevicesResponse
```

Constructs AdminListDevicesResponse's fields from required parameters

#### `AdminListGroupsForUserRequest`

``` purescript
newtype AdminListGroupsForUserRequest
  = AdminListGroupsForUserRequest { "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype AdminListGroupsForUserRequest _
Generic AdminListGroupsForUserRequest _
Show AdminListGroupsForUserRequest
Decode AdminListGroupsForUserRequest
Encode AdminListGroupsForUserRequest
```

#### `newAdminListGroupsForUserRequest`

``` purescript
newAdminListGroupsForUserRequest :: UserPoolIdType -> UsernameType -> AdminListGroupsForUserRequest
```

Constructs AdminListGroupsForUserRequest from required parameters

#### `newAdminListGroupsForUserRequest'`

``` purescript
newAdminListGroupsForUserRequest' :: UserPoolIdType -> UsernameType -> ({ "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> AdminListGroupsForUserRequest
```

Constructs AdminListGroupsForUserRequest's fields from required parameters

#### `AdminListGroupsForUserResponse`

``` purescript
newtype AdminListGroupsForUserResponse
  = AdminListGroupsForUserResponse { "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype AdminListGroupsForUserResponse _
Generic AdminListGroupsForUserResponse _
Show AdminListGroupsForUserResponse
Decode AdminListGroupsForUserResponse
Encode AdminListGroupsForUserResponse
```

#### `newAdminListGroupsForUserResponse`

``` purescript
newAdminListGroupsForUserResponse :: AdminListGroupsForUserResponse
```

Constructs AdminListGroupsForUserResponse from required parameters

#### `newAdminListGroupsForUserResponse'`

``` purescript
newAdminListGroupsForUserResponse' :: ({ "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> AdminListGroupsForUserResponse
```

Constructs AdminListGroupsForUserResponse's fields from required parameters

#### `AdminListUserAuthEventsRequest`

``` purescript
newtype AdminListUserAuthEventsRequest
  = AdminListUserAuthEventsRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MaxResults" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype AdminListUserAuthEventsRequest _
Generic AdminListUserAuthEventsRequest _
Show AdminListUserAuthEventsRequest
Decode AdminListUserAuthEventsRequest
Encode AdminListUserAuthEventsRequest
```

#### `newAdminListUserAuthEventsRequest`

``` purescript
newAdminListUserAuthEventsRequest :: UserPoolIdType -> UsernameType -> AdminListUserAuthEventsRequest
```

Constructs AdminListUserAuthEventsRequest from required parameters

#### `newAdminListUserAuthEventsRequest'`

``` purescript
newAdminListUserAuthEventsRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MaxResults" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MaxResults" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> AdminListUserAuthEventsRequest
```

Constructs AdminListUserAuthEventsRequest's fields from required parameters

#### `AdminListUserAuthEventsResponse`

``` purescript
newtype AdminListUserAuthEventsResponse
  = AdminListUserAuthEventsResponse { "AuthEvents" :: NullOrUndefined (AuthEventsType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype AdminListUserAuthEventsResponse _
Generic AdminListUserAuthEventsResponse _
Show AdminListUserAuthEventsResponse
Decode AdminListUserAuthEventsResponse
Encode AdminListUserAuthEventsResponse
```

#### `newAdminListUserAuthEventsResponse`

``` purescript
newAdminListUserAuthEventsResponse :: AdminListUserAuthEventsResponse
```

Constructs AdminListUserAuthEventsResponse from required parameters

#### `newAdminListUserAuthEventsResponse'`

``` purescript
newAdminListUserAuthEventsResponse' :: ({ "AuthEvents" :: NullOrUndefined (AuthEventsType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "AuthEvents" :: NullOrUndefined (AuthEventsType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> AdminListUserAuthEventsResponse
```

Constructs AdminListUserAuthEventsResponse's fields from required parameters

#### `AdminRemoveUserFromGroupRequest`

``` purescript
newtype AdminRemoveUserFromGroupRequest
  = AdminRemoveUserFromGroupRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType }
```

##### Instances
``` purescript
Newtype AdminRemoveUserFromGroupRequest _
Generic AdminRemoveUserFromGroupRequest _
Show AdminRemoveUserFromGroupRequest
Decode AdminRemoveUserFromGroupRequest
Encode AdminRemoveUserFromGroupRequest
```

#### `newAdminRemoveUserFromGroupRequest`

``` purescript
newAdminRemoveUserFromGroupRequest :: GroupNameType -> UserPoolIdType -> UsernameType -> AdminRemoveUserFromGroupRequest
```

Constructs AdminRemoveUserFromGroupRequest from required parameters

#### `newAdminRemoveUserFromGroupRequest'`

``` purescript
newAdminRemoveUserFromGroupRequest' :: GroupNameType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "GroupName" :: GroupNameType }) -> AdminRemoveUserFromGroupRequest
```

Constructs AdminRemoveUserFromGroupRequest's fields from required parameters

#### `AdminResetUserPasswordRequest`

``` purescript
newtype AdminResetUserPasswordRequest
  = AdminResetUserPasswordRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>Represents the request to reset a user's password as an administrator.</p>

##### Instances
``` purescript
Newtype AdminResetUserPasswordRequest _
Generic AdminResetUserPasswordRequest _
Show AdminResetUserPasswordRequest
Decode AdminResetUserPasswordRequest
Encode AdminResetUserPasswordRequest
```

#### `newAdminResetUserPasswordRequest`

``` purescript
newAdminResetUserPasswordRequest :: UserPoolIdType -> UsernameType -> AdminResetUserPasswordRequest
```

Constructs AdminResetUserPasswordRequest from required parameters

#### `newAdminResetUserPasswordRequest'`

``` purescript
newAdminResetUserPasswordRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminResetUserPasswordRequest
```

Constructs AdminResetUserPasswordRequest's fields from required parameters

#### `AdminResetUserPasswordResponse`

``` purescript
newtype AdminResetUserPasswordResponse
  = AdminResetUserPasswordResponse NoArguments
```

<p>Represents the response from the server to reset a user password as an administrator.</p>

##### Instances
``` purescript
Newtype AdminResetUserPasswordResponse _
Generic AdminResetUserPasswordResponse _
Show AdminResetUserPasswordResponse
Decode AdminResetUserPasswordResponse
Encode AdminResetUserPasswordResponse
```

#### `AdminRespondToAuthChallengeRequest`

``` purescript
newtype AdminRespondToAuthChallengeRequest
  = AdminRespondToAuthChallengeRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "Session" :: NullOrUndefined (SessionType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) }
```

<p>The request to respond to the authentication challenge, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminRespondToAuthChallengeRequest _
Generic AdminRespondToAuthChallengeRequest _
Show AdminRespondToAuthChallengeRequest
Decode AdminRespondToAuthChallengeRequest
Encode AdminRespondToAuthChallengeRequest
```

#### `newAdminRespondToAuthChallengeRequest`

``` purescript
newAdminRespondToAuthChallengeRequest :: ChallengeNameType -> ClientIdType -> UserPoolIdType -> AdminRespondToAuthChallengeRequest
```

Constructs AdminRespondToAuthChallengeRequest from required parameters

#### `newAdminRespondToAuthChallengeRequest'`

``` purescript
newAdminRespondToAuthChallengeRequest' :: ChallengeNameType -> ClientIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "Session" :: NullOrUndefined (SessionType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "Session" :: NullOrUndefined (SessionType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "ContextData" :: NullOrUndefined (ContextDataType) }) -> AdminRespondToAuthChallengeRequest
```

Constructs AdminRespondToAuthChallengeRequest's fields from required parameters

#### `AdminRespondToAuthChallengeResponse`

``` purescript
newtype AdminRespondToAuthChallengeResponse
  = AdminRespondToAuthChallengeResponse { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }
```

<p>Responds to the authentication challenge, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminRespondToAuthChallengeResponse _
Generic AdminRespondToAuthChallengeResponse _
Show AdminRespondToAuthChallengeResponse
Decode AdminRespondToAuthChallengeResponse
Encode AdminRespondToAuthChallengeResponse
```

#### `newAdminRespondToAuthChallengeResponse`

``` purescript
newAdminRespondToAuthChallengeResponse :: AdminRespondToAuthChallengeResponse
```

Constructs AdminRespondToAuthChallengeResponse from required parameters

#### `newAdminRespondToAuthChallengeResponse'`

``` purescript
newAdminRespondToAuthChallengeResponse' :: ({ "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) } -> { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }) -> AdminRespondToAuthChallengeResponse
```

Constructs AdminRespondToAuthChallengeResponse's fields from required parameters

#### `AdminSetUserMFAPreferenceRequest`

``` purescript
newtype AdminSetUserMFAPreferenceRequest
  = AdminSetUserMFAPreferenceRequest { "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype AdminSetUserMFAPreferenceRequest _
Generic AdminSetUserMFAPreferenceRequest _
Show AdminSetUserMFAPreferenceRequest
Decode AdminSetUserMFAPreferenceRequest
Encode AdminSetUserMFAPreferenceRequest
```

#### `newAdminSetUserMFAPreferenceRequest`

``` purescript
newAdminSetUserMFAPreferenceRequest :: UserPoolIdType -> UsernameType -> AdminSetUserMFAPreferenceRequest
```

Constructs AdminSetUserMFAPreferenceRequest from required parameters

#### `newAdminSetUserMFAPreferenceRequest'`

``` purescript
newAdminSetUserMFAPreferenceRequest' :: UserPoolIdType -> UsernameType -> ({ "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType } -> { "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "Username" :: UsernameType, "UserPoolId" :: UserPoolIdType }) -> AdminSetUserMFAPreferenceRequest
```

Constructs AdminSetUserMFAPreferenceRequest's fields from required parameters

#### `AdminSetUserMFAPreferenceResponse`

``` purescript
newtype AdminSetUserMFAPreferenceResponse
  = AdminSetUserMFAPreferenceResponse NoArguments
```

##### Instances
``` purescript
Newtype AdminSetUserMFAPreferenceResponse _
Generic AdminSetUserMFAPreferenceResponse _
Show AdminSetUserMFAPreferenceResponse
Decode AdminSetUserMFAPreferenceResponse
Encode AdminSetUserMFAPreferenceResponse
```

#### `AdminSetUserSettingsRequest`

``` purescript
newtype AdminSetUserSettingsRequest
  = AdminSetUserSettingsRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MFAOptions" :: MFAOptionListType }
```

<p>Represents the request to set user settings as an administrator.</p>

##### Instances
``` purescript
Newtype AdminSetUserSettingsRequest _
Generic AdminSetUserSettingsRequest _
Show AdminSetUserSettingsRequest
Decode AdminSetUserSettingsRequest
Encode AdminSetUserSettingsRequest
```

#### `newAdminSetUserSettingsRequest`

``` purescript
newAdminSetUserSettingsRequest :: MFAOptionListType -> UserPoolIdType -> UsernameType -> AdminSetUserSettingsRequest
```

Constructs AdminSetUserSettingsRequest from required parameters

#### `newAdminSetUserSettingsRequest'`

``` purescript
newAdminSetUserSettingsRequest' :: MFAOptionListType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MFAOptions" :: MFAOptionListType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "MFAOptions" :: MFAOptionListType }) -> AdminSetUserSettingsRequest
```

Constructs AdminSetUserSettingsRequest's fields from required parameters

#### `AdminSetUserSettingsResponse`

``` purescript
newtype AdminSetUserSettingsResponse
  = AdminSetUserSettingsResponse NoArguments
```

<p>Represents the response from the server to set user settings as an administrator.</p>

##### Instances
``` purescript
Newtype AdminSetUserSettingsResponse _
Generic AdminSetUserSettingsResponse _
Show AdminSetUserSettingsResponse
Decode AdminSetUserSettingsResponse
Encode AdminSetUserSettingsResponse
```

#### `AdminUpdateAuthEventFeedbackRequest`

``` purescript
newtype AdminUpdateAuthEventFeedbackRequest
  = AdminUpdateAuthEventFeedbackRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackValue" :: FeedbackValueType }
```

##### Instances
``` purescript
Newtype AdminUpdateAuthEventFeedbackRequest _
Generic AdminUpdateAuthEventFeedbackRequest _
Show AdminUpdateAuthEventFeedbackRequest
Decode AdminUpdateAuthEventFeedbackRequest
Encode AdminUpdateAuthEventFeedbackRequest
```

#### `newAdminUpdateAuthEventFeedbackRequest`

``` purescript
newAdminUpdateAuthEventFeedbackRequest :: EventIdType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> AdminUpdateAuthEventFeedbackRequest
```

Constructs AdminUpdateAuthEventFeedbackRequest from required parameters

#### `newAdminUpdateAuthEventFeedbackRequest'`

``` purescript
newAdminUpdateAuthEventFeedbackRequest' :: EventIdType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackValue" :: FeedbackValueType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackValue" :: FeedbackValueType }) -> AdminUpdateAuthEventFeedbackRequest
```

Constructs AdminUpdateAuthEventFeedbackRequest's fields from required parameters

#### `AdminUpdateAuthEventFeedbackResponse`

``` purescript
newtype AdminUpdateAuthEventFeedbackResponse
  = AdminUpdateAuthEventFeedbackResponse NoArguments
```

##### Instances
``` purescript
Newtype AdminUpdateAuthEventFeedbackResponse _
Generic AdminUpdateAuthEventFeedbackResponse _
Show AdminUpdateAuthEventFeedbackResponse
Decode AdminUpdateAuthEventFeedbackResponse
Encode AdminUpdateAuthEventFeedbackResponse
```

#### `AdminUpdateDeviceStatusRequest`

``` purescript
newtype AdminUpdateDeviceStatusRequest
  = AdminUpdateDeviceStatusRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) }
```

<p>The request to update the device status, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUpdateDeviceStatusRequest _
Generic AdminUpdateDeviceStatusRequest _
Show AdminUpdateDeviceStatusRequest
Decode AdminUpdateDeviceStatusRequest
Encode AdminUpdateDeviceStatusRequest
```

#### `newAdminUpdateDeviceStatusRequest`

``` purescript
newAdminUpdateDeviceStatusRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminUpdateDeviceStatusRequest
```

Constructs AdminUpdateDeviceStatusRequest from required parameters

#### `newAdminUpdateDeviceStatusRequest'`

``` purescript
newAdminUpdateDeviceStatusRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) }) -> AdminUpdateDeviceStatusRequest
```

Constructs AdminUpdateDeviceStatusRequest's fields from required parameters

#### `AdminUpdateDeviceStatusResponse`

``` purescript
newtype AdminUpdateDeviceStatusResponse
  = AdminUpdateDeviceStatusResponse NoArguments
```

<p>The status response from the request to update the device, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUpdateDeviceStatusResponse _
Generic AdminUpdateDeviceStatusResponse _
Show AdminUpdateDeviceStatusResponse
Decode AdminUpdateDeviceStatusResponse
Encode AdminUpdateDeviceStatusResponse
```

#### `AdminUpdateUserAttributesRequest`

``` purescript
newtype AdminUpdateUserAttributesRequest
  = AdminUpdateUserAttributesRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: AttributeListType }
```

<p>Represents the request to update the user's attributes as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUpdateUserAttributesRequest _
Generic AdminUpdateUserAttributesRequest _
Show AdminUpdateUserAttributesRequest
Decode AdminUpdateUserAttributesRequest
Encode AdminUpdateUserAttributesRequest
```

#### `newAdminUpdateUserAttributesRequest`

``` purescript
newAdminUpdateUserAttributesRequest :: AttributeListType -> UserPoolIdType -> UsernameType -> AdminUpdateUserAttributesRequest
```

Constructs AdminUpdateUserAttributesRequest from required parameters

#### `newAdminUpdateUserAttributesRequest'`

``` purescript
newAdminUpdateUserAttributesRequest' :: AttributeListType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: AttributeListType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "UserAttributes" :: AttributeListType }) -> AdminUpdateUserAttributesRequest
```

Constructs AdminUpdateUserAttributesRequest's fields from required parameters

#### `AdminUpdateUserAttributesResponse`

``` purescript
newtype AdminUpdateUserAttributesResponse
  = AdminUpdateUserAttributesResponse NoArguments
```

<p>Represents the response from the server for the request to update user attributes as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUpdateUserAttributesResponse _
Generic AdminUpdateUserAttributesResponse _
Show AdminUpdateUserAttributesResponse
Decode AdminUpdateUserAttributesResponse
Encode AdminUpdateUserAttributesResponse
```

#### `AdminUserGlobalSignOutRequest`

``` purescript
newtype AdminUserGlobalSignOutRequest
  = AdminUserGlobalSignOutRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }
```

<p>The request to sign out of all devices, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUserGlobalSignOutRequest _
Generic AdminUserGlobalSignOutRequest _
Show AdminUserGlobalSignOutRequest
Decode AdminUserGlobalSignOutRequest
Encode AdminUserGlobalSignOutRequest
```

#### `newAdminUserGlobalSignOutRequest`

``` purescript
newAdminUserGlobalSignOutRequest :: UserPoolIdType -> UsernameType -> AdminUserGlobalSignOutRequest
```

Constructs AdminUserGlobalSignOutRequest from required parameters

#### `newAdminUserGlobalSignOutRequest'`

``` purescript
newAdminUserGlobalSignOutRequest' :: UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType }) -> AdminUserGlobalSignOutRequest
```

Constructs AdminUserGlobalSignOutRequest's fields from required parameters

#### `AdminUserGlobalSignOutResponse`

``` purescript
newtype AdminUserGlobalSignOutResponse
  = AdminUserGlobalSignOutResponse NoArguments
```

<p>The global sign-out response, as an administrator.</p>

##### Instances
``` purescript
Newtype AdminUserGlobalSignOutResponse _
Generic AdminUserGlobalSignOutResponse _
Show AdminUserGlobalSignOutResponse
Decode AdminUserGlobalSignOutResponse
Encode AdminUserGlobalSignOutResponse
```

#### `AdvancedSecurityModeType`

``` purescript
newtype AdvancedSecurityModeType
  = AdvancedSecurityModeType String
```

##### Instances
``` purescript
Newtype AdvancedSecurityModeType _
Generic AdvancedSecurityModeType _
Show AdvancedSecurityModeType
Decode AdvancedSecurityModeType
Encode AdvancedSecurityModeType
```

#### `AliasAttributeType`

``` purescript
newtype AliasAttributeType
  = AliasAttributeType String
```

##### Instances
``` purescript
Newtype AliasAttributeType _
Generic AliasAttributeType _
Show AliasAttributeType
Decode AliasAttributeType
Encode AliasAttributeType
```

#### `AliasAttributesListType`

``` purescript
newtype AliasAttributesListType
  = AliasAttributesListType (Array AliasAttributeType)
```

##### Instances
``` purescript
Newtype AliasAttributesListType _
Generic AliasAttributesListType _
Show AliasAttributesListType
Decode AliasAttributesListType
Encode AliasAttributesListType
```

#### `AliasExistsException`

``` purescript
newtype AliasExistsException
  = AliasExistsException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>

##### Instances
``` purescript
Newtype AliasExistsException _
Generic AliasExistsException _
Show AliasExistsException
Decode AliasExistsException
Encode AliasExistsException
```

#### `newAliasExistsException`

``` purescript
newAliasExistsException :: AliasExistsException
```

Constructs AliasExistsException from required parameters

#### `newAliasExistsException'`

``` purescript
newAliasExistsException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> AliasExistsException
```

Constructs AliasExistsException's fields from required parameters

#### `AnalyticsConfigurationType`

``` purescript
newtype AnalyticsConfigurationType
  = AnalyticsConfigurationType { "ApplicationId" :: HexStringType, "RoleArn" :: ArnType, "ExternalId" :: StringType, "UserDataShared" :: NullOrUndefined (BooleanType) }
```

<p>The Amazon Pinpoint analytics configuration for collecting metrics for a user pool.</p>

##### Instances
``` purescript
Newtype AnalyticsConfigurationType _
Generic AnalyticsConfigurationType _
Show AnalyticsConfigurationType
Decode AnalyticsConfigurationType
Encode AnalyticsConfigurationType
```

#### `newAnalyticsConfigurationType`

``` purescript
newAnalyticsConfigurationType :: HexStringType -> StringType -> ArnType -> AnalyticsConfigurationType
```

Constructs AnalyticsConfigurationType from required parameters

#### `newAnalyticsConfigurationType'`

``` purescript
newAnalyticsConfigurationType' :: HexStringType -> StringType -> ArnType -> ({ "ApplicationId" :: HexStringType, "RoleArn" :: ArnType, "ExternalId" :: StringType, "UserDataShared" :: NullOrUndefined (BooleanType) } -> { "ApplicationId" :: HexStringType, "RoleArn" :: ArnType, "ExternalId" :: StringType, "UserDataShared" :: NullOrUndefined (BooleanType) }) -> AnalyticsConfigurationType
```

Constructs AnalyticsConfigurationType's fields from required parameters

#### `AnalyticsMetadataType`

``` purescript
newtype AnalyticsMetadataType
  = AnalyticsMetadataType { "AnalyticsEndpointId" :: NullOrUndefined (StringType) }
```

<p>An Amazon Pinpoint analytics endpoint.</p> <p>An endpoint uniquely identifies a mobile device, email address, or phone number that can receive messages from Amazon Pinpoint analytics.</p>

##### Instances
``` purescript
Newtype AnalyticsMetadataType _
Generic AnalyticsMetadataType _
Show AnalyticsMetadataType
Decode AnalyticsMetadataType
Encode AnalyticsMetadataType
```

#### `newAnalyticsMetadataType`

``` purescript
newAnalyticsMetadataType :: AnalyticsMetadataType
```

Constructs AnalyticsMetadataType from required parameters

#### `newAnalyticsMetadataType'`

``` purescript
newAnalyticsMetadataType' :: ({ "AnalyticsEndpointId" :: NullOrUndefined (StringType) } -> { "AnalyticsEndpointId" :: NullOrUndefined (StringType) }) -> AnalyticsMetadataType
```

Constructs AnalyticsMetadataType's fields from required parameters

#### `ArnType`

``` purescript
newtype ArnType
  = ArnType String
```

##### Instances
``` purescript
Newtype ArnType _
Generic ArnType _
Show ArnType
Decode ArnType
Encode ArnType
```

#### `AssociateSoftwareTokenRequest`

``` purescript
newtype AssociateSoftwareTokenRequest
  = AssociateSoftwareTokenRequest { "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType) }
```

##### Instances
``` purescript
Newtype AssociateSoftwareTokenRequest _
Generic AssociateSoftwareTokenRequest _
Show AssociateSoftwareTokenRequest
Decode AssociateSoftwareTokenRequest
Encode AssociateSoftwareTokenRequest
```

#### `newAssociateSoftwareTokenRequest`

``` purescript
newAssociateSoftwareTokenRequest :: AssociateSoftwareTokenRequest
```

Constructs AssociateSoftwareTokenRequest from required parameters

#### `newAssociateSoftwareTokenRequest'`

``` purescript
newAssociateSoftwareTokenRequest' :: ({ "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType) } -> { "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType) }) -> AssociateSoftwareTokenRequest
```

Constructs AssociateSoftwareTokenRequest's fields from required parameters

#### `AssociateSoftwareTokenResponse`

``` purescript
newtype AssociateSoftwareTokenResponse
  = AssociateSoftwareTokenResponse { "SecretCode" :: NullOrUndefined (SecretCodeType), "Session" :: NullOrUndefined (SessionType) }
```

##### Instances
``` purescript
Newtype AssociateSoftwareTokenResponse _
Generic AssociateSoftwareTokenResponse _
Show AssociateSoftwareTokenResponse
Decode AssociateSoftwareTokenResponse
Encode AssociateSoftwareTokenResponse
```

#### `newAssociateSoftwareTokenResponse`

``` purescript
newAssociateSoftwareTokenResponse :: AssociateSoftwareTokenResponse
```

Constructs AssociateSoftwareTokenResponse from required parameters

#### `newAssociateSoftwareTokenResponse'`

``` purescript
newAssociateSoftwareTokenResponse' :: ({ "SecretCode" :: NullOrUndefined (SecretCodeType), "Session" :: NullOrUndefined (SessionType) } -> { "SecretCode" :: NullOrUndefined (SecretCodeType), "Session" :: NullOrUndefined (SessionType) }) -> AssociateSoftwareTokenResponse
```

Constructs AssociateSoftwareTokenResponse's fields from required parameters

#### `AttributeDataType`

``` purescript
newtype AttributeDataType
  = AttributeDataType String
```

##### Instances
``` purescript
Newtype AttributeDataType _
Generic AttributeDataType _
Show AttributeDataType
Decode AttributeDataType
Encode AttributeDataType
```

#### `AttributeListType`

``` purescript
newtype AttributeListType
  = AttributeListType (Array AttributeType)
```

##### Instances
``` purescript
Newtype AttributeListType _
Generic AttributeListType _
Show AttributeListType
Decode AttributeListType
Encode AttributeListType
```

#### `AttributeMappingKeyType`

``` purescript
newtype AttributeMappingKeyType
  = AttributeMappingKeyType String
```

##### Instances
``` purescript
Newtype AttributeMappingKeyType _
Generic AttributeMappingKeyType _
Show AttributeMappingKeyType
Decode AttributeMappingKeyType
Encode AttributeMappingKeyType
```

#### `AttributeMappingType`

``` purescript
newtype AttributeMappingType
  = AttributeMappingType (StrMap StringType)
```

##### Instances
``` purescript
Newtype AttributeMappingType _
Generic AttributeMappingType _
Show AttributeMappingType
Decode AttributeMappingType
Encode AttributeMappingType
```

#### `AttributeNameListType`

``` purescript
newtype AttributeNameListType
  = AttributeNameListType (Array AttributeNameType)
```

##### Instances
``` purescript
Newtype AttributeNameListType _
Generic AttributeNameListType _
Show AttributeNameListType
Decode AttributeNameListType
Encode AttributeNameListType
```

#### `AttributeNameType`

``` purescript
newtype AttributeNameType
  = AttributeNameType String
```

##### Instances
``` purescript
Newtype AttributeNameType _
Generic AttributeNameType _
Show AttributeNameType
Decode AttributeNameType
Encode AttributeNameType
```

#### `AttributeType`

``` purescript
newtype AttributeType
  = AttributeType { "Name" :: AttributeNameType, "Value" :: NullOrUndefined (AttributeValueType) }
```

<p>Specifies whether the attribute is standard or custom.</p>

##### Instances
``` purescript
Newtype AttributeType _
Generic AttributeType _
Show AttributeType
Decode AttributeType
Encode AttributeType
```

#### `newAttributeType`

``` purescript
newAttributeType :: AttributeNameType -> AttributeType
```

Constructs AttributeType from required parameters

#### `newAttributeType'`

``` purescript
newAttributeType' :: AttributeNameType -> ({ "Name" :: AttributeNameType, "Value" :: NullOrUndefined (AttributeValueType) } -> { "Name" :: AttributeNameType, "Value" :: NullOrUndefined (AttributeValueType) }) -> AttributeType
```

Constructs AttributeType's fields from required parameters

#### `AttributeValueType`

``` purescript
newtype AttributeValueType
  = AttributeValueType String
```

##### Instances
``` purescript
Newtype AttributeValueType _
Generic AttributeValueType _
Show AttributeValueType
Decode AttributeValueType
Encode AttributeValueType
```

#### `AuthEventType`

``` purescript
newtype AuthEventType
  = AuthEventType { "EventId" :: NullOrUndefined (StringType), "EventType" :: NullOrUndefined (EventType), "CreationDate" :: NullOrUndefined (DateType), "EventResponse" :: NullOrUndefined (EventResponseType), "EventRisk" :: NullOrUndefined (EventRiskType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponseListType), "EventContextData" :: NullOrUndefined (EventContextDataType), "EventFeedback" :: NullOrUndefined (EventFeedbackType) }
```

<p>The authentication event type.</p>

##### Instances
``` purescript
Newtype AuthEventType _
Generic AuthEventType _
Show AuthEventType
Decode AuthEventType
Encode AuthEventType
```

#### `newAuthEventType`

``` purescript
newAuthEventType :: AuthEventType
```

Constructs AuthEventType from required parameters

#### `newAuthEventType'`

``` purescript
newAuthEventType' :: ({ "EventId" :: NullOrUndefined (StringType), "EventType" :: NullOrUndefined (EventType), "CreationDate" :: NullOrUndefined (DateType), "EventResponse" :: NullOrUndefined (EventResponseType), "EventRisk" :: NullOrUndefined (EventRiskType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponseListType), "EventContextData" :: NullOrUndefined (EventContextDataType), "EventFeedback" :: NullOrUndefined (EventFeedbackType) } -> { "EventId" :: NullOrUndefined (StringType), "EventType" :: NullOrUndefined (EventType), "CreationDate" :: NullOrUndefined (DateType), "EventResponse" :: NullOrUndefined (EventResponseType), "EventRisk" :: NullOrUndefined (EventRiskType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponseListType), "EventContextData" :: NullOrUndefined (EventContextDataType), "EventFeedback" :: NullOrUndefined (EventFeedbackType) }) -> AuthEventType
```

Constructs AuthEventType's fields from required parameters

#### `AuthEventsType`

``` purescript
newtype AuthEventsType
  = AuthEventsType (Array AuthEventType)
```

##### Instances
``` purescript
Newtype AuthEventsType _
Generic AuthEventsType _
Show AuthEventsType
Decode AuthEventsType
Encode AuthEventsType
```

#### `AuthFlowType`

``` purescript
newtype AuthFlowType
  = AuthFlowType String
```

##### Instances
``` purescript
Newtype AuthFlowType _
Generic AuthFlowType _
Show AuthFlowType
Decode AuthFlowType
Encode AuthFlowType
```

#### `AuthParametersType`

``` purescript
newtype AuthParametersType
  = AuthParametersType (StrMap StringType)
```

##### Instances
``` purescript
Newtype AuthParametersType _
Generic AuthParametersType _
Show AuthParametersType
Decode AuthParametersType
Encode AuthParametersType
```

#### `AuthenticationResultType`

``` purescript
newtype AuthenticationResultType
  = AuthenticationResultType { "AccessToken" :: NullOrUndefined (TokenModelType), "ExpiresIn" :: NullOrUndefined (IntegerType), "TokenType" :: NullOrUndefined (StringType), "RefreshToken" :: NullOrUndefined (TokenModelType), "IdToken" :: NullOrUndefined (TokenModelType), "NewDeviceMetadata" :: NullOrUndefined (NewDeviceMetadataType) }
```

<p>The authentication result.</p>

##### Instances
``` purescript
Newtype AuthenticationResultType _
Generic AuthenticationResultType _
Show AuthenticationResultType
Decode AuthenticationResultType
Encode AuthenticationResultType
```

#### `newAuthenticationResultType`

``` purescript
newAuthenticationResultType :: AuthenticationResultType
```

Constructs AuthenticationResultType from required parameters

#### `newAuthenticationResultType'`

``` purescript
newAuthenticationResultType' :: ({ "AccessToken" :: NullOrUndefined (TokenModelType), "ExpiresIn" :: NullOrUndefined (IntegerType), "TokenType" :: NullOrUndefined (StringType), "RefreshToken" :: NullOrUndefined (TokenModelType), "IdToken" :: NullOrUndefined (TokenModelType), "NewDeviceMetadata" :: NullOrUndefined (NewDeviceMetadataType) } -> { "AccessToken" :: NullOrUndefined (TokenModelType), "ExpiresIn" :: NullOrUndefined (IntegerType), "TokenType" :: NullOrUndefined (StringType), "RefreshToken" :: NullOrUndefined (TokenModelType), "IdToken" :: NullOrUndefined (TokenModelType), "NewDeviceMetadata" :: NullOrUndefined (NewDeviceMetadataType) }) -> AuthenticationResultType
```

Constructs AuthenticationResultType's fields from required parameters

#### `BlockedIPRangeListType`

``` purescript
newtype BlockedIPRangeListType
  = BlockedIPRangeListType (Array StringType)
```

##### Instances
``` purescript
Newtype BlockedIPRangeListType _
Generic BlockedIPRangeListType _
Show BlockedIPRangeListType
Decode BlockedIPRangeListType
Encode BlockedIPRangeListType
```

#### `BooleanType`

``` purescript
newtype BooleanType
  = BooleanType Boolean
```

##### Instances
``` purescript
Newtype BooleanType _
Generic BooleanType _
Show BooleanType
Decode BooleanType
Encode BooleanType
```

#### `CSSType`

``` purescript
newtype CSSType
  = CSSType String
```

##### Instances
``` purescript
Newtype CSSType _
Generic CSSType _
Show CSSType
Decode CSSType
Encode CSSType
```

#### `CSSVersionType`

``` purescript
newtype CSSVersionType
  = CSSVersionType String
```

##### Instances
``` purescript
Newtype CSSVersionType _
Generic CSSVersionType _
Show CSSVersionType
Decode CSSVersionType
Encode CSSVersionType
```

#### `CallbackURLsListType`

``` purescript
newtype CallbackURLsListType
  = CallbackURLsListType (Array RedirectUrlType)
```

##### Instances
``` purescript
Newtype CallbackURLsListType _
Generic CallbackURLsListType _
Show CallbackURLsListType
Decode CallbackURLsListType
Encode CallbackURLsListType
```

#### `ChallengeName`

``` purescript
newtype ChallengeName
  = ChallengeName String
```

##### Instances
``` purescript
Newtype ChallengeName _
Generic ChallengeName _
Show ChallengeName
Decode ChallengeName
Encode ChallengeName
```

#### `ChallengeNameType`

``` purescript
newtype ChallengeNameType
  = ChallengeNameType String
```

##### Instances
``` purescript
Newtype ChallengeNameType _
Generic ChallengeNameType _
Show ChallengeNameType
Decode ChallengeNameType
Encode ChallengeNameType
```

#### `ChallengeParametersType`

``` purescript
newtype ChallengeParametersType
  = ChallengeParametersType (StrMap StringType)
```

##### Instances
``` purescript
Newtype ChallengeParametersType _
Generic ChallengeParametersType _
Show ChallengeParametersType
Decode ChallengeParametersType
Encode ChallengeParametersType
```

#### `ChallengeResponse`

``` purescript
newtype ChallengeResponse
  = ChallengeResponse String
```

##### Instances
``` purescript
Newtype ChallengeResponse _
Generic ChallengeResponse _
Show ChallengeResponse
Decode ChallengeResponse
Encode ChallengeResponse
```

#### `ChallengeResponseListType`

``` purescript
newtype ChallengeResponseListType
  = ChallengeResponseListType (Array ChallengeResponseType)
```

##### Instances
``` purescript
Newtype ChallengeResponseListType _
Generic ChallengeResponseListType _
Show ChallengeResponseListType
Decode ChallengeResponseListType
Encode ChallengeResponseListType
```

#### `ChallengeResponseType`

``` purescript
newtype ChallengeResponseType
  = ChallengeResponseType { "ChallengeName" :: NullOrUndefined (ChallengeName), "ChallengeResponse" :: NullOrUndefined (ChallengeResponse) }
```

<p>The challenge response type.</p>

##### Instances
``` purescript
Newtype ChallengeResponseType _
Generic ChallengeResponseType _
Show ChallengeResponseType
Decode ChallengeResponseType
Encode ChallengeResponseType
```

#### `newChallengeResponseType`

``` purescript
newChallengeResponseType :: ChallengeResponseType
```

Constructs ChallengeResponseType from required parameters

#### `newChallengeResponseType'`

``` purescript
newChallengeResponseType' :: ({ "ChallengeName" :: NullOrUndefined (ChallengeName), "ChallengeResponse" :: NullOrUndefined (ChallengeResponse) } -> { "ChallengeName" :: NullOrUndefined (ChallengeName), "ChallengeResponse" :: NullOrUndefined (ChallengeResponse) }) -> ChallengeResponseType
```

Constructs ChallengeResponseType's fields from required parameters

#### `ChallengeResponsesType`

``` purescript
newtype ChallengeResponsesType
  = ChallengeResponsesType (StrMap StringType)
```

##### Instances
``` purescript
Newtype ChallengeResponsesType _
Generic ChallengeResponsesType _
Show ChallengeResponsesType
Decode ChallengeResponsesType
Encode ChallengeResponsesType
```

#### `ChangePasswordRequest`

``` purescript
newtype ChangePasswordRequest
  = ChangePasswordRequest { "PreviousPassword" :: PasswordType, "ProposedPassword" :: PasswordType, "AccessToken" :: TokenModelType }
```

<p>Represents the request to change a user password.</p>

##### Instances
``` purescript
Newtype ChangePasswordRequest _
Generic ChangePasswordRequest _
Show ChangePasswordRequest
Decode ChangePasswordRequest
Encode ChangePasswordRequest
```

#### `newChangePasswordRequest`

``` purescript
newChangePasswordRequest :: TokenModelType -> PasswordType -> PasswordType -> ChangePasswordRequest
```

Constructs ChangePasswordRequest from required parameters

#### `newChangePasswordRequest'`

``` purescript
newChangePasswordRequest' :: TokenModelType -> PasswordType -> PasswordType -> ({ "PreviousPassword" :: PasswordType, "ProposedPassword" :: PasswordType, "AccessToken" :: TokenModelType } -> { "PreviousPassword" :: PasswordType, "ProposedPassword" :: PasswordType, "AccessToken" :: TokenModelType }) -> ChangePasswordRequest
```

Constructs ChangePasswordRequest's fields from required parameters

#### `ChangePasswordResponse`

``` purescript
newtype ChangePasswordResponse
  = ChangePasswordResponse NoArguments
```

<p>The response from the server to the change password request.</p>

##### Instances
``` purescript
Newtype ChangePasswordResponse _
Generic ChangePasswordResponse _
Show ChangePasswordResponse
Decode ChangePasswordResponse
Encode ChangePasswordResponse
```

#### `ClientIdType`

``` purescript
newtype ClientIdType
  = ClientIdType String
```

##### Instances
``` purescript
Newtype ClientIdType _
Generic ClientIdType _
Show ClientIdType
Decode ClientIdType
Encode ClientIdType
```

#### `ClientMetadataType`

``` purescript
newtype ClientMetadataType
  = ClientMetadataType (StrMap StringType)
```

##### Instances
``` purescript
Newtype ClientMetadataType _
Generic ClientMetadataType _
Show ClientMetadataType
Decode ClientMetadataType
Encode ClientMetadataType
```

#### `ClientNameType`

``` purescript
newtype ClientNameType
  = ClientNameType String
```

##### Instances
``` purescript
Newtype ClientNameType _
Generic ClientNameType _
Show ClientNameType
Decode ClientNameType
Encode ClientNameType
```

#### `ClientPermissionListType`

``` purescript
newtype ClientPermissionListType
  = ClientPermissionListType (Array ClientPermissionType)
```

##### Instances
``` purescript
Newtype ClientPermissionListType _
Generic ClientPermissionListType _
Show ClientPermissionListType
Decode ClientPermissionListType
Encode ClientPermissionListType
```

#### `ClientPermissionType`

``` purescript
newtype ClientPermissionType
  = ClientPermissionType String
```

##### Instances
``` purescript
Newtype ClientPermissionType _
Generic ClientPermissionType _
Show ClientPermissionType
Decode ClientPermissionType
Encode ClientPermissionType
```

#### `ClientSecretType`

``` purescript
newtype ClientSecretType
  = ClientSecretType String
```

##### Instances
``` purescript
Newtype ClientSecretType _
Generic ClientSecretType _
Show ClientSecretType
Decode ClientSecretType
Encode ClientSecretType
```

#### `CodeDeliveryDetailsListType`

``` purescript
newtype CodeDeliveryDetailsListType
  = CodeDeliveryDetailsListType (Array CodeDeliveryDetailsType)
```

##### Instances
``` purescript
Newtype CodeDeliveryDetailsListType _
Generic CodeDeliveryDetailsListType _
Show CodeDeliveryDetailsListType
Decode CodeDeliveryDetailsListType
Encode CodeDeliveryDetailsListType
```

#### `CodeDeliveryDetailsType`

``` purescript
newtype CodeDeliveryDetailsType
  = CodeDeliveryDetailsType { "Destination" :: NullOrUndefined (StringType), "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) }
```

<p>The code delivery details being returned from the server.</p>

##### Instances
``` purescript
Newtype CodeDeliveryDetailsType _
Generic CodeDeliveryDetailsType _
Show CodeDeliveryDetailsType
Decode CodeDeliveryDetailsType
Encode CodeDeliveryDetailsType
```

#### `newCodeDeliveryDetailsType`

``` purescript
newCodeDeliveryDetailsType :: CodeDeliveryDetailsType
```

Constructs CodeDeliveryDetailsType from required parameters

#### `newCodeDeliveryDetailsType'`

``` purescript
newCodeDeliveryDetailsType' :: ({ "Destination" :: NullOrUndefined (StringType), "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) } -> { "Destination" :: NullOrUndefined (StringType), "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) }) -> CodeDeliveryDetailsType
```

Constructs CodeDeliveryDetailsType's fields from required parameters

#### `CodeDeliveryFailureException`

``` purescript
newtype CodeDeliveryFailureException
  = CodeDeliveryFailureException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a verification code fails to deliver successfully.</p>

##### Instances
``` purescript
Newtype CodeDeliveryFailureException _
Generic CodeDeliveryFailureException _
Show CodeDeliveryFailureException
Decode CodeDeliveryFailureException
Encode CodeDeliveryFailureException
```

#### `newCodeDeliveryFailureException`

``` purescript
newCodeDeliveryFailureException :: CodeDeliveryFailureException
```

Constructs CodeDeliveryFailureException from required parameters

#### `newCodeDeliveryFailureException'`

``` purescript
newCodeDeliveryFailureException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> CodeDeliveryFailureException
```

Constructs CodeDeliveryFailureException's fields from required parameters

#### `CodeMismatchException`

``` purescript
newtype CodeMismatchException
  = CodeMismatchException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown if the provided code does not match what the server was expecting.</p>

##### Instances
``` purescript
Newtype CodeMismatchException _
Generic CodeMismatchException _
Show CodeMismatchException
Decode CodeMismatchException
Encode CodeMismatchException
```

#### `newCodeMismatchException`

``` purescript
newCodeMismatchException :: CodeMismatchException
```

Constructs CodeMismatchException from required parameters

#### `newCodeMismatchException'`

``` purescript
newCodeMismatchException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> CodeMismatchException
```

Constructs CodeMismatchException's fields from required parameters

#### `CompletionMessageType`

``` purescript
newtype CompletionMessageType
  = CompletionMessageType String
```

##### Instances
``` purescript
Newtype CompletionMessageType _
Generic CompletionMessageType _
Show CompletionMessageType
Decode CompletionMessageType
Encode CompletionMessageType
```

#### `CompromisedCredentialsActionsType`

``` purescript
newtype CompromisedCredentialsActionsType
  = CompromisedCredentialsActionsType { "EventAction" :: CompromisedCredentialsEventActionType }
```

<p>The compromised credentials actions type</p>

##### Instances
``` purescript
Newtype CompromisedCredentialsActionsType _
Generic CompromisedCredentialsActionsType _
Show CompromisedCredentialsActionsType
Decode CompromisedCredentialsActionsType
Encode CompromisedCredentialsActionsType
```

#### `newCompromisedCredentialsActionsType`

``` purescript
newCompromisedCredentialsActionsType :: CompromisedCredentialsEventActionType -> CompromisedCredentialsActionsType
```

Constructs CompromisedCredentialsActionsType from required parameters

#### `newCompromisedCredentialsActionsType'`

``` purescript
newCompromisedCredentialsActionsType' :: CompromisedCredentialsEventActionType -> ({ "EventAction" :: CompromisedCredentialsEventActionType } -> { "EventAction" :: CompromisedCredentialsEventActionType }) -> CompromisedCredentialsActionsType
```

Constructs CompromisedCredentialsActionsType's fields from required parameters

#### `CompromisedCredentialsEventActionType`

``` purescript
newtype CompromisedCredentialsEventActionType
  = CompromisedCredentialsEventActionType String
```

##### Instances
``` purescript
Newtype CompromisedCredentialsEventActionType _
Generic CompromisedCredentialsEventActionType _
Show CompromisedCredentialsEventActionType
Decode CompromisedCredentialsEventActionType
Encode CompromisedCredentialsEventActionType
```

#### `CompromisedCredentialsRiskConfigurationType`

``` purescript
newtype CompromisedCredentialsRiskConfigurationType
  = CompromisedCredentialsRiskConfigurationType { "EventFilter" :: NullOrUndefined (EventFiltersType), "Actions" :: CompromisedCredentialsActionsType }
```

<p>The compromised credentials risk configuration type.</p>

##### Instances
``` purescript
Newtype CompromisedCredentialsRiskConfigurationType _
Generic CompromisedCredentialsRiskConfigurationType _
Show CompromisedCredentialsRiskConfigurationType
Decode CompromisedCredentialsRiskConfigurationType
Encode CompromisedCredentialsRiskConfigurationType
```

#### `newCompromisedCredentialsRiskConfigurationType`

``` purescript
newCompromisedCredentialsRiskConfigurationType :: CompromisedCredentialsActionsType -> CompromisedCredentialsRiskConfigurationType
```

Constructs CompromisedCredentialsRiskConfigurationType from required parameters

#### `newCompromisedCredentialsRiskConfigurationType'`

``` purescript
newCompromisedCredentialsRiskConfigurationType' :: CompromisedCredentialsActionsType -> ({ "EventFilter" :: NullOrUndefined (EventFiltersType), "Actions" :: CompromisedCredentialsActionsType } -> { "EventFilter" :: NullOrUndefined (EventFiltersType), "Actions" :: CompromisedCredentialsActionsType }) -> CompromisedCredentialsRiskConfigurationType
```

Constructs CompromisedCredentialsRiskConfigurationType's fields from required parameters

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown if two or more modifications are happening concurrently.</p>

##### Instances
``` purescript
Newtype ConcurrentModificationException _
Generic ConcurrentModificationException _
Show ConcurrentModificationException
Decode ConcurrentModificationException
Encode ConcurrentModificationException
```

#### `newConcurrentModificationException`

``` purescript
newConcurrentModificationException :: ConcurrentModificationException
```

Constructs ConcurrentModificationException from required parameters

#### `newConcurrentModificationException'`

``` purescript
newConcurrentModificationException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `ConfirmDeviceRequest`

``` purescript
newtype ConfirmDeviceRequest
  = ConfirmDeviceRequest { "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceSecretVerifierConfig" :: NullOrUndefined (DeviceSecretVerifierConfigType), "DeviceName" :: NullOrUndefined (DeviceNameType) }
```

<p>Confirms the device request.</p>

##### Instances
``` purescript
Newtype ConfirmDeviceRequest _
Generic ConfirmDeviceRequest _
Show ConfirmDeviceRequest
Decode ConfirmDeviceRequest
Encode ConfirmDeviceRequest
```

#### `newConfirmDeviceRequest`

``` purescript
newConfirmDeviceRequest :: TokenModelType -> DeviceKeyType -> ConfirmDeviceRequest
```

Constructs ConfirmDeviceRequest from required parameters

#### `newConfirmDeviceRequest'`

``` purescript
newConfirmDeviceRequest' :: TokenModelType -> DeviceKeyType -> ({ "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceSecretVerifierConfig" :: NullOrUndefined (DeviceSecretVerifierConfigType), "DeviceName" :: NullOrUndefined (DeviceNameType) } -> { "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceSecretVerifierConfig" :: NullOrUndefined (DeviceSecretVerifierConfigType), "DeviceName" :: NullOrUndefined (DeviceNameType) }) -> ConfirmDeviceRequest
```

Constructs ConfirmDeviceRequest's fields from required parameters

#### `ConfirmDeviceResponse`

``` purescript
newtype ConfirmDeviceResponse
  = ConfirmDeviceResponse { "UserConfirmationNecessary" :: NullOrUndefined (BooleanType) }
```

<p>Confirms the device response.</p>

##### Instances
``` purescript
Newtype ConfirmDeviceResponse _
Generic ConfirmDeviceResponse _
Show ConfirmDeviceResponse
Decode ConfirmDeviceResponse
Encode ConfirmDeviceResponse
```

#### `newConfirmDeviceResponse`

``` purescript
newConfirmDeviceResponse :: ConfirmDeviceResponse
```

Constructs ConfirmDeviceResponse from required parameters

#### `newConfirmDeviceResponse'`

``` purescript
newConfirmDeviceResponse' :: ({ "UserConfirmationNecessary" :: NullOrUndefined (BooleanType) } -> { "UserConfirmationNecessary" :: NullOrUndefined (BooleanType) }) -> ConfirmDeviceResponse
```

Constructs ConfirmDeviceResponse's fields from required parameters

#### `ConfirmForgotPasswordRequest`

``` purescript
newtype ConfirmForgotPasswordRequest
  = ConfirmForgotPasswordRequest { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "Password" :: PasswordType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }
```

<p>The request representing the confirmation for a password reset.</p>

##### Instances
``` purescript
Newtype ConfirmForgotPasswordRequest _
Generic ConfirmForgotPasswordRequest _
Show ConfirmForgotPasswordRequest
Decode ConfirmForgotPasswordRequest
Encode ConfirmForgotPasswordRequest
```

#### `newConfirmForgotPasswordRequest`

``` purescript
newConfirmForgotPasswordRequest :: ClientIdType -> ConfirmationCodeType -> PasswordType -> UsernameType -> ConfirmForgotPasswordRequest
```

Constructs ConfirmForgotPasswordRequest from required parameters

#### `newConfirmForgotPasswordRequest'`

``` purescript
newConfirmForgotPasswordRequest' :: ClientIdType -> ConfirmationCodeType -> PasswordType -> UsernameType -> ({ "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "Password" :: PasswordType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) } -> { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "Password" :: PasswordType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }) -> ConfirmForgotPasswordRequest
```

Constructs ConfirmForgotPasswordRequest's fields from required parameters

#### `ConfirmForgotPasswordResponse`

``` purescript
newtype ConfirmForgotPasswordResponse
  = ConfirmForgotPasswordResponse NoArguments
```

<p>The response from the server that results from a user's request to retrieve a forgotten password.</p>

##### Instances
``` purescript
Newtype ConfirmForgotPasswordResponse _
Generic ConfirmForgotPasswordResponse _
Show ConfirmForgotPasswordResponse
Decode ConfirmForgotPasswordResponse
Encode ConfirmForgotPasswordResponse
```

#### `ConfirmSignUpRequest`

``` purescript
newtype ConfirmSignUpRequest
  = ConfirmSignUpRequest { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }
```

<p>Represents the request to confirm registration of a user.</p>

##### Instances
``` purescript
Newtype ConfirmSignUpRequest _
Generic ConfirmSignUpRequest _
Show ConfirmSignUpRequest
Decode ConfirmSignUpRequest
Encode ConfirmSignUpRequest
```

#### `newConfirmSignUpRequest`

``` purescript
newConfirmSignUpRequest :: ClientIdType -> ConfirmationCodeType -> UsernameType -> ConfirmSignUpRequest
```

Constructs ConfirmSignUpRequest from required parameters

#### `newConfirmSignUpRequest'`

``` purescript
newConfirmSignUpRequest' :: ClientIdType -> ConfirmationCodeType -> UsernameType -> ({ "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) } -> { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "ConfirmationCode" :: ConfirmationCodeType, "ForceAliasCreation" :: NullOrUndefined (ForceAliasCreation), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }) -> ConfirmSignUpRequest
```

Constructs ConfirmSignUpRequest's fields from required parameters

#### `ConfirmSignUpResponse`

``` purescript
newtype ConfirmSignUpResponse
  = ConfirmSignUpResponse NoArguments
```

<p>Represents the response from the server for the registration confirmation.</p>

##### Instances
``` purescript
Newtype ConfirmSignUpResponse _
Generic ConfirmSignUpResponse _
Show ConfirmSignUpResponse
Decode ConfirmSignUpResponse
Encode ConfirmSignUpResponse
```

#### `ConfirmationCodeType`

``` purescript
newtype ConfirmationCodeType
  = ConfirmationCodeType String
```

##### Instances
``` purescript
Newtype ConfirmationCodeType _
Generic ConfirmationCodeType _
Show ConfirmationCodeType
Decode ConfirmationCodeType
Encode ConfirmationCodeType
```

#### `ContextDataType`

``` purescript
newtype ContextDataType
  = ContextDataType { "IpAddress" :: StringType, "ServerName" :: StringType, "ServerPath" :: StringType, "HttpHeaders" :: HttpHeaderList, "EncodedData" :: NullOrUndefined (StringType) }
```

<p>Contextual user data type used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>

##### Instances
``` purescript
Newtype ContextDataType _
Generic ContextDataType _
Show ContextDataType
Decode ContextDataType
Encode ContextDataType
```

#### `newContextDataType`

``` purescript
newContextDataType :: HttpHeaderList -> StringType -> StringType -> StringType -> ContextDataType
```

Constructs ContextDataType from required parameters

#### `newContextDataType'`

``` purescript
newContextDataType' :: HttpHeaderList -> StringType -> StringType -> StringType -> ({ "IpAddress" :: StringType, "ServerName" :: StringType, "ServerPath" :: StringType, "HttpHeaders" :: HttpHeaderList, "EncodedData" :: NullOrUndefined (StringType) } -> { "IpAddress" :: StringType, "ServerName" :: StringType, "ServerPath" :: StringType, "HttpHeaders" :: HttpHeaderList, "EncodedData" :: NullOrUndefined (StringType) }) -> ContextDataType
```

Constructs ContextDataType's fields from required parameters

#### `CreateGroupRequest`

``` purescript
newtype CreateGroupRequest
  = CreateGroupRequest { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) }
```

##### Instances
``` purescript
Newtype CreateGroupRequest _
Generic CreateGroupRequest _
Show CreateGroupRequest
Decode CreateGroupRequest
Encode CreateGroupRequest
```

#### `newCreateGroupRequest`

``` purescript
newCreateGroupRequest :: GroupNameType -> UserPoolIdType -> CreateGroupRequest
```

Constructs CreateGroupRequest from required parameters

#### `newCreateGroupRequest'`

``` purescript
newCreateGroupRequest' :: GroupNameType -> UserPoolIdType -> ({ "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) } -> { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) }) -> CreateGroupRequest
```

Constructs CreateGroupRequest's fields from required parameters

#### `CreateGroupResponse`

``` purescript
newtype CreateGroupResponse
  = CreateGroupResponse { "Group" :: NullOrUndefined (GroupType) }
```

##### Instances
``` purescript
Newtype CreateGroupResponse _
Generic CreateGroupResponse _
Show CreateGroupResponse
Decode CreateGroupResponse
Encode CreateGroupResponse
```

#### `newCreateGroupResponse`

``` purescript
newCreateGroupResponse :: CreateGroupResponse
```

Constructs CreateGroupResponse from required parameters

#### `newCreateGroupResponse'`

``` purescript
newCreateGroupResponse' :: ({ "Group" :: NullOrUndefined (GroupType) } -> { "Group" :: NullOrUndefined (GroupType) }) -> CreateGroupResponse
```

Constructs CreateGroupResponse's fields from required parameters

#### `CreateIdentityProviderRequest`

``` purescript
newtype CreateIdentityProviderRequest
  = CreateIdentityProviderRequest { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameTypeV1, "ProviderType" :: IdentityProviderTypeType, "ProviderDetails" :: ProviderDetailsType, "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) }
```

##### Instances
``` purescript
Newtype CreateIdentityProviderRequest _
Generic CreateIdentityProviderRequest _
Show CreateIdentityProviderRequest
Decode CreateIdentityProviderRequest
Encode CreateIdentityProviderRequest
```

#### `newCreateIdentityProviderRequest`

``` purescript
newCreateIdentityProviderRequest :: ProviderDetailsType -> ProviderNameTypeV1 -> IdentityProviderTypeType -> UserPoolIdType -> CreateIdentityProviderRequest
```

Constructs CreateIdentityProviderRequest from required parameters

#### `newCreateIdentityProviderRequest'`

``` purescript
newCreateIdentityProviderRequest' :: ProviderDetailsType -> ProviderNameTypeV1 -> IdentityProviderTypeType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameTypeV1, "ProviderType" :: IdentityProviderTypeType, "ProviderDetails" :: ProviderDetailsType, "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) } -> { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameTypeV1, "ProviderType" :: IdentityProviderTypeType, "ProviderDetails" :: ProviderDetailsType, "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) }) -> CreateIdentityProviderRequest
```

Constructs CreateIdentityProviderRequest's fields from required parameters

#### `CreateIdentityProviderResponse`

``` purescript
newtype CreateIdentityProviderResponse
  = CreateIdentityProviderResponse { "IdentityProvider" :: IdentityProviderType }
```

##### Instances
``` purescript
Newtype CreateIdentityProviderResponse _
Generic CreateIdentityProviderResponse _
Show CreateIdentityProviderResponse
Decode CreateIdentityProviderResponse
Encode CreateIdentityProviderResponse
```

#### `newCreateIdentityProviderResponse`

``` purescript
newCreateIdentityProviderResponse :: IdentityProviderType -> CreateIdentityProviderResponse
```

Constructs CreateIdentityProviderResponse from required parameters

#### `newCreateIdentityProviderResponse'`

``` purescript
newCreateIdentityProviderResponse' :: IdentityProviderType -> ({ "IdentityProvider" :: IdentityProviderType } -> { "IdentityProvider" :: IdentityProviderType }) -> CreateIdentityProviderResponse
```

Constructs CreateIdentityProviderResponse's fields from required parameters

#### `CreateResourceServerRequest`

``` purescript
newtype CreateResourceServerRequest
  = CreateResourceServerRequest { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }
```

##### Instances
``` purescript
Newtype CreateResourceServerRequest _
Generic CreateResourceServerRequest _
Show CreateResourceServerRequest
Decode CreateResourceServerRequest
Encode CreateResourceServerRequest
```

#### `newCreateResourceServerRequest`

``` purescript
newCreateResourceServerRequest :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> CreateResourceServerRequest
```

Constructs CreateResourceServerRequest from required parameters

#### `newCreateResourceServerRequest'`

``` purescript
newCreateResourceServerRequest' :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) } -> { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }) -> CreateResourceServerRequest
```

Constructs CreateResourceServerRequest's fields from required parameters

#### `CreateResourceServerResponse`

``` purescript
newtype CreateResourceServerResponse
  = CreateResourceServerResponse { "ResourceServer" :: ResourceServerType }
```

##### Instances
``` purescript
Newtype CreateResourceServerResponse _
Generic CreateResourceServerResponse _
Show CreateResourceServerResponse
Decode CreateResourceServerResponse
Encode CreateResourceServerResponse
```

#### `newCreateResourceServerResponse`

``` purescript
newCreateResourceServerResponse :: ResourceServerType -> CreateResourceServerResponse
```

Constructs CreateResourceServerResponse from required parameters

#### `newCreateResourceServerResponse'`

``` purescript
newCreateResourceServerResponse' :: ResourceServerType -> ({ "ResourceServer" :: ResourceServerType } -> { "ResourceServer" :: ResourceServerType }) -> CreateResourceServerResponse
```

Constructs CreateResourceServerResponse's fields from required parameters

#### `CreateUserImportJobRequest`

``` purescript
newtype CreateUserImportJobRequest
  = CreateUserImportJobRequest { "JobName" :: UserImportJobNameType, "UserPoolId" :: UserPoolIdType, "CloudWatchLogsRoleArn" :: ArnType }
```

<p>Represents the request to create the user import job.</p>

##### Instances
``` purescript
Newtype CreateUserImportJobRequest _
Generic CreateUserImportJobRequest _
Show CreateUserImportJobRequest
Decode CreateUserImportJobRequest
Encode CreateUserImportJobRequest
```

#### `newCreateUserImportJobRequest`

``` purescript
newCreateUserImportJobRequest :: ArnType -> UserImportJobNameType -> UserPoolIdType -> CreateUserImportJobRequest
```

Constructs CreateUserImportJobRequest from required parameters

#### `newCreateUserImportJobRequest'`

``` purescript
newCreateUserImportJobRequest' :: ArnType -> UserImportJobNameType -> UserPoolIdType -> ({ "JobName" :: UserImportJobNameType, "UserPoolId" :: UserPoolIdType, "CloudWatchLogsRoleArn" :: ArnType } -> { "JobName" :: UserImportJobNameType, "UserPoolId" :: UserPoolIdType, "CloudWatchLogsRoleArn" :: ArnType }) -> CreateUserImportJobRequest
```

Constructs CreateUserImportJobRequest's fields from required parameters

#### `CreateUserImportJobResponse`

``` purescript
newtype CreateUserImportJobResponse
  = CreateUserImportJobResponse { "UserImportJob" :: NullOrUndefined (UserImportJobType) }
```

<p>Represents the response from the server to the request to create the user import job.</p>

##### Instances
``` purescript
Newtype CreateUserImportJobResponse _
Generic CreateUserImportJobResponse _
Show CreateUserImportJobResponse
Decode CreateUserImportJobResponse
Encode CreateUserImportJobResponse
```

#### `newCreateUserImportJobResponse`

``` purescript
newCreateUserImportJobResponse :: CreateUserImportJobResponse
```

Constructs CreateUserImportJobResponse from required parameters

#### `newCreateUserImportJobResponse'`

``` purescript
newCreateUserImportJobResponse' :: ({ "UserImportJob" :: NullOrUndefined (UserImportJobType) } -> { "UserImportJob" :: NullOrUndefined (UserImportJobType) }) -> CreateUserImportJobResponse
```

Constructs CreateUserImportJobResponse's fields from required parameters

#### `CreateUserPoolClientRequest`

``` purescript
newtype CreateUserPoolClientRequest
  = CreateUserPoolClientRequest { "UserPoolId" :: UserPoolIdType, "ClientName" :: ClientNameType, "GenerateSecret" :: NullOrUndefined (GenerateSecret), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }
```

<p>Represents the request to create a user pool client.</p>

##### Instances
``` purescript
Newtype CreateUserPoolClientRequest _
Generic CreateUserPoolClientRequest _
Show CreateUserPoolClientRequest
Decode CreateUserPoolClientRequest
Encode CreateUserPoolClientRequest
```

#### `newCreateUserPoolClientRequest`

``` purescript
newCreateUserPoolClientRequest :: ClientNameType -> UserPoolIdType -> CreateUserPoolClientRequest
```

Constructs CreateUserPoolClientRequest from required parameters

#### `newCreateUserPoolClientRequest'`

``` purescript
newCreateUserPoolClientRequest' :: ClientNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientName" :: ClientNameType, "GenerateSecret" :: NullOrUndefined (GenerateSecret), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) } -> { "UserPoolId" :: UserPoolIdType, "ClientName" :: ClientNameType, "GenerateSecret" :: NullOrUndefined (GenerateSecret), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }) -> CreateUserPoolClientRequest
```

Constructs CreateUserPoolClientRequest's fields from required parameters

#### `CreateUserPoolClientResponse`

``` purescript
newtype CreateUserPoolClientResponse
  = CreateUserPoolClientResponse { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }
```

<p>Represents the response from the server to create a user pool client.</p>

##### Instances
``` purescript
Newtype CreateUserPoolClientResponse _
Generic CreateUserPoolClientResponse _
Show CreateUserPoolClientResponse
Decode CreateUserPoolClientResponse
Encode CreateUserPoolClientResponse
```

#### `newCreateUserPoolClientResponse`

``` purescript
newCreateUserPoolClientResponse :: CreateUserPoolClientResponse
```

Constructs CreateUserPoolClientResponse from required parameters

#### `newCreateUserPoolClientResponse'`

``` purescript
newCreateUserPoolClientResponse' :: ({ "UserPoolClient" :: NullOrUndefined (UserPoolClientType) } -> { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }) -> CreateUserPoolClientResponse
```

Constructs CreateUserPoolClientResponse's fields from required parameters

#### `CreateUserPoolDomainRequest`

``` purescript
newtype CreateUserPoolDomainRequest
  = CreateUserPoolDomainRequest { "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype CreateUserPoolDomainRequest _
Generic CreateUserPoolDomainRequest _
Show CreateUserPoolDomainRequest
Decode CreateUserPoolDomainRequest
Encode CreateUserPoolDomainRequest
```

#### `newCreateUserPoolDomainRequest`

``` purescript
newCreateUserPoolDomainRequest :: DomainType -> UserPoolIdType -> CreateUserPoolDomainRequest
```

Constructs CreateUserPoolDomainRequest from required parameters

#### `newCreateUserPoolDomainRequest'`

``` purescript
newCreateUserPoolDomainRequest' :: DomainType -> UserPoolIdType -> ({ "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType } -> { "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType }) -> CreateUserPoolDomainRequest
```

Constructs CreateUserPoolDomainRequest's fields from required parameters

#### `CreateUserPoolDomainResponse`

``` purescript
newtype CreateUserPoolDomainResponse
  = CreateUserPoolDomainResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateUserPoolDomainResponse _
Generic CreateUserPoolDomainResponse _
Show CreateUserPoolDomainResponse
Decode CreateUserPoolDomainResponse
Encode CreateUserPoolDomainResponse
```

#### `CreateUserPoolRequest`

``` purescript
newtype CreateUserPoolRequest
  = CreateUserPoolRequest { "PoolName" :: UserPoolNameType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "Schema" :: NullOrUndefined (SchemaAttributesListType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }
```

<p>Represents the request to create a user pool.</p>

##### Instances
``` purescript
Newtype CreateUserPoolRequest _
Generic CreateUserPoolRequest _
Show CreateUserPoolRequest
Decode CreateUserPoolRequest
Encode CreateUserPoolRequest
```

#### `newCreateUserPoolRequest`

``` purescript
newCreateUserPoolRequest :: UserPoolNameType -> CreateUserPoolRequest
```

Constructs CreateUserPoolRequest from required parameters

#### `newCreateUserPoolRequest'`

``` purescript
newCreateUserPoolRequest' :: UserPoolNameType -> ({ "PoolName" :: UserPoolNameType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "Schema" :: NullOrUndefined (SchemaAttributesListType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) } -> { "PoolName" :: UserPoolNameType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "Schema" :: NullOrUndefined (SchemaAttributesListType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }) -> CreateUserPoolRequest
```

Constructs CreateUserPoolRequest's fields from required parameters

#### `CreateUserPoolResponse`

``` purescript
newtype CreateUserPoolResponse
  = CreateUserPoolResponse { "UserPool" :: NullOrUndefined (UserPoolType) }
```

<p>Represents the response from the server for the request to create a user pool.</p>

##### Instances
``` purescript
Newtype CreateUserPoolResponse _
Generic CreateUserPoolResponse _
Show CreateUserPoolResponse
Decode CreateUserPoolResponse
Encode CreateUserPoolResponse
```

#### `newCreateUserPoolResponse`

``` purescript
newCreateUserPoolResponse :: CreateUserPoolResponse
```

Constructs CreateUserPoolResponse from required parameters

#### `newCreateUserPoolResponse'`

``` purescript
newCreateUserPoolResponse' :: ({ "UserPool" :: NullOrUndefined (UserPoolType) } -> { "UserPool" :: NullOrUndefined (UserPoolType) }) -> CreateUserPoolResponse
```

Constructs CreateUserPoolResponse's fields from required parameters

#### `CustomAttributeNameType`

``` purescript
newtype CustomAttributeNameType
  = CustomAttributeNameType String
```

##### Instances
``` purescript
Newtype CustomAttributeNameType _
Generic CustomAttributeNameType _
Show CustomAttributeNameType
Decode CustomAttributeNameType
Encode CustomAttributeNameType
```

#### `CustomAttributesListType`

``` purescript
newtype CustomAttributesListType
  = CustomAttributesListType (Array SchemaAttributeType)
```

##### Instances
``` purescript
Newtype CustomAttributesListType _
Generic CustomAttributesListType _
Show CustomAttributesListType
Decode CustomAttributesListType
Encode CustomAttributesListType
```

#### `DateType`

``` purescript
newtype DateType
  = DateType Timestamp
```

##### Instances
``` purescript
Newtype DateType _
Generic DateType _
Show DateType
Decode DateType
Encode DateType
```

#### `DefaultEmailOptionType`

``` purescript
newtype DefaultEmailOptionType
  = DefaultEmailOptionType String
```

##### Instances
``` purescript
Newtype DefaultEmailOptionType _
Generic DefaultEmailOptionType _
Show DefaultEmailOptionType
Decode DefaultEmailOptionType
Encode DefaultEmailOptionType
```

#### `DeleteGroupRequest`

``` purescript
newtype DeleteGroupRequest
  = DeleteGroupRequest { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype DeleteGroupRequest _
Generic DeleteGroupRequest _
Show DeleteGroupRequest
Decode DeleteGroupRequest
Encode DeleteGroupRequest
```

#### `newDeleteGroupRequest`

``` purescript
newDeleteGroupRequest :: GroupNameType -> UserPoolIdType -> DeleteGroupRequest
```

Constructs DeleteGroupRequest from required parameters

#### `newDeleteGroupRequest'`

``` purescript
newDeleteGroupRequest' :: GroupNameType -> UserPoolIdType -> ({ "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType } -> { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType }) -> DeleteGroupRequest
```

Constructs DeleteGroupRequest's fields from required parameters

#### `DeleteIdentityProviderRequest`

``` purescript
newtype DeleteIdentityProviderRequest
  = DeleteIdentityProviderRequest { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType }
```

##### Instances
``` purescript
Newtype DeleteIdentityProviderRequest _
Generic DeleteIdentityProviderRequest _
Show DeleteIdentityProviderRequest
Decode DeleteIdentityProviderRequest
Encode DeleteIdentityProviderRequest
```

#### `newDeleteIdentityProviderRequest`

``` purescript
newDeleteIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> DeleteIdentityProviderRequest
```

Constructs DeleteIdentityProviderRequest from required parameters

#### `newDeleteIdentityProviderRequest'`

``` purescript
newDeleteIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType } -> { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType }) -> DeleteIdentityProviderRequest
```

Constructs DeleteIdentityProviderRequest's fields from required parameters

#### `DeleteResourceServerRequest`

``` purescript
newtype DeleteResourceServerRequest
  = DeleteResourceServerRequest { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType }
```

##### Instances
``` purescript
Newtype DeleteResourceServerRequest _
Generic DeleteResourceServerRequest _
Show DeleteResourceServerRequest
Decode DeleteResourceServerRequest
Encode DeleteResourceServerRequest
```

#### `newDeleteResourceServerRequest`

``` purescript
newDeleteResourceServerRequest :: ResourceServerIdentifierType -> UserPoolIdType -> DeleteResourceServerRequest
```

Constructs DeleteResourceServerRequest from required parameters

#### `newDeleteResourceServerRequest'`

``` purescript
newDeleteResourceServerRequest' :: ResourceServerIdentifierType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType } -> { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType }) -> DeleteResourceServerRequest
```

Constructs DeleteResourceServerRequest's fields from required parameters

#### `DeleteUserAttributesRequest`

``` purescript
newtype DeleteUserAttributesRequest
  = DeleteUserAttributesRequest { "UserAttributeNames" :: AttributeNameListType, "AccessToken" :: TokenModelType }
```

<p>Represents the request to delete user attributes.</p>

##### Instances
``` purescript
Newtype DeleteUserAttributesRequest _
Generic DeleteUserAttributesRequest _
Show DeleteUserAttributesRequest
Decode DeleteUserAttributesRequest
Encode DeleteUserAttributesRequest
```

#### `newDeleteUserAttributesRequest`

``` purescript
newDeleteUserAttributesRequest :: TokenModelType -> AttributeNameListType -> DeleteUserAttributesRequest
```

Constructs DeleteUserAttributesRequest from required parameters

#### `newDeleteUserAttributesRequest'`

``` purescript
newDeleteUserAttributesRequest' :: TokenModelType -> AttributeNameListType -> ({ "UserAttributeNames" :: AttributeNameListType, "AccessToken" :: TokenModelType } -> { "UserAttributeNames" :: AttributeNameListType, "AccessToken" :: TokenModelType }) -> DeleteUserAttributesRequest
```

Constructs DeleteUserAttributesRequest's fields from required parameters

#### `DeleteUserAttributesResponse`

``` purescript
newtype DeleteUserAttributesResponse
  = DeleteUserAttributesResponse NoArguments
```

<p>Represents the response from the server to delete user attributes.</p>

##### Instances
``` purescript
Newtype DeleteUserAttributesResponse _
Generic DeleteUserAttributesResponse _
Show DeleteUserAttributesResponse
Decode DeleteUserAttributesResponse
Encode DeleteUserAttributesResponse
```

#### `DeleteUserPoolClientRequest`

``` purescript
newtype DeleteUserPoolClientRequest
  = DeleteUserPoolClientRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType }
```

<p>Represents the request to delete a user pool client.</p>

##### Instances
``` purescript
Newtype DeleteUserPoolClientRequest _
Generic DeleteUserPoolClientRequest _
Show DeleteUserPoolClientRequest
Decode DeleteUserPoolClientRequest
Encode DeleteUserPoolClientRequest
```

#### `newDeleteUserPoolClientRequest`

``` purescript
newDeleteUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> DeleteUserPoolClientRequest
```

Constructs DeleteUserPoolClientRequest from required parameters

#### `newDeleteUserPoolClientRequest'`

``` purescript
newDeleteUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType }) -> DeleteUserPoolClientRequest
```

Constructs DeleteUserPoolClientRequest's fields from required parameters

#### `DeleteUserPoolDomainRequest`

``` purescript
newtype DeleteUserPoolDomainRequest
  = DeleteUserPoolDomainRequest { "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype DeleteUserPoolDomainRequest _
Generic DeleteUserPoolDomainRequest _
Show DeleteUserPoolDomainRequest
Decode DeleteUserPoolDomainRequest
Encode DeleteUserPoolDomainRequest
```

#### `newDeleteUserPoolDomainRequest`

``` purescript
newDeleteUserPoolDomainRequest :: DomainType -> UserPoolIdType -> DeleteUserPoolDomainRequest
```

Constructs DeleteUserPoolDomainRequest from required parameters

#### `newDeleteUserPoolDomainRequest'`

``` purescript
newDeleteUserPoolDomainRequest' :: DomainType -> UserPoolIdType -> ({ "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType } -> { "Domain" :: DomainType, "UserPoolId" :: UserPoolIdType }) -> DeleteUserPoolDomainRequest
```

Constructs DeleteUserPoolDomainRequest's fields from required parameters

#### `DeleteUserPoolDomainResponse`

``` purescript
newtype DeleteUserPoolDomainResponse
  = DeleteUserPoolDomainResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteUserPoolDomainResponse _
Generic DeleteUserPoolDomainResponse _
Show DeleteUserPoolDomainResponse
Decode DeleteUserPoolDomainResponse
Encode DeleteUserPoolDomainResponse
```

#### `DeleteUserPoolRequest`

``` purescript
newtype DeleteUserPoolRequest
  = DeleteUserPoolRequest { "UserPoolId" :: UserPoolIdType }
```

<p>Represents the request to delete a user pool.</p>

##### Instances
``` purescript
Newtype DeleteUserPoolRequest _
Generic DeleteUserPoolRequest _
Show DeleteUserPoolRequest
Decode DeleteUserPoolRequest
Encode DeleteUserPoolRequest
```

#### `newDeleteUserPoolRequest`

``` purescript
newDeleteUserPoolRequest :: UserPoolIdType -> DeleteUserPoolRequest
```

Constructs DeleteUserPoolRequest from required parameters

#### `newDeleteUserPoolRequest'`

``` purescript
newDeleteUserPoolRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType } -> { "UserPoolId" :: UserPoolIdType }) -> DeleteUserPoolRequest
```

Constructs DeleteUserPoolRequest's fields from required parameters

#### `DeleteUserRequest`

``` purescript
newtype DeleteUserRequest
  = DeleteUserRequest { "AccessToken" :: TokenModelType }
```

<p>Represents the request to delete a user.</p>

##### Instances
``` purescript
Newtype DeleteUserRequest _
Generic DeleteUserRequest _
Show DeleteUserRequest
Decode DeleteUserRequest
Encode DeleteUserRequest
```

#### `newDeleteUserRequest`

``` purescript
newDeleteUserRequest :: TokenModelType -> DeleteUserRequest
```

Constructs DeleteUserRequest from required parameters

#### `newDeleteUserRequest'`

``` purescript
newDeleteUserRequest' :: TokenModelType -> ({ "AccessToken" :: TokenModelType } -> { "AccessToken" :: TokenModelType }) -> DeleteUserRequest
```

Constructs DeleteUserRequest's fields from required parameters

#### `DeliveryMediumListType`

``` purescript
newtype DeliveryMediumListType
  = DeliveryMediumListType (Array DeliveryMediumType)
```

##### Instances
``` purescript
Newtype DeliveryMediumListType _
Generic DeliveryMediumListType _
Show DeliveryMediumListType
Decode DeliveryMediumListType
Encode DeliveryMediumListType
```

#### `DeliveryMediumType`

``` purescript
newtype DeliveryMediumType
  = DeliveryMediumType String
```

##### Instances
``` purescript
Newtype DeliveryMediumType _
Generic DeliveryMediumType _
Show DeliveryMediumType
Decode DeliveryMediumType
Encode DeliveryMediumType
```

#### `DescribeIdentityProviderRequest`

``` purescript
newtype DescribeIdentityProviderRequest
  = DescribeIdentityProviderRequest { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType }
```

##### Instances
``` purescript
Newtype DescribeIdentityProviderRequest _
Generic DescribeIdentityProviderRequest _
Show DescribeIdentityProviderRequest
Decode DescribeIdentityProviderRequest
Encode DescribeIdentityProviderRequest
```

#### `newDescribeIdentityProviderRequest`

``` purescript
newDescribeIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> DescribeIdentityProviderRequest
```

Constructs DescribeIdentityProviderRequest from required parameters

#### `newDescribeIdentityProviderRequest'`

``` purescript
newDescribeIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType } -> { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType }) -> DescribeIdentityProviderRequest
```

Constructs DescribeIdentityProviderRequest's fields from required parameters

#### `DescribeIdentityProviderResponse`

``` purescript
newtype DescribeIdentityProviderResponse
  = DescribeIdentityProviderResponse { "IdentityProvider" :: IdentityProviderType }
```

##### Instances
``` purescript
Newtype DescribeIdentityProviderResponse _
Generic DescribeIdentityProviderResponse _
Show DescribeIdentityProviderResponse
Decode DescribeIdentityProviderResponse
Encode DescribeIdentityProviderResponse
```

#### `newDescribeIdentityProviderResponse`

``` purescript
newDescribeIdentityProviderResponse :: IdentityProviderType -> DescribeIdentityProviderResponse
```

Constructs DescribeIdentityProviderResponse from required parameters

#### `newDescribeIdentityProviderResponse'`

``` purescript
newDescribeIdentityProviderResponse' :: IdentityProviderType -> ({ "IdentityProvider" :: IdentityProviderType } -> { "IdentityProvider" :: IdentityProviderType }) -> DescribeIdentityProviderResponse
```

Constructs DescribeIdentityProviderResponse's fields from required parameters

#### `DescribeResourceServerRequest`

``` purescript
newtype DescribeResourceServerRequest
  = DescribeResourceServerRequest { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType }
```

##### Instances
``` purescript
Newtype DescribeResourceServerRequest _
Generic DescribeResourceServerRequest _
Show DescribeResourceServerRequest
Decode DescribeResourceServerRequest
Encode DescribeResourceServerRequest
```

#### `newDescribeResourceServerRequest`

``` purescript
newDescribeResourceServerRequest :: ResourceServerIdentifierType -> UserPoolIdType -> DescribeResourceServerRequest
```

Constructs DescribeResourceServerRequest from required parameters

#### `newDescribeResourceServerRequest'`

``` purescript
newDescribeResourceServerRequest' :: ResourceServerIdentifierType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType } -> { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType }) -> DescribeResourceServerRequest
```

Constructs DescribeResourceServerRequest's fields from required parameters

#### `DescribeResourceServerResponse`

``` purescript
newtype DescribeResourceServerResponse
  = DescribeResourceServerResponse { "ResourceServer" :: ResourceServerType }
```

##### Instances
``` purescript
Newtype DescribeResourceServerResponse _
Generic DescribeResourceServerResponse _
Show DescribeResourceServerResponse
Decode DescribeResourceServerResponse
Encode DescribeResourceServerResponse
```

#### `newDescribeResourceServerResponse`

``` purescript
newDescribeResourceServerResponse :: ResourceServerType -> DescribeResourceServerResponse
```

Constructs DescribeResourceServerResponse from required parameters

#### `newDescribeResourceServerResponse'`

``` purescript
newDescribeResourceServerResponse' :: ResourceServerType -> ({ "ResourceServer" :: ResourceServerType } -> { "ResourceServer" :: ResourceServerType }) -> DescribeResourceServerResponse
```

Constructs DescribeResourceServerResponse's fields from required parameters

#### `DescribeRiskConfigurationRequest`

``` purescript
newtype DescribeRiskConfigurationRequest
  = DescribeRiskConfigurationRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) }
```

##### Instances
``` purescript
Newtype DescribeRiskConfigurationRequest _
Generic DescribeRiskConfigurationRequest _
Show DescribeRiskConfigurationRequest
Decode DescribeRiskConfigurationRequest
Encode DescribeRiskConfigurationRequest
```

#### `newDescribeRiskConfigurationRequest`

``` purescript
newDescribeRiskConfigurationRequest :: UserPoolIdType -> DescribeRiskConfigurationRequest
```

Constructs DescribeRiskConfigurationRequest from required parameters

#### `newDescribeRiskConfigurationRequest'`

``` purescript
newDescribeRiskConfigurationRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) }) -> DescribeRiskConfigurationRequest
```

Constructs DescribeRiskConfigurationRequest's fields from required parameters

#### `DescribeRiskConfigurationResponse`

``` purescript
newtype DescribeRiskConfigurationResponse
  = DescribeRiskConfigurationResponse { "RiskConfiguration" :: RiskConfigurationType }
```

##### Instances
``` purescript
Newtype DescribeRiskConfigurationResponse _
Generic DescribeRiskConfigurationResponse _
Show DescribeRiskConfigurationResponse
Decode DescribeRiskConfigurationResponse
Encode DescribeRiskConfigurationResponse
```

#### `newDescribeRiskConfigurationResponse`

``` purescript
newDescribeRiskConfigurationResponse :: RiskConfigurationType -> DescribeRiskConfigurationResponse
```

Constructs DescribeRiskConfigurationResponse from required parameters

#### `newDescribeRiskConfigurationResponse'`

``` purescript
newDescribeRiskConfigurationResponse' :: RiskConfigurationType -> ({ "RiskConfiguration" :: RiskConfigurationType } -> { "RiskConfiguration" :: RiskConfigurationType }) -> DescribeRiskConfigurationResponse
```

Constructs DescribeRiskConfigurationResponse's fields from required parameters

#### `DescribeUserImportJobRequest`

``` purescript
newtype DescribeUserImportJobRequest
  = DescribeUserImportJobRequest { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }
```

<p>Represents the request to describe the user import job.</p>

##### Instances
``` purescript
Newtype DescribeUserImportJobRequest _
Generic DescribeUserImportJobRequest _
Show DescribeUserImportJobRequest
Decode DescribeUserImportJobRequest
Encode DescribeUserImportJobRequest
```

#### `newDescribeUserImportJobRequest`

``` purescript
newDescribeUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> DescribeUserImportJobRequest
```

Constructs DescribeUserImportJobRequest from required parameters

#### `newDescribeUserImportJobRequest'`

``` purescript
newDescribeUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType } -> { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }) -> DescribeUserImportJobRequest
```

Constructs DescribeUserImportJobRequest's fields from required parameters

#### `DescribeUserImportJobResponse`

``` purescript
newtype DescribeUserImportJobResponse
  = DescribeUserImportJobResponse { "UserImportJob" :: NullOrUndefined (UserImportJobType) }
```

<p>Represents the response from the server to the request to describe the user import job.</p>

##### Instances
``` purescript
Newtype DescribeUserImportJobResponse _
Generic DescribeUserImportJobResponse _
Show DescribeUserImportJobResponse
Decode DescribeUserImportJobResponse
Encode DescribeUserImportJobResponse
```

#### `newDescribeUserImportJobResponse`

``` purescript
newDescribeUserImportJobResponse :: DescribeUserImportJobResponse
```

Constructs DescribeUserImportJobResponse from required parameters

#### `newDescribeUserImportJobResponse'`

``` purescript
newDescribeUserImportJobResponse' :: ({ "UserImportJob" :: NullOrUndefined (UserImportJobType) } -> { "UserImportJob" :: NullOrUndefined (UserImportJobType) }) -> DescribeUserImportJobResponse
```

Constructs DescribeUserImportJobResponse's fields from required parameters

#### `DescribeUserPoolClientRequest`

``` purescript
newtype DescribeUserPoolClientRequest
  = DescribeUserPoolClientRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType }
```

<p>Represents the request to describe a user pool client.</p>

##### Instances
``` purescript
Newtype DescribeUserPoolClientRequest _
Generic DescribeUserPoolClientRequest _
Show DescribeUserPoolClientRequest
Decode DescribeUserPoolClientRequest
Encode DescribeUserPoolClientRequest
```

#### `newDescribeUserPoolClientRequest`

``` purescript
newDescribeUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> DescribeUserPoolClientRequest
```

Constructs DescribeUserPoolClientRequest from required parameters

#### `newDescribeUserPoolClientRequest'`

``` purescript
newDescribeUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType }) -> DescribeUserPoolClientRequest
```

Constructs DescribeUserPoolClientRequest's fields from required parameters

#### `DescribeUserPoolClientResponse`

``` purescript
newtype DescribeUserPoolClientResponse
  = DescribeUserPoolClientResponse { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }
```

<p>Represents the response from the server from a request to describe the user pool client.</p>

##### Instances
``` purescript
Newtype DescribeUserPoolClientResponse _
Generic DescribeUserPoolClientResponse _
Show DescribeUserPoolClientResponse
Decode DescribeUserPoolClientResponse
Encode DescribeUserPoolClientResponse
```

#### `newDescribeUserPoolClientResponse`

``` purescript
newDescribeUserPoolClientResponse :: DescribeUserPoolClientResponse
```

Constructs DescribeUserPoolClientResponse from required parameters

#### `newDescribeUserPoolClientResponse'`

``` purescript
newDescribeUserPoolClientResponse' :: ({ "UserPoolClient" :: NullOrUndefined (UserPoolClientType) } -> { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }) -> DescribeUserPoolClientResponse
```

Constructs DescribeUserPoolClientResponse's fields from required parameters

#### `DescribeUserPoolDomainRequest`

``` purescript
newtype DescribeUserPoolDomainRequest
  = DescribeUserPoolDomainRequest { "Domain" :: DomainType }
```

##### Instances
``` purescript
Newtype DescribeUserPoolDomainRequest _
Generic DescribeUserPoolDomainRequest _
Show DescribeUserPoolDomainRequest
Decode DescribeUserPoolDomainRequest
Encode DescribeUserPoolDomainRequest
```

#### `newDescribeUserPoolDomainRequest`

``` purescript
newDescribeUserPoolDomainRequest :: DomainType -> DescribeUserPoolDomainRequest
```

Constructs DescribeUserPoolDomainRequest from required parameters

#### `newDescribeUserPoolDomainRequest'`

``` purescript
newDescribeUserPoolDomainRequest' :: DomainType -> ({ "Domain" :: DomainType } -> { "Domain" :: DomainType }) -> DescribeUserPoolDomainRequest
```

Constructs DescribeUserPoolDomainRequest's fields from required parameters

#### `DescribeUserPoolDomainResponse`

``` purescript
newtype DescribeUserPoolDomainResponse
  = DescribeUserPoolDomainResponse { "DomainDescription" :: NullOrUndefined (DomainDescriptionType) }
```

##### Instances
``` purescript
Newtype DescribeUserPoolDomainResponse _
Generic DescribeUserPoolDomainResponse _
Show DescribeUserPoolDomainResponse
Decode DescribeUserPoolDomainResponse
Encode DescribeUserPoolDomainResponse
```

#### `newDescribeUserPoolDomainResponse`

``` purescript
newDescribeUserPoolDomainResponse :: DescribeUserPoolDomainResponse
```

Constructs DescribeUserPoolDomainResponse from required parameters

#### `newDescribeUserPoolDomainResponse'`

``` purescript
newDescribeUserPoolDomainResponse' :: ({ "DomainDescription" :: NullOrUndefined (DomainDescriptionType) } -> { "DomainDescription" :: NullOrUndefined (DomainDescriptionType) }) -> DescribeUserPoolDomainResponse
```

Constructs DescribeUserPoolDomainResponse's fields from required parameters

#### `DescribeUserPoolRequest`

``` purescript
newtype DescribeUserPoolRequest
  = DescribeUserPoolRequest { "UserPoolId" :: UserPoolIdType }
```

<p>Represents the request to describe the user pool.</p>

##### Instances
``` purescript
Newtype DescribeUserPoolRequest _
Generic DescribeUserPoolRequest _
Show DescribeUserPoolRequest
Decode DescribeUserPoolRequest
Encode DescribeUserPoolRequest
```

#### `newDescribeUserPoolRequest`

``` purescript
newDescribeUserPoolRequest :: UserPoolIdType -> DescribeUserPoolRequest
```

Constructs DescribeUserPoolRequest from required parameters

#### `newDescribeUserPoolRequest'`

``` purescript
newDescribeUserPoolRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType } -> { "UserPoolId" :: UserPoolIdType }) -> DescribeUserPoolRequest
```

Constructs DescribeUserPoolRequest's fields from required parameters

#### `DescribeUserPoolResponse`

``` purescript
newtype DescribeUserPoolResponse
  = DescribeUserPoolResponse { "UserPool" :: NullOrUndefined (UserPoolType) }
```

<p>Represents the response to describe the user pool.</p>

##### Instances
``` purescript
Newtype DescribeUserPoolResponse _
Generic DescribeUserPoolResponse _
Show DescribeUserPoolResponse
Decode DescribeUserPoolResponse
Encode DescribeUserPoolResponse
```

#### `newDescribeUserPoolResponse`

``` purescript
newDescribeUserPoolResponse :: DescribeUserPoolResponse
```

Constructs DescribeUserPoolResponse from required parameters

#### `newDescribeUserPoolResponse'`

``` purescript
newDescribeUserPoolResponse' :: ({ "UserPool" :: NullOrUndefined (UserPoolType) } -> { "UserPool" :: NullOrUndefined (UserPoolType) }) -> DescribeUserPoolResponse
```

Constructs DescribeUserPoolResponse's fields from required parameters

#### `DescriptionType`

``` purescript
newtype DescriptionType
  = DescriptionType String
```

##### Instances
``` purescript
Newtype DescriptionType _
Generic DescriptionType _
Show DescriptionType
Decode DescriptionType
Encode DescriptionType
```

#### `DeviceConfigurationType`

``` purescript
newtype DeviceConfigurationType
  = DeviceConfigurationType { "ChallengeRequiredOnNewDevice" :: NullOrUndefined (BooleanType), "DeviceOnlyRememberedOnUserPrompt" :: NullOrUndefined (BooleanType) }
```

<p>The configuration for the user pool's device tracking.</p>

##### Instances
``` purescript
Newtype DeviceConfigurationType _
Generic DeviceConfigurationType _
Show DeviceConfigurationType
Decode DeviceConfigurationType
Encode DeviceConfigurationType
```

#### `newDeviceConfigurationType`

``` purescript
newDeviceConfigurationType :: DeviceConfigurationType
```

Constructs DeviceConfigurationType from required parameters

#### `newDeviceConfigurationType'`

``` purescript
newDeviceConfigurationType' :: ({ "ChallengeRequiredOnNewDevice" :: NullOrUndefined (BooleanType), "DeviceOnlyRememberedOnUserPrompt" :: NullOrUndefined (BooleanType) } -> { "ChallengeRequiredOnNewDevice" :: NullOrUndefined (BooleanType), "DeviceOnlyRememberedOnUserPrompt" :: NullOrUndefined (BooleanType) }) -> DeviceConfigurationType
```

Constructs DeviceConfigurationType's fields from required parameters

#### `DeviceKeyType`

``` purescript
newtype DeviceKeyType
  = DeviceKeyType String
```

##### Instances
``` purescript
Newtype DeviceKeyType _
Generic DeviceKeyType _
Show DeviceKeyType
Decode DeviceKeyType
Encode DeviceKeyType
```

#### `DeviceListType`

``` purescript
newtype DeviceListType
  = DeviceListType (Array DeviceType)
```

##### Instances
``` purescript
Newtype DeviceListType _
Generic DeviceListType _
Show DeviceListType
Decode DeviceListType
Encode DeviceListType
```

#### `DeviceNameType`

``` purescript
newtype DeviceNameType
  = DeviceNameType String
```

##### Instances
``` purescript
Newtype DeviceNameType _
Generic DeviceNameType _
Show DeviceNameType
Decode DeviceNameType
Encode DeviceNameType
```

#### `DeviceRememberedStatusType`

``` purescript
newtype DeviceRememberedStatusType
  = DeviceRememberedStatusType String
```

##### Instances
``` purescript
Newtype DeviceRememberedStatusType _
Generic DeviceRememberedStatusType _
Show DeviceRememberedStatusType
Decode DeviceRememberedStatusType
Encode DeviceRememberedStatusType
```

#### `DeviceSecretVerifierConfigType`

``` purescript
newtype DeviceSecretVerifierConfigType
  = DeviceSecretVerifierConfigType { "PasswordVerifier" :: NullOrUndefined (StringType), "Salt" :: NullOrUndefined (StringType) }
```

<p>The device verifier against which it will be authenticated.</p>

##### Instances
``` purescript
Newtype DeviceSecretVerifierConfigType _
Generic DeviceSecretVerifierConfigType _
Show DeviceSecretVerifierConfigType
Decode DeviceSecretVerifierConfigType
Encode DeviceSecretVerifierConfigType
```

#### `newDeviceSecretVerifierConfigType`

``` purescript
newDeviceSecretVerifierConfigType :: DeviceSecretVerifierConfigType
```

Constructs DeviceSecretVerifierConfigType from required parameters

#### `newDeviceSecretVerifierConfigType'`

``` purescript
newDeviceSecretVerifierConfigType' :: ({ "PasswordVerifier" :: NullOrUndefined (StringType), "Salt" :: NullOrUndefined (StringType) } -> { "PasswordVerifier" :: NullOrUndefined (StringType), "Salt" :: NullOrUndefined (StringType) }) -> DeviceSecretVerifierConfigType
```

Constructs DeviceSecretVerifierConfigType's fields from required parameters

#### `DeviceType`

``` purescript
newtype DeviceType
  = DeviceType { "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceAttributes" :: NullOrUndefined (AttributeListType), "DeviceCreateDate" :: NullOrUndefined (DateType), "DeviceLastModifiedDate" :: NullOrUndefined (DateType), "DeviceLastAuthenticatedDate" :: NullOrUndefined (DateType) }
```

<p>The device type.</p>

##### Instances
``` purescript
Newtype DeviceType _
Generic DeviceType _
Show DeviceType
Decode DeviceType
Encode DeviceType
```

#### `newDeviceType`

``` purescript
newDeviceType :: DeviceType
```

Constructs DeviceType from required parameters

#### `newDeviceType'`

``` purescript
newDeviceType' :: ({ "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceAttributes" :: NullOrUndefined (AttributeListType), "DeviceCreateDate" :: NullOrUndefined (DateType), "DeviceLastModifiedDate" :: NullOrUndefined (DateType), "DeviceLastAuthenticatedDate" :: NullOrUndefined (DateType) } -> { "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceAttributes" :: NullOrUndefined (AttributeListType), "DeviceCreateDate" :: NullOrUndefined (DateType), "DeviceLastModifiedDate" :: NullOrUndefined (DateType), "DeviceLastAuthenticatedDate" :: NullOrUndefined (DateType) }) -> DeviceType
```

Constructs DeviceType's fields from required parameters

#### `DomainDescriptionType`

``` purescript
newtype DomainDescriptionType
  = DomainDescriptionType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "Domain" :: NullOrUndefined (DomainType), "S3Bucket" :: NullOrUndefined (S3BucketType), "CloudFrontDistribution" :: NullOrUndefined (ArnType), "Version" :: NullOrUndefined (DomainVersionType), "Status" :: NullOrUndefined (DomainStatusType) }
```

<p>A container for information about a domain.</p>

##### Instances
``` purescript
Newtype DomainDescriptionType _
Generic DomainDescriptionType _
Show DomainDescriptionType
Decode DomainDescriptionType
Encode DomainDescriptionType
```

#### `newDomainDescriptionType`

``` purescript
newDomainDescriptionType :: DomainDescriptionType
```

Constructs DomainDescriptionType from required parameters

#### `newDomainDescriptionType'`

``` purescript
newDomainDescriptionType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "Domain" :: NullOrUndefined (DomainType), "S3Bucket" :: NullOrUndefined (S3BucketType), "CloudFrontDistribution" :: NullOrUndefined (ArnType), "Version" :: NullOrUndefined (DomainVersionType), "Status" :: NullOrUndefined (DomainStatusType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "Domain" :: NullOrUndefined (DomainType), "S3Bucket" :: NullOrUndefined (S3BucketType), "CloudFrontDistribution" :: NullOrUndefined (ArnType), "Version" :: NullOrUndefined (DomainVersionType), "Status" :: NullOrUndefined (DomainStatusType) }) -> DomainDescriptionType
```

Constructs DomainDescriptionType's fields from required parameters

#### `DomainStatusType`

``` purescript
newtype DomainStatusType
  = DomainStatusType String
```

##### Instances
``` purescript
Newtype DomainStatusType _
Generic DomainStatusType _
Show DomainStatusType
Decode DomainStatusType
Encode DomainStatusType
```

#### `DomainType`

``` purescript
newtype DomainType
  = DomainType String
```

##### Instances
``` purescript
Newtype DomainType _
Generic DomainType _
Show DomainType
Decode DomainType
Encode DomainType
```

#### `DomainVersionType`

``` purescript
newtype DomainVersionType
  = DomainVersionType String
```

##### Instances
``` purescript
Newtype DomainVersionType _
Generic DomainVersionType _
Show DomainVersionType
Decode DomainVersionType
Encode DomainVersionType
```

#### `DuplicateProviderException`

``` purescript
newtype DuplicateProviderException
  = DuplicateProviderException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the provider is already supported by the user pool.</p>

##### Instances
``` purescript
Newtype DuplicateProviderException _
Generic DuplicateProviderException _
Show DuplicateProviderException
Decode DuplicateProviderException
Encode DuplicateProviderException
```

#### `newDuplicateProviderException`

``` purescript
newDuplicateProviderException :: DuplicateProviderException
```

Constructs DuplicateProviderException from required parameters

#### `newDuplicateProviderException'`

``` purescript
newDuplicateProviderException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> DuplicateProviderException
```

Constructs DuplicateProviderException's fields from required parameters

#### `EmailAddressType`

``` purescript
newtype EmailAddressType
  = EmailAddressType String
```

##### Instances
``` purescript
Newtype EmailAddressType _
Generic EmailAddressType _
Show EmailAddressType
Decode EmailAddressType
Encode EmailAddressType
```

#### `EmailConfigurationType`

``` purescript
newtype EmailConfigurationType
  = EmailConfigurationType { "SourceArn" :: NullOrUndefined (ArnType), "ReplyToEmailAddress" :: NullOrUndefined (EmailAddressType) }
```

<p>The email configuration type.</p>

##### Instances
``` purescript
Newtype EmailConfigurationType _
Generic EmailConfigurationType _
Show EmailConfigurationType
Decode EmailConfigurationType
Encode EmailConfigurationType
```

#### `newEmailConfigurationType`

``` purescript
newEmailConfigurationType :: EmailConfigurationType
```

Constructs EmailConfigurationType from required parameters

#### `newEmailConfigurationType'`

``` purescript
newEmailConfigurationType' :: ({ "SourceArn" :: NullOrUndefined (ArnType), "ReplyToEmailAddress" :: NullOrUndefined (EmailAddressType) } -> { "SourceArn" :: NullOrUndefined (ArnType), "ReplyToEmailAddress" :: NullOrUndefined (EmailAddressType) }) -> EmailConfigurationType
```

Constructs EmailConfigurationType's fields from required parameters

#### `EmailNotificationBodyType`

``` purescript
newtype EmailNotificationBodyType
  = EmailNotificationBodyType String
```

##### Instances
``` purescript
Newtype EmailNotificationBodyType _
Generic EmailNotificationBodyType _
Show EmailNotificationBodyType
Decode EmailNotificationBodyType
Encode EmailNotificationBodyType
```

#### `EmailNotificationSubjectType`

``` purescript
newtype EmailNotificationSubjectType
  = EmailNotificationSubjectType String
```

##### Instances
``` purescript
Newtype EmailNotificationSubjectType _
Generic EmailNotificationSubjectType _
Show EmailNotificationSubjectType
Decode EmailNotificationSubjectType
Encode EmailNotificationSubjectType
```

#### `EmailVerificationMessageByLinkType`

``` purescript
newtype EmailVerificationMessageByLinkType
  = EmailVerificationMessageByLinkType String
```

##### Instances
``` purescript
Newtype EmailVerificationMessageByLinkType _
Generic EmailVerificationMessageByLinkType _
Show EmailVerificationMessageByLinkType
Decode EmailVerificationMessageByLinkType
Encode EmailVerificationMessageByLinkType
```

#### `EmailVerificationMessageType`

``` purescript
newtype EmailVerificationMessageType
  = EmailVerificationMessageType String
```

##### Instances
``` purescript
Newtype EmailVerificationMessageType _
Generic EmailVerificationMessageType _
Show EmailVerificationMessageType
Decode EmailVerificationMessageType
Encode EmailVerificationMessageType
```

#### `EmailVerificationSubjectByLinkType`

``` purescript
newtype EmailVerificationSubjectByLinkType
  = EmailVerificationSubjectByLinkType String
```

##### Instances
``` purescript
Newtype EmailVerificationSubjectByLinkType _
Generic EmailVerificationSubjectByLinkType _
Show EmailVerificationSubjectByLinkType
Decode EmailVerificationSubjectByLinkType
Encode EmailVerificationSubjectByLinkType
```

#### `EmailVerificationSubjectType`

``` purescript
newtype EmailVerificationSubjectType
  = EmailVerificationSubjectType String
```

##### Instances
``` purescript
Newtype EmailVerificationSubjectType _
Generic EmailVerificationSubjectType _
Show EmailVerificationSubjectType
Decode EmailVerificationSubjectType
Encode EmailVerificationSubjectType
```

#### `EnableSoftwareTokenMFAException`

``` purescript
newtype EnableSoftwareTokenMFAException
  = EnableSoftwareTokenMFAException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).</p>

##### Instances
``` purescript
Newtype EnableSoftwareTokenMFAException _
Generic EnableSoftwareTokenMFAException _
Show EnableSoftwareTokenMFAException
Decode EnableSoftwareTokenMFAException
Encode EnableSoftwareTokenMFAException
```

#### `newEnableSoftwareTokenMFAException`

``` purescript
newEnableSoftwareTokenMFAException :: EnableSoftwareTokenMFAException
```

Constructs EnableSoftwareTokenMFAException from required parameters

#### `newEnableSoftwareTokenMFAException'`

``` purescript
newEnableSoftwareTokenMFAException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> EnableSoftwareTokenMFAException
```

Constructs EnableSoftwareTokenMFAException's fields from required parameters

#### `EventContextDataType`

``` purescript
newtype EventContextDataType
  = EventContextDataType { "IpAddress" :: NullOrUndefined (StringType), "DeviceName" :: NullOrUndefined (StringType), "Timezone" :: NullOrUndefined (StringType), "City" :: NullOrUndefined (StringType), "Country" :: NullOrUndefined (StringType) }
```

<p>Specifies the user context data captured at the time of an event request.</p>

##### Instances
``` purescript
Newtype EventContextDataType _
Generic EventContextDataType _
Show EventContextDataType
Decode EventContextDataType
Encode EventContextDataType
```

#### `newEventContextDataType`

``` purescript
newEventContextDataType :: EventContextDataType
```

Constructs EventContextDataType from required parameters

#### `newEventContextDataType'`

``` purescript
newEventContextDataType' :: ({ "IpAddress" :: NullOrUndefined (StringType), "DeviceName" :: NullOrUndefined (StringType), "Timezone" :: NullOrUndefined (StringType), "City" :: NullOrUndefined (StringType), "Country" :: NullOrUndefined (StringType) } -> { "IpAddress" :: NullOrUndefined (StringType), "DeviceName" :: NullOrUndefined (StringType), "Timezone" :: NullOrUndefined (StringType), "City" :: NullOrUndefined (StringType), "Country" :: NullOrUndefined (StringType) }) -> EventContextDataType
```

Constructs EventContextDataType's fields from required parameters

#### `EventFeedbackType`

``` purescript
newtype EventFeedbackType
  = EventFeedbackType { "FeedbackValue" :: FeedbackValueType, "Provider" :: StringType, "FeedbackDate" :: NullOrUndefined (DateType) }
```

<p>Specifies the event feedback type.</p>

##### Instances
``` purescript
Newtype EventFeedbackType _
Generic EventFeedbackType _
Show EventFeedbackType
Decode EventFeedbackType
Encode EventFeedbackType
```

#### `newEventFeedbackType`

``` purescript
newEventFeedbackType :: FeedbackValueType -> StringType -> EventFeedbackType
```

Constructs EventFeedbackType from required parameters

#### `newEventFeedbackType'`

``` purescript
newEventFeedbackType' :: FeedbackValueType -> StringType -> ({ "FeedbackValue" :: FeedbackValueType, "Provider" :: StringType, "FeedbackDate" :: NullOrUndefined (DateType) } -> { "FeedbackValue" :: FeedbackValueType, "Provider" :: StringType, "FeedbackDate" :: NullOrUndefined (DateType) }) -> EventFeedbackType
```

Constructs EventFeedbackType's fields from required parameters

#### `EventFilterType`

``` purescript
newtype EventFilterType
  = EventFilterType String
```

##### Instances
``` purescript
Newtype EventFilterType _
Generic EventFilterType _
Show EventFilterType
Decode EventFilterType
Encode EventFilterType
```

#### `EventFiltersType`

``` purescript
newtype EventFiltersType
  = EventFiltersType (Array EventFilterType)
```

##### Instances
``` purescript
Newtype EventFiltersType _
Generic EventFiltersType _
Show EventFiltersType
Decode EventFiltersType
Encode EventFiltersType
```

#### `EventIdType`

``` purescript
newtype EventIdType
  = EventIdType String
```

##### Instances
``` purescript
Newtype EventIdType _
Generic EventIdType _
Show EventIdType
Decode EventIdType
Encode EventIdType
```

#### `EventResponseType`

``` purescript
newtype EventResponseType
  = EventResponseType String
```

##### Instances
``` purescript
Newtype EventResponseType _
Generic EventResponseType _
Show EventResponseType
Decode EventResponseType
Encode EventResponseType
```

#### `EventRiskType`

``` purescript
newtype EventRiskType
  = EventRiskType { "RiskDecision" :: NullOrUndefined (RiskDecisionType), "RiskLevel" :: NullOrUndefined (RiskLevelType) }
```

<p>The event risk type.</p>

##### Instances
``` purescript
Newtype EventRiskType _
Generic EventRiskType _
Show EventRiskType
Decode EventRiskType
Encode EventRiskType
```

#### `newEventRiskType`

``` purescript
newEventRiskType :: EventRiskType
```

Constructs EventRiskType from required parameters

#### `newEventRiskType'`

``` purescript
newEventRiskType' :: ({ "RiskDecision" :: NullOrUndefined (RiskDecisionType), "RiskLevel" :: NullOrUndefined (RiskLevelType) } -> { "RiskDecision" :: NullOrUndefined (RiskDecisionType), "RiskLevel" :: NullOrUndefined (RiskLevelType) }) -> EventRiskType
```

Constructs EventRiskType's fields from required parameters

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `ExpiredCodeException`

``` purescript
newtype ExpiredCodeException
  = ExpiredCodeException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown if a code has expired.</p>

##### Instances
``` purescript
Newtype ExpiredCodeException _
Generic ExpiredCodeException _
Show ExpiredCodeException
Decode ExpiredCodeException
Encode ExpiredCodeException
```

#### `newExpiredCodeException`

``` purescript
newExpiredCodeException :: ExpiredCodeException
```

Constructs ExpiredCodeException from required parameters

#### `newExpiredCodeException'`

``` purescript
newExpiredCodeException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> ExpiredCodeException
```

Constructs ExpiredCodeException's fields from required parameters

#### `ExplicitAuthFlowsListType`

``` purescript
newtype ExplicitAuthFlowsListType
  = ExplicitAuthFlowsListType (Array ExplicitAuthFlowsType)
```

##### Instances
``` purescript
Newtype ExplicitAuthFlowsListType _
Generic ExplicitAuthFlowsListType _
Show ExplicitAuthFlowsListType
Decode ExplicitAuthFlowsListType
Encode ExplicitAuthFlowsListType
```

#### `ExplicitAuthFlowsType`

``` purescript
newtype ExplicitAuthFlowsType
  = ExplicitAuthFlowsType String
```

##### Instances
``` purescript
Newtype ExplicitAuthFlowsType _
Generic ExplicitAuthFlowsType _
Show ExplicitAuthFlowsType
Decode ExplicitAuthFlowsType
Encode ExplicitAuthFlowsType
```

#### `FeedbackValueType`

``` purescript
newtype FeedbackValueType
  = FeedbackValueType String
```

##### Instances
``` purescript
Newtype FeedbackValueType _
Generic FeedbackValueType _
Show FeedbackValueType
Decode FeedbackValueType
Encode FeedbackValueType
```

#### `ForceAliasCreation`

``` purescript
newtype ForceAliasCreation
  = ForceAliasCreation Boolean
```

##### Instances
``` purescript
Newtype ForceAliasCreation _
Generic ForceAliasCreation _
Show ForceAliasCreation
Decode ForceAliasCreation
Encode ForceAliasCreation
```

#### `ForgetDeviceRequest`

``` purescript
newtype ForgetDeviceRequest
  = ForgetDeviceRequest { "AccessToken" :: NullOrUndefined (TokenModelType), "DeviceKey" :: DeviceKeyType }
```

<p>Represents the request to forget the device.</p>

##### Instances
``` purescript
Newtype ForgetDeviceRequest _
Generic ForgetDeviceRequest _
Show ForgetDeviceRequest
Decode ForgetDeviceRequest
Encode ForgetDeviceRequest
```

#### `newForgetDeviceRequest`

``` purescript
newForgetDeviceRequest :: DeviceKeyType -> ForgetDeviceRequest
```

Constructs ForgetDeviceRequest from required parameters

#### `newForgetDeviceRequest'`

``` purescript
newForgetDeviceRequest' :: DeviceKeyType -> ({ "AccessToken" :: NullOrUndefined (TokenModelType), "DeviceKey" :: DeviceKeyType } -> { "AccessToken" :: NullOrUndefined (TokenModelType), "DeviceKey" :: DeviceKeyType }) -> ForgetDeviceRequest
```

Constructs ForgetDeviceRequest's fields from required parameters

#### `ForgotPasswordRequest`

``` purescript
newtype ForgotPasswordRequest
  = ForgotPasswordRequest { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) }
```

<p>Represents the request to reset a user's password.</p>

##### Instances
``` purescript
Newtype ForgotPasswordRequest _
Generic ForgotPasswordRequest _
Show ForgotPasswordRequest
Decode ForgotPasswordRequest
Encode ForgotPasswordRequest
```

#### `newForgotPasswordRequest`

``` purescript
newForgotPasswordRequest :: ClientIdType -> UsernameType -> ForgotPasswordRequest
```

Constructs ForgotPasswordRequest from required parameters

#### `newForgotPasswordRequest'`

``` purescript
newForgotPasswordRequest' :: ClientIdType -> UsernameType -> ({ "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) } -> { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) }) -> ForgotPasswordRequest
```

Constructs ForgotPasswordRequest's fields from required parameters

#### `ForgotPasswordResponse`

``` purescript
newtype ForgotPasswordResponse
  = ForgotPasswordResponse { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }
```

<p>Respresents the response from the server regarding the request to reset a password.</p>

##### Instances
``` purescript
Newtype ForgotPasswordResponse _
Generic ForgotPasswordResponse _
Show ForgotPasswordResponse
Decode ForgotPasswordResponse
Encode ForgotPasswordResponse
```

#### `newForgotPasswordResponse`

``` purescript
newForgotPasswordResponse :: ForgotPasswordResponse
```

Constructs ForgotPasswordResponse from required parameters

#### `newForgotPasswordResponse'`

``` purescript
newForgotPasswordResponse' :: ({ "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) } -> { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }) -> ForgotPasswordResponse
```

Constructs ForgotPasswordResponse's fields from required parameters

#### `GenerateSecret`

``` purescript
newtype GenerateSecret
  = GenerateSecret Boolean
```

##### Instances
``` purescript
Newtype GenerateSecret _
Generic GenerateSecret _
Show GenerateSecret
Decode GenerateSecret
Encode GenerateSecret
```

#### `GetCSVHeaderRequest`

``` purescript
newtype GetCSVHeaderRequest
  = GetCSVHeaderRequest { "UserPoolId" :: UserPoolIdType }
```

<p>Represents the request to get the header information for the .csv file for the user import job.</p>

##### Instances
``` purescript
Newtype GetCSVHeaderRequest _
Generic GetCSVHeaderRequest _
Show GetCSVHeaderRequest
Decode GetCSVHeaderRequest
Encode GetCSVHeaderRequest
```

#### `newGetCSVHeaderRequest`

``` purescript
newGetCSVHeaderRequest :: UserPoolIdType -> GetCSVHeaderRequest
```

Constructs GetCSVHeaderRequest from required parameters

#### `newGetCSVHeaderRequest'`

``` purescript
newGetCSVHeaderRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType } -> { "UserPoolId" :: UserPoolIdType }) -> GetCSVHeaderRequest
```

Constructs GetCSVHeaderRequest's fields from required parameters

#### `GetCSVHeaderResponse`

``` purescript
newtype GetCSVHeaderResponse
  = GetCSVHeaderResponse { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "CSVHeader" :: NullOrUndefined (ListOfStringTypes) }
```

<p>Represents the response from the server to the request to get the header information for the .csv file for the user import job.</p>

##### Instances
``` purescript
Newtype GetCSVHeaderResponse _
Generic GetCSVHeaderResponse _
Show GetCSVHeaderResponse
Decode GetCSVHeaderResponse
Encode GetCSVHeaderResponse
```

#### `newGetCSVHeaderResponse`

``` purescript
newGetCSVHeaderResponse :: GetCSVHeaderResponse
```

Constructs GetCSVHeaderResponse from required parameters

#### `newGetCSVHeaderResponse'`

``` purescript
newGetCSVHeaderResponse' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "CSVHeader" :: NullOrUndefined (ListOfStringTypes) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "CSVHeader" :: NullOrUndefined (ListOfStringTypes) }) -> GetCSVHeaderResponse
```

Constructs GetCSVHeaderResponse's fields from required parameters

#### `GetDeviceRequest`

``` purescript
newtype GetDeviceRequest
  = GetDeviceRequest { "DeviceKey" :: DeviceKeyType, "AccessToken" :: NullOrUndefined (TokenModelType) }
```

<p>Represents the request to get the device.</p>

##### Instances
``` purescript
Newtype GetDeviceRequest _
Generic GetDeviceRequest _
Show GetDeviceRequest
Decode GetDeviceRequest
Encode GetDeviceRequest
```

#### `newGetDeviceRequest`

``` purescript
newGetDeviceRequest :: DeviceKeyType -> GetDeviceRequest
```

Constructs GetDeviceRequest from required parameters

#### `newGetDeviceRequest'`

``` purescript
newGetDeviceRequest' :: DeviceKeyType -> ({ "DeviceKey" :: DeviceKeyType, "AccessToken" :: NullOrUndefined (TokenModelType) } -> { "DeviceKey" :: DeviceKeyType, "AccessToken" :: NullOrUndefined (TokenModelType) }) -> GetDeviceRequest
```

Constructs GetDeviceRequest's fields from required parameters

#### `GetDeviceResponse`

``` purescript
newtype GetDeviceResponse
  = GetDeviceResponse { "Device" :: DeviceType }
```

<p>Gets the device response.</p>

##### Instances
``` purescript
Newtype GetDeviceResponse _
Generic GetDeviceResponse _
Show GetDeviceResponse
Decode GetDeviceResponse
Encode GetDeviceResponse
```

#### `newGetDeviceResponse`

``` purescript
newGetDeviceResponse :: DeviceType -> GetDeviceResponse
```

Constructs GetDeviceResponse from required parameters

#### `newGetDeviceResponse'`

``` purescript
newGetDeviceResponse' :: DeviceType -> ({ "Device" :: DeviceType } -> { "Device" :: DeviceType }) -> GetDeviceResponse
```

Constructs GetDeviceResponse's fields from required parameters

#### `GetGroupRequest`

``` purescript
newtype GetGroupRequest
  = GetGroupRequest { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype GetGroupRequest _
Generic GetGroupRequest _
Show GetGroupRequest
Decode GetGroupRequest
Encode GetGroupRequest
```

#### `newGetGroupRequest`

``` purescript
newGetGroupRequest :: GroupNameType -> UserPoolIdType -> GetGroupRequest
```

Constructs GetGroupRequest from required parameters

#### `newGetGroupRequest'`

``` purescript
newGetGroupRequest' :: GroupNameType -> UserPoolIdType -> ({ "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType } -> { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType }) -> GetGroupRequest
```

Constructs GetGroupRequest's fields from required parameters

#### `GetGroupResponse`

``` purescript
newtype GetGroupResponse
  = GetGroupResponse { "Group" :: NullOrUndefined (GroupType) }
```

##### Instances
``` purescript
Newtype GetGroupResponse _
Generic GetGroupResponse _
Show GetGroupResponse
Decode GetGroupResponse
Encode GetGroupResponse
```

#### `newGetGroupResponse`

``` purescript
newGetGroupResponse :: GetGroupResponse
```

Constructs GetGroupResponse from required parameters

#### `newGetGroupResponse'`

``` purescript
newGetGroupResponse' :: ({ "Group" :: NullOrUndefined (GroupType) } -> { "Group" :: NullOrUndefined (GroupType) }) -> GetGroupResponse
```

Constructs GetGroupResponse's fields from required parameters

#### `GetIdentityProviderByIdentifierRequest`

``` purescript
newtype GetIdentityProviderByIdentifierRequest
  = GetIdentityProviderByIdentifierRequest { "UserPoolId" :: UserPoolIdType, "IdpIdentifier" :: IdpIdentifierType }
```

##### Instances
``` purescript
Newtype GetIdentityProviderByIdentifierRequest _
Generic GetIdentityProviderByIdentifierRequest _
Show GetIdentityProviderByIdentifierRequest
Decode GetIdentityProviderByIdentifierRequest
Encode GetIdentityProviderByIdentifierRequest
```

#### `newGetIdentityProviderByIdentifierRequest`

``` purescript
newGetIdentityProviderByIdentifierRequest :: IdpIdentifierType -> UserPoolIdType -> GetIdentityProviderByIdentifierRequest
```

Constructs GetIdentityProviderByIdentifierRequest from required parameters

#### `newGetIdentityProviderByIdentifierRequest'`

``` purescript
newGetIdentityProviderByIdentifierRequest' :: IdpIdentifierType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "IdpIdentifier" :: IdpIdentifierType } -> { "UserPoolId" :: UserPoolIdType, "IdpIdentifier" :: IdpIdentifierType }) -> GetIdentityProviderByIdentifierRequest
```

Constructs GetIdentityProviderByIdentifierRequest's fields from required parameters

#### `GetIdentityProviderByIdentifierResponse`

``` purescript
newtype GetIdentityProviderByIdentifierResponse
  = GetIdentityProviderByIdentifierResponse { "IdentityProvider" :: IdentityProviderType }
```

##### Instances
``` purescript
Newtype GetIdentityProviderByIdentifierResponse _
Generic GetIdentityProviderByIdentifierResponse _
Show GetIdentityProviderByIdentifierResponse
Decode GetIdentityProviderByIdentifierResponse
Encode GetIdentityProviderByIdentifierResponse
```

#### `newGetIdentityProviderByIdentifierResponse`

``` purescript
newGetIdentityProviderByIdentifierResponse :: IdentityProviderType -> GetIdentityProviderByIdentifierResponse
```

Constructs GetIdentityProviderByIdentifierResponse from required parameters

#### `newGetIdentityProviderByIdentifierResponse'`

``` purescript
newGetIdentityProviderByIdentifierResponse' :: IdentityProviderType -> ({ "IdentityProvider" :: IdentityProviderType } -> { "IdentityProvider" :: IdentityProviderType }) -> GetIdentityProviderByIdentifierResponse
```

Constructs GetIdentityProviderByIdentifierResponse's fields from required parameters

#### `GetSigningCertificateRequest`

``` purescript
newtype GetSigningCertificateRequest
  = GetSigningCertificateRequest { "UserPoolId" :: UserPoolIdType }
```

<p>Request to get a signing certificate from Cognito.</p>

##### Instances
``` purescript
Newtype GetSigningCertificateRequest _
Generic GetSigningCertificateRequest _
Show GetSigningCertificateRequest
Decode GetSigningCertificateRequest
Encode GetSigningCertificateRequest
```

#### `newGetSigningCertificateRequest`

``` purescript
newGetSigningCertificateRequest :: UserPoolIdType -> GetSigningCertificateRequest
```

Constructs GetSigningCertificateRequest from required parameters

#### `newGetSigningCertificateRequest'`

``` purescript
newGetSigningCertificateRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType } -> { "UserPoolId" :: UserPoolIdType }) -> GetSigningCertificateRequest
```

Constructs GetSigningCertificateRequest's fields from required parameters

#### `GetSigningCertificateResponse`

``` purescript
newtype GetSigningCertificateResponse
  = GetSigningCertificateResponse { "Certificate" :: NullOrUndefined (StringType) }
```

<p>Response from Cognito for a signing certificate request.</p>

##### Instances
``` purescript
Newtype GetSigningCertificateResponse _
Generic GetSigningCertificateResponse _
Show GetSigningCertificateResponse
Decode GetSigningCertificateResponse
Encode GetSigningCertificateResponse
```

#### `newGetSigningCertificateResponse`

``` purescript
newGetSigningCertificateResponse :: GetSigningCertificateResponse
```

Constructs GetSigningCertificateResponse from required parameters

#### `newGetSigningCertificateResponse'`

``` purescript
newGetSigningCertificateResponse' :: ({ "Certificate" :: NullOrUndefined (StringType) } -> { "Certificate" :: NullOrUndefined (StringType) }) -> GetSigningCertificateResponse
```

Constructs GetSigningCertificateResponse's fields from required parameters

#### `GetUICustomizationRequest`

``` purescript
newtype GetUICustomizationRequest
  = GetUICustomizationRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) }
```

##### Instances
``` purescript
Newtype GetUICustomizationRequest _
Generic GetUICustomizationRequest _
Show GetUICustomizationRequest
Decode GetUICustomizationRequest
Encode GetUICustomizationRequest
```

#### `newGetUICustomizationRequest`

``` purescript
newGetUICustomizationRequest :: UserPoolIdType -> GetUICustomizationRequest
```

Constructs GetUICustomizationRequest from required parameters

#### `newGetUICustomizationRequest'`

``` purescript
newGetUICustomizationRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType) }) -> GetUICustomizationRequest
```

Constructs GetUICustomizationRequest's fields from required parameters

#### `GetUICustomizationResponse`

``` purescript
newtype GetUICustomizationResponse
  = GetUICustomizationResponse { "UICustomization" :: UICustomizationType }
```

##### Instances
``` purescript
Newtype GetUICustomizationResponse _
Generic GetUICustomizationResponse _
Show GetUICustomizationResponse
Decode GetUICustomizationResponse
Encode GetUICustomizationResponse
```

#### `newGetUICustomizationResponse`

``` purescript
newGetUICustomizationResponse :: UICustomizationType -> GetUICustomizationResponse
```

Constructs GetUICustomizationResponse from required parameters

#### `newGetUICustomizationResponse'`

``` purescript
newGetUICustomizationResponse' :: UICustomizationType -> ({ "UICustomization" :: UICustomizationType } -> { "UICustomization" :: UICustomizationType }) -> GetUICustomizationResponse
```

Constructs GetUICustomizationResponse's fields from required parameters

#### `GetUserAttributeVerificationCodeRequest`

``` purescript
newtype GetUserAttributeVerificationCodeRequest
  = GetUserAttributeVerificationCodeRequest { "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType }
```

<p>Represents the request to get user attribute verification.</p>

##### Instances
``` purescript
Newtype GetUserAttributeVerificationCodeRequest _
Generic GetUserAttributeVerificationCodeRequest _
Show GetUserAttributeVerificationCodeRequest
Decode GetUserAttributeVerificationCodeRequest
Encode GetUserAttributeVerificationCodeRequest
```

#### `newGetUserAttributeVerificationCodeRequest`

``` purescript
newGetUserAttributeVerificationCodeRequest :: TokenModelType -> AttributeNameType -> GetUserAttributeVerificationCodeRequest
```

Constructs GetUserAttributeVerificationCodeRequest from required parameters

#### `newGetUserAttributeVerificationCodeRequest'`

``` purescript
newGetUserAttributeVerificationCodeRequest' :: TokenModelType -> AttributeNameType -> ({ "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType } -> { "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType }) -> GetUserAttributeVerificationCodeRequest
```

Constructs GetUserAttributeVerificationCodeRequest's fields from required parameters

#### `GetUserAttributeVerificationCodeResponse`

``` purescript
newtype GetUserAttributeVerificationCodeResponse
  = GetUserAttributeVerificationCodeResponse { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }
```

<p>The verification code response returned by the server response to get the user attribute verification code.</p>

##### Instances
``` purescript
Newtype GetUserAttributeVerificationCodeResponse _
Generic GetUserAttributeVerificationCodeResponse _
Show GetUserAttributeVerificationCodeResponse
Decode GetUserAttributeVerificationCodeResponse
Encode GetUserAttributeVerificationCodeResponse
```

#### `newGetUserAttributeVerificationCodeResponse`

``` purescript
newGetUserAttributeVerificationCodeResponse :: GetUserAttributeVerificationCodeResponse
```

Constructs GetUserAttributeVerificationCodeResponse from required parameters

#### `newGetUserAttributeVerificationCodeResponse'`

``` purescript
newGetUserAttributeVerificationCodeResponse' :: ({ "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) } -> { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }) -> GetUserAttributeVerificationCodeResponse
```

Constructs GetUserAttributeVerificationCodeResponse's fields from required parameters

#### `GetUserPoolMfaConfigRequest`

``` purescript
newtype GetUserPoolMfaConfigRequest
  = GetUserPoolMfaConfigRequest { "UserPoolId" :: UserPoolIdType }
```

##### Instances
``` purescript
Newtype GetUserPoolMfaConfigRequest _
Generic GetUserPoolMfaConfigRequest _
Show GetUserPoolMfaConfigRequest
Decode GetUserPoolMfaConfigRequest
Encode GetUserPoolMfaConfigRequest
```

#### `newGetUserPoolMfaConfigRequest`

``` purescript
newGetUserPoolMfaConfigRequest :: UserPoolIdType -> GetUserPoolMfaConfigRequest
```

Constructs GetUserPoolMfaConfigRequest from required parameters

#### `newGetUserPoolMfaConfigRequest'`

``` purescript
newGetUserPoolMfaConfigRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType } -> { "UserPoolId" :: UserPoolIdType }) -> GetUserPoolMfaConfigRequest
```

Constructs GetUserPoolMfaConfigRequest's fields from required parameters

#### `GetUserPoolMfaConfigResponse`

``` purescript
newtype GetUserPoolMfaConfigResponse
  = GetUserPoolMfaConfigResponse { "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }
```

##### Instances
``` purescript
Newtype GetUserPoolMfaConfigResponse _
Generic GetUserPoolMfaConfigResponse _
Show GetUserPoolMfaConfigResponse
Decode GetUserPoolMfaConfigResponse
Encode GetUserPoolMfaConfigResponse
```

#### `newGetUserPoolMfaConfigResponse`

``` purescript
newGetUserPoolMfaConfigResponse :: GetUserPoolMfaConfigResponse
```

Constructs GetUserPoolMfaConfigResponse from required parameters

#### `newGetUserPoolMfaConfigResponse'`

``` purescript
newGetUserPoolMfaConfigResponse' :: ({ "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) } -> { "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }) -> GetUserPoolMfaConfigResponse
```

Constructs GetUserPoolMfaConfigResponse's fields from required parameters

#### `GetUserRequest`

``` purescript
newtype GetUserRequest
  = GetUserRequest { "AccessToken" :: TokenModelType }
```

<p>Represents the request to get information about the user.</p>

##### Instances
``` purescript
Newtype GetUserRequest _
Generic GetUserRequest _
Show GetUserRequest
Decode GetUserRequest
Encode GetUserRequest
```

#### `newGetUserRequest`

``` purescript
newGetUserRequest :: TokenModelType -> GetUserRequest
```

Constructs GetUserRequest from required parameters

#### `newGetUserRequest'`

``` purescript
newGetUserRequest' :: TokenModelType -> ({ "AccessToken" :: TokenModelType } -> { "AccessToken" :: TokenModelType }) -> GetUserRequest
```

Constructs GetUserRequest's fields from required parameters

#### `GetUserResponse`

``` purescript
newtype GetUserResponse
  = GetUserResponse { "Username" :: UsernameType, "UserAttributes" :: AttributeListType, "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) }
```

<p>Represents the response from the server from the request to get information about the user.</p>

##### Instances
``` purescript
Newtype GetUserResponse _
Generic GetUserResponse _
Show GetUserResponse
Decode GetUserResponse
Encode GetUserResponse
```

#### `newGetUserResponse`

``` purescript
newGetUserResponse :: AttributeListType -> UsernameType -> GetUserResponse
```

Constructs GetUserResponse from required parameters

#### `newGetUserResponse'`

``` purescript
newGetUserResponse' :: AttributeListType -> UsernameType -> ({ "Username" :: UsernameType, "UserAttributes" :: AttributeListType, "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) } -> { "Username" :: UsernameType, "UserAttributes" :: AttributeListType, "MFAOptions" :: NullOrUndefined (MFAOptionListType), "PreferredMfaSetting" :: NullOrUndefined (StringType), "UserMFASettingList" :: NullOrUndefined (UserMFASettingListType) }) -> GetUserResponse
```

Constructs GetUserResponse's fields from required parameters

#### `GlobalSignOutRequest`

``` purescript
newtype GlobalSignOutRequest
  = GlobalSignOutRequest { "AccessToken" :: TokenModelType }
```

<p>Represents the request to sign out all devices.</p>

##### Instances
``` purescript
Newtype GlobalSignOutRequest _
Generic GlobalSignOutRequest _
Show GlobalSignOutRequest
Decode GlobalSignOutRequest
Encode GlobalSignOutRequest
```

#### `newGlobalSignOutRequest`

``` purescript
newGlobalSignOutRequest :: TokenModelType -> GlobalSignOutRequest
```

Constructs GlobalSignOutRequest from required parameters

#### `newGlobalSignOutRequest'`

``` purescript
newGlobalSignOutRequest' :: TokenModelType -> ({ "AccessToken" :: TokenModelType } -> { "AccessToken" :: TokenModelType }) -> GlobalSignOutRequest
```

Constructs GlobalSignOutRequest's fields from required parameters

#### `GlobalSignOutResponse`

``` purescript
newtype GlobalSignOutResponse
  = GlobalSignOutResponse NoArguments
```

<p>The response to the request to sign out all devices.</p>

##### Instances
``` purescript
Newtype GlobalSignOutResponse _
Generic GlobalSignOutResponse _
Show GlobalSignOutResponse
Decode GlobalSignOutResponse
Encode GlobalSignOutResponse
```

#### `GroupExistsException`

``` purescript
newtype GroupExistsException
  = GroupExistsException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>

##### Instances
``` purescript
Newtype GroupExistsException _
Generic GroupExistsException _
Show GroupExistsException
Decode GroupExistsException
Encode GroupExistsException
```

#### `newGroupExistsException`

``` purescript
newGroupExistsException :: GroupExistsException
```

Constructs GroupExistsException from required parameters

#### `newGroupExistsException'`

``` purescript
newGroupExistsException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> GroupExistsException
```

Constructs GroupExistsException's fields from required parameters

#### `GroupListType`

``` purescript
newtype GroupListType
  = GroupListType (Array GroupType)
```

##### Instances
``` purescript
Newtype GroupListType _
Generic GroupListType _
Show GroupListType
Decode GroupListType
Encode GroupListType
```

#### `GroupNameType`

``` purescript
newtype GroupNameType
  = GroupNameType String
```

##### Instances
``` purescript
Newtype GroupNameType _
Generic GroupNameType _
Show GroupNameType
Decode GroupNameType
Encode GroupNameType
```

#### `GroupType`

``` purescript
newtype GroupType
  = GroupType { "GroupName" :: NullOrUndefined (GroupNameType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }
```

<p>The group type.</p>

##### Instances
``` purescript
Newtype GroupType _
Generic GroupType _
Show GroupType
Decode GroupType
Encode GroupType
```

#### `newGroupType`

``` purescript
newGroupType :: GroupType
```

Constructs GroupType from required parameters

#### `newGroupType'`

``` purescript
newGroupType' :: ({ "GroupName" :: NullOrUndefined (GroupNameType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) } -> { "GroupName" :: NullOrUndefined (GroupNameType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }) -> GroupType
```

Constructs GroupType's fields from required parameters

#### `HexStringType`

``` purescript
newtype HexStringType
  = HexStringType String
```

##### Instances
``` purescript
Newtype HexStringType _
Generic HexStringType _
Show HexStringType
Decode HexStringType
Encode HexStringType
```

#### `HttpHeader`

``` purescript
newtype HttpHeader
  = HttpHeader { headerName :: NullOrUndefined (StringType), headerValue :: NullOrUndefined (StringType) }
```

<p>The HTTP header.</p>

##### Instances
``` purescript
Newtype HttpHeader _
Generic HttpHeader _
Show HttpHeader
Decode HttpHeader
Encode HttpHeader
```

#### `newHttpHeader`

``` purescript
newHttpHeader :: HttpHeader
```

Constructs HttpHeader from required parameters

#### `newHttpHeader'`

``` purescript
newHttpHeader' :: ({ headerName :: NullOrUndefined (StringType), headerValue :: NullOrUndefined (StringType) } -> { headerName :: NullOrUndefined (StringType), headerValue :: NullOrUndefined (StringType) }) -> HttpHeader
```

Constructs HttpHeader's fields from required parameters

#### `HttpHeaderList`

``` purescript
newtype HttpHeaderList
  = HttpHeaderList (Array HttpHeader)
```

##### Instances
``` purescript
Newtype HttpHeaderList _
Generic HttpHeaderList _
Show HttpHeaderList
Decode HttpHeaderList
Encode HttpHeaderList
```

#### `IdentityProviderType`

``` purescript
newtype IdentityProviderType
  = IdentityProviderType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }
```

<p>A container for information about an identity provider.</p>

##### Instances
``` purescript
Newtype IdentityProviderType _
Generic IdentityProviderType _
Show IdentityProviderType
Decode IdentityProviderType
Encode IdentityProviderType
```

#### `newIdentityProviderType`

``` purescript
newIdentityProviderType :: IdentityProviderType
```

Constructs IdentityProviderType from required parameters

#### `newIdentityProviderType'`

``` purescript
newIdentityProviderType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }) -> IdentityProviderType
```

Constructs IdentityProviderType's fields from required parameters

#### `IdentityProviderTypeType`

``` purescript
newtype IdentityProviderTypeType
  = IdentityProviderTypeType String
```

##### Instances
``` purescript
Newtype IdentityProviderTypeType _
Generic IdentityProviderTypeType _
Show IdentityProviderTypeType
Decode IdentityProviderTypeType
Encode IdentityProviderTypeType
```

#### `IdpIdentifierType`

``` purescript
newtype IdpIdentifierType
  = IdpIdentifierType String
```

##### Instances
``` purescript
Newtype IdpIdentifierType _
Generic IdpIdentifierType _
Show IdpIdentifierType
Decode IdpIdentifierType
Encode IdpIdentifierType
```

#### `IdpIdentifiersListType`

``` purescript
newtype IdpIdentifiersListType
  = IdpIdentifiersListType (Array IdpIdentifierType)
```

##### Instances
``` purescript
Newtype IdpIdentifiersListType _
Generic IdpIdentifiersListType _
Show IdpIdentifiersListType
Decode IdpIdentifiersListType
Encode IdpIdentifiersListType
```

#### `ImageFileType`

``` purescript
newtype ImageFileType
  = ImageFileType String
```

##### Instances
``` purescript
Newtype ImageFileType _
Generic ImageFileType _
Show ImageFileType
Decode ImageFileType
Encode ImageFileType
```

#### `ImageUrlType`

``` purescript
newtype ImageUrlType
  = ImageUrlType String
```

##### Instances
``` purescript
Newtype ImageUrlType _
Generic ImageUrlType _
Show ImageUrlType
Decode ImageUrlType
Encode ImageUrlType
```

#### `InitiateAuthRequest`

``` purescript
newtype InitiateAuthRequest
  = InitiateAuthRequest { "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "ClientId" :: ClientIdType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }
```

<p>Initiates the authentication request.</p>

##### Instances
``` purescript
Newtype InitiateAuthRequest _
Generic InitiateAuthRequest _
Show InitiateAuthRequest
Decode InitiateAuthRequest
Encode InitiateAuthRequest
```

#### `newInitiateAuthRequest`

``` purescript
newInitiateAuthRequest :: AuthFlowType -> ClientIdType -> InitiateAuthRequest
```

Constructs InitiateAuthRequest from required parameters

#### `newInitiateAuthRequest'`

``` purescript
newInitiateAuthRequest' :: AuthFlowType -> ClientIdType -> ({ "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "ClientId" :: ClientIdType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) } -> { "AuthFlow" :: AuthFlowType, "AuthParameters" :: NullOrUndefined (AuthParametersType), "ClientMetadata" :: NullOrUndefined (ClientMetadataType), "ClientId" :: ClientIdType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }) -> InitiateAuthRequest
```

Constructs InitiateAuthRequest's fields from required parameters

#### `InitiateAuthResponse`

``` purescript
newtype InitiateAuthResponse
  = InitiateAuthResponse { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }
```

<p>Initiates the authentication response.</p>

##### Instances
``` purescript
Newtype InitiateAuthResponse _
Generic InitiateAuthResponse _
Show InitiateAuthResponse
Decode InitiateAuthResponse
Encode InitiateAuthResponse
```

#### `newInitiateAuthResponse`

``` purescript
newInitiateAuthResponse :: InitiateAuthResponse
```

Constructs InitiateAuthResponse from required parameters

#### `newInitiateAuthResponse'`

``` purescript
newInitiateAuthResponse' :: ({ "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) } -> { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }) -> InitiateAuthResponse
```

Constructs InitiateAuthResponse's fields from required parameters

#### `IntegerType`

``` purescript
newtype IntegerType
  = IntegerType Int
```

##### Instances
``` purescript
Newtype IntegerType _
Generic IntegerType _
Show IntegerType
Decode IntegerType
Encode IntegerType
```

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when Amazon Cognito encounters an internal error.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidEmailRoleAccessPolicyException`

``` purescript
newtype InvalidEmailRoleAccessPolicyException
  = InvalidEmailRoleAccessPolicyException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>

##### Instances
``` purescript
Newtype InvalidEmailRoleAccessPolicyException _
Generic InvalidEmailRoleAccessPolicyException _
Show InvalidEmailRoleAccessPolicyException
Decode InvalidEmailRoleAccessPolicyException
Encode InvalidEmailRoleAccessPolicyException
```

#### `newInvalidEmailRoleAccessPolicyException`

``` purescript
newInvalidEmailRoleAccessPolicyException :: InvalidEmailRoleAccessPolicyException
```

Constructs InvalidEmailRoleAccessPolicyException from required parameters

#### `newInvalidEmailRoleAccessPolicyException'`

``` purescript
newInvalidEmailRoleAccessPolicyException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidEmailRoleAccessPolicyException
```

Constructs InvalidEmailRoleAccessPolicyException's fields from required parameters

#### `InvalidLambdaResponseException`

``` purescript
newtype InvalidLambdaResponseException
  = InvalidLambdaResponseException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>

##### Instances
``` purescript
Newtype InvalidLambdaResponseException _
Generic InvalidLambdaResponseException _
Show InvalidLambdaResponseException
Decode InvalidLambdaResponseException
Encode InvalidLambdaResponseException
```

#### `newInvalidLambdaResponseException`

``` purescript
newInvalidLambdaResponseException :: InvalidLambdaResponseException
```

Constructs InvalidLambdaResponseException from required parameters

#### `newInvalidLambdaResponseException'`

``` purescript
newInvalidLambdaResponseException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidLambdaResponseException
```

Constructs InvalidLambdaResponseException's fields from required parameters

#### `InvalidOAuthFlowException`

``` purescript
newtype InvalidOAuthFlowException
  = InvalidOAuthFlowException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the specified OAuth flow is invalid.</p>

##### Instances
``` purescript
Newtype InvalidOAuthFlowException _
Generic InvalidOAuthFlowException _
Show InvalidOAuthFlowException
Decode InvalidOAuthFlowException
Encode InvalidOAuthFlowException
```

#### `newInvalidOAuthFlowException`

``` purescript
newInvalidOAuthFlowException :: InvalidOAuthFlowException
```

Constructs InvalidOAuthFlowException from required parameters

#### `newInvalidOAuthFlowException'`

``` purescript
newInvalidOAuthFlowException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidOAuthFlowException
```

Constructs InvalidOAuthFlowException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidPasswordException`

``` purescript
newtype InvalidPasswordException
  = InvalidPasswordException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>

##### Instances
``` purescript
Newtype InvalidPasswordException _
Generic InvalidPasswordException _
Show InvalidPasswordException
Decode InvalidPasswordException
Encode InvalidPasswordException
```

#### `newInvalidPasswordException`

``` purescript
newInvalidPasswordException :: InvalidPasswordException
```

Constructs InvalidPasswordException from required parameters

#### `newInvalidPasswordException'`

``` purescript
newInvalidPasswordException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidPasswordException
```

Constructs InvalidPasswordException's fields from required parameters

#### `InvalidSmsRoleAccessPolicyException`

``` purescript
newtype InvalidSmsRoleAccessPolicyException
  = InvalidSmsRoleAccessPolicyException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>

##### Instances
``` purescript
Newtype InvalidSmsRoleAccessPolicyException _
Generic InvalidSmsRoleAccessPolicyException _
Show InvalidSmsRoleAccessPolicyException
Decode InvalidSmsRoleAccessPolicyException
Encode InvalidSmsRoleAccessPolicyException
```

#### `newInvalidSmsRoleAccessPolicyException`

``` purescript
newInvalidSmsRoleAccessPolicyException :: InvalidSmsRoleAccessPolicyException
```

Constructs InvalidSmsRoleAccessPolicyException from required parameters

#### `newInvalidSmsRoleAccessPolicyException'`

``` purescript
newInvalidSmsRoleAccessPolicyException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidSmsRoleAccessPolicyException
```

Constructs InvalidSmsRoleAccessPolicyException's fields from required parameters

#### `InvalidSmsRoleTrustRelationshipException`

``` purescript
newtype InvalidSmsRoleTrustRelationshipException
  = InvalidSmsRoleTrustRelationshipException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>

##### Instances
``` purescript
Newtype InvalidSmsRoleTrustRelationshipException _
Generic InvalidSmsRoleTrustRelationshipException _
Show InvalidSmsRoleTrustRelationshipException
Decode InvalidSmsRoleTrustRelationshipException
Encode InvalidSmsRoleTrustRelationshipException
```

#### `newInvalidSmsRoleTrustRelationshipException`

``` purescript
newInvalidSmsRoleTrustRelationshipException :: InvalidSmsRoleTrustRelationshipException
```

Constructs InvalidSmsRoleTrustRelationshipException from required parameters

#### `newInvalidSmsRoleTrustRelationshipException'`

``` purescript
newInvalidSmsRoleTrustRelationshipException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidSmsRoleTrustRelationshipException
```

Constructs InvalidSmsRoleTrustRelationshipException's fields from required parameters

#### `InvalidUserPoolConfigurationException`

``` purescript
newtype InvalidUserPoolConfigurationException
  = InvalidUserPoolConfigurationException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the user pool configuration is invalid.</p>

##### Instances
``` purescript
Newtype InvalidUserPoolConfigurationException _
Generic InvalidUserPoolConfigurationException _
Show InvalidUserPoolConfigurationException
Decode InvalidUserPoolConfigurationException
Encode InvalidUserPoolConfigurationException
```

#### `newInvalidUserPoolConfigurationException`

``` purescript
newInvalidUserPoolConfigurationException :: InvalidUserPoolConfigurationException
```

Constructs InvalidUserPoolConfigurationException from required parameters

#### `newInvalidUserPoolConfigurationException'`

``` purescript
newInvalidUserPoolConfigurationException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> InvalidUserPoolConfigurationException
```

Constructs InvalidUserPoolConfigurationException's fields from required parameters

#### `LambdaConfigType`

``` purescript
newtype LambdaConfigType
  = LambdaConfigType { "PreSignUp" :: NullOrUndefined (ArnType), "CustomMessage" :: NullOrUndefined (ArnType), "PostConfirmation" :: NullOrUndefined (ArnType), "PreAuthentication" :: NullOrUndefined (ArnType), "PostAuthentication" :: NullOrUndefined (ArnType), "DefineAuthChallenge" :: NullOrUndefined (ArnType), "CreateAuthChallenge" :: NullOrUndefined (ArnType), "VerifyAuthChallengeResponse" :: NullOrUndefined (ArnType), "PreTokenGeneration" :: NullOrUndefined (ArnType), "UserMigration" :: NullOrUndefined (ArnType) }
```

<p>Specifies the configuration for AWS Lambda triggers.</p>

##### Instances
``` purescript
Newtype LambdaConfigType _
Generic LambdaConfigType _
Show LambdaConfigType
Decode LambdaConfigType
Encode LambdaConfigType
```

#### `newLambdaConfigType`

``` purescript
newLambdaConfigType :: LambdaConfigType
```

Constructs LambdaConfigType from required parameters

#### `newLambdaConfigType'`

``` purescript
newLambdaConfigType' :: ({ "PreSignUp" :: NullOrUndefined (ArnType), "CustomMessage" :: NullOrUndefined (ArnType), "PostConfirmation" :: NullOrUndefined (ArnType), "PreAuthentication" :: NullOrUndefined (ArnType), "PostAuthentication" :: NullOrUndefined (ArnType), "DefineAuthChallenge" :: NullOrUndefined (ArnType), "CreateAuthChallenge" :: NullOrUndefined (ArnType), "VerifyAuthChallengeResponse" :: NullOrUndefined (ArnType), "PreTokenGeneration" :: NullOrUndefined (ArnType), "UserMigration" :: NullOrUndefined (ArnType) } -> { "PreSignUp" :: NullOrUndefined (ArnType), "CustomMessage" :: NullOrUndefined (ArnType), "PostConfirmation" :: NullOrUndefined (ArnType), "PreAuthentication" :: NullOrUndefined (ArnType), "PostAuthentication" :: NullOrUndefined (ArnType), "DefineAuthChallenge" :: NullOrUndefined (ArnType), "CreateAuthChallenge" :: NullOrUndefined (ArnType), "VerifyAuthChallengeResponse" :: NullOrUndefined (ArnType), "PreTokenGeneration" :: NullOrUndefined (ArnType), "UserMigration" :: NullOrUndefined (ArnType) }) -> LambdaConfigType
```

Constructs LambdaConfigType's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListDevicesRequest`

``` purescript
newtype ListDevicesRequest
  = ListDevicesRequest { "AccessToken" :: TokenModelType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }
```

<p>Represents the request to list the devices.</p>

##### Instances
``` purescript
Newtype ListDevicesRequest _
Generic ListDevicesRequest _
Show ListDevicesRequest
Decode ListDevicesRequest
Encode ListDevicesRequest
```

#### `newListDevicesRequest`

``` purescript
newListDevicesRequest :: TokenModelType -> ListDevicesRequest
```

Constructs ListDevicesRequest from required parameters

#### `newListDevicesRequest'`

``` purescript
newListDevicesRequest' :: TokenModelType -> ({ "AccessToken" :: TokenModelType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) } -> { "AccessToken" :: TokenModelType, "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }) -> ListDevicesRequest
```

Constructs ListDevicesRequest's fields from required parameters

#### `ListDevicesResponse`

``` purescript
newtype ListDevicesResponse
  = ListDevicesResponse { "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }
```

<p>Represents the response to list devices.</p>

##### Instances
``` purescript
Newtype ListDevicesResponse _
Generic ListDevicesResponse _
Show ListDevicesResponse
Decode ListDevicesResponse
Encode ListDevicesResponse
```

#### `newListDevicesResponse`

``` purescript
newListDevicesResponse :: ListDevicesResponse
```

Constructs ListDevicesResponse from required parameters

#### `newListDevicesResponse'`

``` purescript
newListDevicesResponse' :: ({ "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) } -> { "Devices" :: NullOrUndefined (DeviceListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }) -> ListDevicesResponse
```

Constructs ListDevicesResponse's fields from required parameters

#### `ListGroupsRequest`

``` purescript
newtype ListGroupsRequest
  = ListGroupsRequest { "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype ListGroupsRequest _
Generic ListGroupsRequest _
Show ListGroupsRequest
Decode ListGroupsRequest
Encode ListGroupsRequest
```

#### `newListGroupsRequest`

``` purescript
newListGroupsRequest :: UserPoolIdType -> ListGroupsRequest
```

Constructs ListGroupsRequest from required parameters

#### `newListGroupsRequest'`

``` purescript
newListGroupsRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "UserPoolId" :: UserPoolIdType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListGroupsRequest
```

Constructs ListGroupsRequest's fields from required parameters

#### `ListGroupsResponse`

``` purescript
newtype ListGroupsResponse
  = ListGroupsResponse { "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype ListGroupsResponse _
Generic ListGroupsResponse _
Show ListGroupsResponse
Decode ListGroupsResponse
Encode ListGroupsResponse
```

#### `newListGroupsResponse`

``` purescript
newListGroupsResponse :: ListGroupsResponse
```

Constructs ListGroupsResponse from required parameters

#### `newListGroupsResponse'`

``` purescript
newListGroupsResponse' :: ({ "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "Groups" :: NullOrUndefined (GroupListType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListGroupsResponse
```

Constructs ListGroupsResponse's fields from required parameters

#### `ListIdentityProvidersRequest`

``` purescript
newtype ListIdentityProvidersRequest
  = ListIdentityProvidersRequest { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListProvidersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) }
```

##### Instances
``` purescript
Newtype ListIdentityProvidersRequest _
Generic ListIdentityProvidersRequest _
Show ListIdentityProvidersRequest
Decode ListIdentityProvidersRequest
Encode ListIdentityProvidersRequest
```

#### `newListIdentityProvidersRequest`

``` purescript
newListIdentityProvidersRequest :: UserPoolIdType -> ListIdentityProvidersRequest
```

Constructs ListIdentityProvidersRequest from required parameters

#### `newListIdentityProvidersRequest'`

``` purescript
newListIdentityProvidersRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListProvidersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) } -> { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListProvidersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) }) -> ListIdentityProvidersRequest
```

Constructs ListIdentityProvidersRequest's fields from required parameters

#### `ListIdentityProvidersResponse`

``` purescript
newtype ListIdentityProvidersResponse
  = ListIdentityProvidersResponse { "Providers" :: ProvidersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) }
```

##### Instances
``` purescript
Newtype ListIdentityProvidersResponse _
Generic ListIdentityProvidersResponse _
Show ListIdentityProvidersResponse
Decode ListIdentityProvidersResponse
Encode ListIdentityProvidersResponse
```

#### `newListIdentityProvidersResponse`

``` purescript
newListIdentityProvidersResponse :: ProvidersListType -> ListIdentityProvidersResponse
```

Constructs ListIdentityProvidersResponse from required parameters

#### `newListIdentityProvidersResponse'`

``` purescript
newListIdentityProvidersResponse' :: ProvidersListType -> ({ "Providers" :: ProvidersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) } -> { "Providers" :: ProvidersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) }) -> ListIdentityProvidersResponse
```

Constructs ListIdentityProvidersResponse's fields from required parameters

#### `ListOfStringTypes`

``` purescript
newtype ListOfStringTypes
  = ListOfStringTypes (Array StringType)
```

##### Instances
``` purescript
Newtype ListOfStringTypes _
Generic ListOfStringTypes _
Show ListOfStringTypes
Decode ListOfStringTypes
Encode ListOfStringTypes
```

#### `ListProvidersLimitType`

``` purescript
newtype ListProvidersLimitType
  = ListProvidersLimitType Int
```

##### Instances
``` purescript
Newtype ListProvidersLimitType _
Generic ListProvidersLimitType _
Show ListProvidersLimitType
Decode ListProvidersLimitType
Encode ListProvidersLimitType
```

#### `ListResourceServersLimitType`

``` purescript
newtype ListResourceServersLimitType
  = ListResourceServersLimitType Int
```

##### Instances
``` purescript
Newtype ListResourceServersLimitType _
Generic ListResourceServersLimitType _
Show ListResourceServersLimitType
Decode ListResourceServersLimitType
Encode ListResourceServersLimitType
```

#### `ListResourceServersRequest`

``` purescript
newtype ListResourceServersRequest
  = ListResourceServersRequest { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListResourceServersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) }
```

##### Instances
``` purescript
Newtype ListResourceServersRequest _
Generic ListResourceServersRequest _
Show ListResourceServersRequest
Decode ListResourceServersRequest
Encode ListResourceServersRequest
```

#### `newListResourceServersRequest`

``` purescript
newListResourceServersRequest :: UserPoolIdType -> ListResourceServersRequest
```

Constructs ListResourceServersRequest from required parameters

#### `newListResourceServersRequest'`

``` purescript
newListResourceServersRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListResourceServersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) } -> { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (ListResourceServersLimitType), "NextToken" :: NullOrUndefined (PaginationKeyType) }) -> ListResourceServersRequest
```

Constructs ListResourceServersRequest's fields from required parameters

#### `ListResourceServersResponse`

``` purescript
newtype ListResourceServersResponse
  = ListResourceServersResponse { "ResourceServers" :: ResourceServersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) }
```

##### Instances
``` purescript
Newtype ListResourceServersResponse _
Generic ListResourceServersResponse _
Show ListResourceServersResponse
Decode ListResourceServersResponse
Encode ListResourceServersResponse
```

#### `newListResourceServersResponse`

``` purescript
newListResourceServersResponse :: ResourceServersListType -> ListResourceServersResponse
```

Constructs ListResourceServersResponse from required parameters

#### `newListResourceServersResponse'`

``` purescript
newListResourceServersResponse' :: ResourceServersListType -> ({ "ResourceServers" :: ResourceServersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) } -> { "ResourceServers" :: ResourceServersListType, "NextToken" :: NullOrUndefined (PaginationKeyType) }) -> ListResourceServersResponse
```

Constructs ListResourceServersResponse's fields from required parameters

#### `ListUserImportJobsRequest`

``` purescript
newtype ListUserImportJobsRequest
  = ListUserImportJobsRequest { "UserPoolId" :: UserPoolIdType, "MaxResults" :: PoolQueryLimitType, "PaginationToken" :: NullOrUndefined (PaginationKeyType) }
```

<p>Represents the request to list the user import jobs.</p>

##### Instances
``` purescript
Newtype ListUserImportJobsRequest _
Generic ListUserImportJobsRequest _
Show ListUserImportJobsRequest
Decode ListUserImportJobsRequest
Encode ListUserImportJobsRequest
```

#### `newListUserImportJobsRequest`

``` purescript
newListUserImportJobsRequest :: PoolQueryLimitType -> UserPoolIdType -> ListUserImportJobsRequest
```

Constructs ListUserImportJobsRequest from required parameters

#### `newListUserImportJobsRequest'`

``` purescript
newListUserImportJobsRequest' :: PoolQueryLimitType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "MaxResults" :: PoolQueryLimitType, "PaginationToken" :: NullOrUndefined (PaginationKeyType) } -> { "UserPoolId" :: UserPoolIdType, "MaxResults" :: PoolQueryLimitType, "PaginationToken" :: NullOrUndefined (PaginationKeyType) }) -> ListUserImportJobsRequest
```

Constructs ListUserImportJobsRequest's fields from required parameters

#### `ListUserImportJobsResponse`

``` purescript
newtype ListUserImportJobsResponse
  = ListUserImportJobsResponse { "UserImportJobs" :: NullOrUndefined (UserImportJobsListType), "PaginationToken" :: NullOrUndefined (PaginationKeyType) }
```

<p>Represents the response from the server to the request to list the user import jobs.</p>

##### Instances
``` purescript
Newtype ListUserImportJobsResponse _
Generic ListUserImportJobsResponse _
Show ListUserImportJobsResponse
Decode ListUserImportJobsResponse
Encode ListUserImportJobsResponse
```

#### `newListUserImportJobsResponse`

``` purescript
newListUserImportJobsResponse :: ListUserImportJobsResponse
```

Constructs ListUserImportJobsResponse from required parameters

#### `newListUserImportJobsResponse'`

``` purescript
newListUserImportJobsResponse' :: ({ "UserImportJobs" :: NullOrUndefined (UserImportJobsListType), "PaginationToken" :: NullOrUndefined (PaginationKeyType) } -> { "UserImportJobs" :: NullOrUndefined (UserImportJobsListType), "PaginationToken" :: NullOrUndefined (PaginationKeyType) }) -> ListUserImportJobsResponse
```

Constructs ListUserImportJobsResponse's fields from required parameters

#### `ListUserPoolClientsRequest`

``` purescript
newtype ListUserPoolClientsRequest
  = ListUserPoolClientsRequest { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>Represents the request to list the user pool clients.</p>

##### Instances
``` purescript
Newtype ListUserPoolClientsRequest _
Generic ListUserPoolClientsRequest _
Show ListUserPoolClientsRequest
Decode ListUserPoolClientsRequest
Encode ListUserPoolClientsRequest
```

#### `newListUserPoolClientsRequest`

``` purescript
newListUserPoolClientsRequest :: UserPoolIdType -> ListUserPoolClientsRequest
```

Constructs ListUserPoolClientsRequest from required parameters

#### `newListUserPoolClientsRequest'`

``` purescript
newListUserPoolClientsRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "UserPoolId" :: UserPoolIdType, "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListUserPoolClientsRequest
```

Constructs ListUserPoolClientsRequest's fields from required parameters

#### `ListUserPoolClientsResponse`

``` purescript
newtype ListUserPoolClientsResponse
  = ListUserPoolClientsResponse { "UserPoolClients" :: NullOrUndefined (UserPoolClientListType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>Represents the response from the server that lists user pool clients.</p>

##### Instances
``` purescript
Newtype ListUserPoolClientsResponse _
Generic ListUserPoolClientsResponse _
Show ListUserPoolClientsResponse
Decode ListUserPoolClientsResponse
Encode ListUserPoolClientsResponse
```

#### `newListUserPoolClientsResponse`

``` purescript
newListUserPoolClientsResponse :: ListUserPoolClientsResponse
```

Constructs ListUserPoolClientsResponse from required parameters

#### `newListUserPoolClientsResponse'`

``` purescript
newListUserPoolClientsResponse' :: ({ "UserPoolClients" :: NullOrUndefined (UserPoolClientListType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "UserPoolClients" :: NullOrUndefined (UserPoolClientListType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListUserPoolClientsResponse
```

Constructs ListUserPoolClientsResponse's fields from required parameters

#### `ListUserPoolsRequest`

``` purescript
newtype ListUserPoolsRequest
  = ListUserPoolsRequest { "NextToken" :: NullOrUndefined (PaginationKeyType), "MaxResults" :: PoolQueryLimitType }
```

<p>Represents the request to list user pools.</p>

##### Instances
``` purescript
Newtype ListUserPoolsRequest _
Generic ListUserPoolsRequest _
Show ListUserPoolsRequest
Decode ListUserPoolsRequest
Encode ListUserPoolsRequest
```

#### `newListUserPoolsRequest`

``` purescript
newListUserPoolsRequest :: PoolQueryLimitType -> ListUserPoolsRequest
```

Constructs ListUserPoolsRequest from required parameters

#### `newListUserPoolsRequest'`

``` purescript
newListUserPoolsRequest' :: PoolQueryLimitType -> ({ "NextToken" :: NullOrUndefined (PaginationKeyType), "MaxResults" :: PoolQueryLimitType } -> { "NextToken" :: NullOrUndefined (PaginationKeyType), "MaxResults" :: PoolQueryLimitType }) -> ListUserPoolsRequest
```

Constructs ListUserPoolsRequest's fields from required parameters

#### `ListUserPoolsResponse`

``` purescript
newtype ListUserPoolsResponse
  = ListUserPoolsResponse { "UserPools" :: NullOrUndefined (UserPoolListType), "NextToken" :: NullOrUndefined (PaginationKeyType) }
```

<p>Represents the response to list user pools.</p>

##### Instances
``` purescript
Newtype ListUserPoolsResponse _
Generic ListUserPoolsResponse _
Show ListUserPoolsResponse
Decode ListUserPoolsResponse
Encode ListUserPoolsResponse
```

#### `newListUserPoolsResponse`

``` purescript
newListUserPoolsResponse :: ListUserPoolsResponse
```

Constructs ListUserPoolsResponse from required parameters

#### `newListUserPoolsResponse'`

``` purescript
newListUserPoolsResponse' :: ({ "UserPools" :: NullOrUndefined (UserPoolListType), "NextToken" :: NullOrUndefined (PaginationKeyType) } -> { "UserPools" :: NullOrUndefined (UserPoolListType), "NextToken" :: NullOrUndefined (PaginationKeyType) }) -> ListUserPoolsResponse
```

Constructs ListUserPoolsResponse's fields from required parameters

#### `ListUsersInGroupRequest`

``` purescript
newtype ListUsersInGroupRequest
  = ListUsersInGroupRequest { "UserPoolId" :: UserPoolIdType, "GroupName" :: GroupNameType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype ListUsersInGroupRequest _
Generic ListUsersInGroupRequest _
Show ListUsersInGroupRequest
Decode ListUsersInGroupRequest
Encode ListUsersInGroupRequest
```

#### `newListUsersInGroupRequest`

``` purescript
newListUsersInGroupRequest :: GroupNameType -> UserPoolIdType -> ListUsersInGroupRequest
```

Constructs ListUsersInGroupRequest from required parameters

#### `newListUsersInGroupRequest'`

``` purescript
newListUsersInGroupRequest' :: GroupNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "GroupName" :: GroupNameType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "UserPoolId" :: UserPoolIdType, "GroupName" :: GroupNameType, "Limit" :: NullOrUndefined (QueryLimitType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListUsersInGroupRequest
```

Constructs ListUsersInGroupRequest's fields from required parameters

#### `ListUsersInGroupResponse`

``` purescript
newtype ListUsersInGroupResponse
  = ListUsersInGroupResponse { "Users" :: NullOrUndefined (UsersListType), "NextToken" :: NullOrUndefined (PaginationKey) }
```

##### Instances
``` purescript
Newtype ListUsersInGroupResponse _
Generic ListUsersInGroupResponse _
Show ListUsersInGroupResponse
Decode ListUsersInGroupResponse
Encode ListUsersInGroupResponse
```

#### `newListUsersInGroupResponse`

``` purescript
newListUsersInGroupResponse :: ListUsersInGroupResponse
```

Constructs ListUsersInGroupResponse from required parameters

#### `newListUsersInGroupResponse'`

``` purescript
newListUsersInGroupResponse' :: ({ "Users" :: NullOrUndefined (UsersListType), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "Users" :: NullOrUndefined (UsersListType), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListUsersInGroupResponse
```

Constructs ListUsersInGroupResponse's fields from required parameters

#### `ListUsersRequest`

``` purescript
newtype ListUsersRequest
  = ListUsersRequest { "UserPoolId" :: UserPoolIdType, "AttributesToGet" :: NullOrUndefined (SearchedAttributeNamesListType), "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType), "Filter" :: NullOrUndefined (UserFilterType) }
```

<p>Represents the request to list users.</p>

##### Instances
``` purescript
Newtype ListUsersRequest _
Generic ListUsersRequest _
Show ListUsersRequest
Decode ListUsersRequest
Encode ListUsersRequest
```

#### `newListUsersRequest`

``` purescript
newListUsersRequest :: UserPoolIdType -> ListUsersRequest
```

Constructs ListUsersRequest from required parameters

#### `newListUsersRequest'`

``` purescript
newListUsersRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "AttributesToGet" :: NullOrUndefined (SearchedAttributeNamesListType), "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType), "Filter" :: NullOrUndefined (UserFilterType) } -> { "UserPoolId" :: UserPoolIdType, "AttributesToGet" :: NullOrUndefined (SearchedAttributeNamesListType), "Limit" :: NullOrUndefined (QueryLimitType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType), "Filter" :: NullOrUndefined (UserFilterType) }) -> ListUsersRequest
```

Constructs ListUsersRequest's fields from required parameters

#### `ListUsersResponse`

``` purescript
newtype ListUsersResponse
  = ListUsersResponse { "Users" :: NullOrUndefined (UsersListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }
```

<p>The response from the request to list users.</p>

##### Instances
``` purescript
Newtype ListUsersResponse _
Generic ListUsersResponse _
Show ListUsersResponse
Decode ListUsersResponse
Encode ListUsersResponse
```

#### `newListUsersResponse`

``` purescript
newListUsersResponse :: ListUsersResponse
```

Constructs ListUsersResponse from required parameters

#### `newListUsersResponse'`

``` purescript
newListUsersResponse' :: ({ "Users" :: NullOrUndefined (UsersListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) } -> { "Users" :: NullOrUndefined (UsersListType), "PaginationToken" :: NullOrUndefined (SearchPaginationTokenType) }) -> ListUsersResponse
```

Constructs ListUsersResponse's fields from required parameters

#### `LogoutURLsListType`

``` purescript
newtype LogoutURLsListType
  = LogoutURLsListType (Array RedirectUrlType)
```

##### Instances
``` purescript
Newtype LogoutURLsListType _
Generic LogoutURLsListType _
Show LogoutURLsListType
Decode LogoutURLsListType
Encode LogoutURLsListType
```

#### `LongType`

``` purescript
newtype LongType
  = LongType Number
```

##### Instances
``` purescript
Newtype LongType _
Generic LongType _
Show LongType
Decode LongType
Encode LongType
```

#### `MFAMethodNotFoundException`

``` purescript
newtype MFAMethodNotFoundException
  = MFAMethodNotFoundException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>

##### Instances
``` purescript
Newtype MFAMethodNotFoundException _
Generic MFAMethodNotFoundException _
Show MFAMethodNotFoundException
Decode MFAMethodNotFoundException
Encode MFAMethodNotFoundException
```

#### `newMFAMethodNotFoundException`

``` purescript
newMFAMethodNotFoundException :: MFAMethodNotFoundException
```

Constructs MFAMethodNotFoundException from required parameters

#### `newMFAMethodNotFoundException'`

``` purescript
newMFAMethodNotFoundException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> MFAMethodNotFoundException
```

Constructs MFAMethodNotFoundException's fields from required parameters

#### `MFAOptionListType`

``` purescript
newtype MFAOptionListType
  = MFAOptionListType (Array MFAOptionType)
```

##### Instances
``` purescript
Newtype MFAOptionListType _
Generic MFAOptionListType _
Show MFAOptionListType
Decode MFAOptionListType
Encode MFAOptionListType
```

#### `MFAOptionType`

``` purescript
newtype MFAOptionType
  = MFAOptionType { "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) }
```

<p>Specifies the different settings for multi-factor authentication (MFA).</p>

##### Instances
``` purescript
Newtype MFAOptionType _
Generic MFAOptionType _
Show MFAOptionType
Decode MFAOptionType
Encode MFAOptionType
```

#### `newMFAOptionType`

``` purescript
newMFAOptionType :: MFAOptionType
```

Constructs MFAOptionType from required parameters

#### `newMFAOptionType'`

``` purescript
newMFAOptionType' :: ({ "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) } -> { "DeliveryMedium" :: NullOrUndefined (DeliveryMediumType), "AttributeName" :: NullOrUndefined (AttributeNameType) }) -> MFAOptionType
```

Constructs MFAOptionType's fields from required parameters

#### `MessageActionType`

``` purescript
newtype MessageActionType
  = MessageActionType String
```

##### Instances
``` purescript
Newtype MessageActionType _
Generic MessageActionType _
Show MessageActionType
Decode MessageActionType
Encode MessageActionType
```

#### `MessageTemplateType`

``` purescript
newtype MessageTemplateType
  = MessageTemplateType { "SMSMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType) }
```

<p>The message template structure.</p>

##### Instances
``` purescript
Newtype MessageTemplateType _
Generic MessageTemplateType _
Show MessageTemplateType
Decode MessageTemplateType
Encode MessageTemplateType
```

#### `newMessageTemplateType`

``` purescript
newMessageTemplateType :: MessageTemplateType
```

Constructs MessageTemplateType from required parameters

#### `newMessageTemplateType'`

``` purescript
newMessageTemplateType' :: ({ "SMSMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType) } -> { "SMSMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType) }) -> MessageTemplateType
```

Constructs MessageTemplateType's fields from required parameters

#### `MessageType`

``` purescript
newtype MessageType
  = MessageType String
```

##### Instances
``` purescript
Newtype MessageType _
Generic MessageType _
Show MessageType
Decode MessageType
Encode MessageType
```

#### `NewDeviceMetadataType`

``` purescript
newtype NewDeviceMetadataType
  = NewDeviceMetadataType { "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceGroupKey" :: NullOrUndefined (StringType) }
```

<p>The new device metadata type.</p>

##### Instances
``` purescript
Newtype NewDeviceMetadataType _
Generic NewDeviceMetadataType _
Show NewDeviceMetadataType
Decode NewDeviceMetadataType
Encode NewDeviceMetadataType
```

#### `newNewDeviceMetadataType`

``` purescript
newNewDeviceMetadataType :: NewDeviceMetadataType
```

Constructs NewDeviceMetadataType from required parameters

#### `newNewDeviceMetadataType'`

``` purescript
newNewDeviceMetadataType' :: ({ "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceGroupKey" :: NullOrUndefined (StringType) } -> { "DeviceKey" :: NullOrUndefined (DeviceKeyType), "DeviceGroupKey" :: NullOrUndefined (StringType) }) -> NewDeviceMetadataType
```

Constructs NewDeviceMetadataType's fields from required parameters

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user is not authorized.</p>

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `NotifyConfigurationType`

``` purescript
newtype NotifyConfigurationType
  = NotifyConfigurationType { "From" :: NullOrUndefined (StringType), "ReplyTo" :: NullOrUndefined (StringType), "SourceArn" :: ArnType, "BlockEmail" :: NullOrUndefined (NotifyEmailType), "NoActionEmail" :: NullOrUndefined (NotifyEmailType), "MfaEmail" :: NullOrUndefined (NotifyEmailType) }
```

<p>The notify configuration type.</p>

##### Instances
``` purescript
Newtype NotifyConfigurationType _
Generic NotifyConfigurationType _
Show NotifyConfigurationType
Decode NotifyConfigurationType
Encode NotifyConfigurationType
```

#### `newNotifyConfigurationType`

``` purescript
newNotifyConfigurationType :: ArnType -> NotifyConfigurationType
```

Constructs NotifyConfigurationType from required parameters

#### `newNotifyConfigurationType'`

``` purescript
newNotifyConfigurationType' :: ArnType -> ({ "From" :: NullOrUndefined (StringType), "ReplyTo" :: NullOrUndefined (StringType), "SourceArn" :: ArnType, "BlockEmail" :: NullOrUndefined (NotifyEmailType), "NoActionEmail" :: NullOrUndefined (NotifyEmailType), "MfaEmail" :: NullOrUndefined (NotifyEmailType) } -> { "From" :: NullOrUndefined (StringType), "ReplyTo" :: NullOrUndefined (StringType), "SourceArn" :: ArnType, "BlockEmail" :: NullOrUndefined (NotifyEmailType), "NoActionEmail" :: NullOrUndefined (NotifyEmailType), "MfaEmail" :: NullOrUndefined (NotifyEmailType) }) -> NotifyConfigurationType
```

Constructs NotifyConfigurationType's fields from required parameters

#### `NotifyEmailType`

``` purescript
newtype NotifyEmailType
  = NotifyEmailType { "Subject" :: EmailNotificationSubjectType, "HtmlBody" :: NullOrUndefined (EmailNotificationBodyType), "TextBody" :: NullOrUndefined (EmailNotificationBodyType) }
```

<p>The notify email type.</p>

##### Instances
``` purescript
Newtype NotifyEmailType _
Generic NotifyEmailType _
Show NotifyEmailType
Decode NotifyEmailType
Encode NotifyEmailType
```

#### `newNotifyEmailType`

``` purescript
newNotifyEmailType :: EmailNotificationSubjectType -> NotifyEmailType
```

Constructs NotifyEmailType from required parameters

#### `newNotifyEmailType'`

``` purescript
newNotifyEmailType' :: EmailNotificationSubjectType -> ({ "Subject" :: EmailNotificationSubjectType, "HtmlBody" :: NullOrUndefined (EmailNotificationBodyType), "TextBody" :: NullOrUndefined (EmailNotificationBodyType) } -> { "Subject" :: EmailNotificationSubjectType, "HtmlBody" :: NullOrUndefined (EmailNotificationBodyType), "TextBody" :: NullOrUndefined (EmailNotificationBodyType) }) -> NotifyEmailType
```

Constructs NotifyEmailType's fields from required parameters

#### `NumberAttributeConstraintsType`

``` purescript
newtype NumberAttributeConstraintsType
  = NumberAttributeConstraintsType { "MinValue" :: NullOrUndefined (StringType), "MaxValue" :: NullOrUndefined (StringType) }
```

<p>The minimum and maximum value of an attribute that is of the number data type.</p>

##### Instances
``` purescript
Newtype NumberAttributeConstraintsType _
Generic NumberAttributeConstraintsType _
Show NumberAttributeConstraintsType
Decode NumberAttributeConstraintsType
Encode NumberAttributeConstraintsType
```

#### `newNumberAttributeConstraintsType`

``` purescript
newNumberAttributeConstraintsType :: NumberAttributeConstraintsType
```

Constructs NumberAttributeConstraintsType from required parameters

#### `newNumberAttributeConstraintsType'`

``` purescript
newNumberAttributeConstraintsType' :: ({ "MinValue" :: NullOrUndefined (StringType), "MaxValue" :: NullOrUndefined (StringType) } -> { "MinValue" :: NullOrUndefined (StringType), "MaxValue" :: NullOrUndefined (StringType) }) -> NumberAttributeConstraintsType
```

Constructs NumberAttributeConstraintsType's fields from required parameters

#### `OAuthFlowType`

``` purescript
newtype OAuthFlowType
  = OAuthFlowType String
```

##### Instances
``` purescript
Newtype OAuthFlowType _
Generic OAuthFlowType _
Show OAuthFlowType
Decode OAuthFlowType
Encode OAuthFlowType
```

#### `OAuthFlowsType`

``` purescript
newtype OAuthFlowsType
  = OAuthFlowsType (Array OAuthFlowType)
```

##### Instances
``` purescript
Newtype OAuthFlowsType _
Generic OAuthFlowsType _
Show OAuthFlowsType
Decode OAuthFlowsType
Encode OAuthFlowsType
```

#### `PaginationKey`

``` purescript
newtype PaginationKey
  = PaginationKey String
```

##### Instances
``` purescript
Newtype PaginationKey _
Generic PaginationKey _
Show PaginationKey
Decode PaginationKey
Encode PaginationKey
```

#### `PaginationKeyType`

``` purescript
newtype PaginationKeyType
  = PaginationKeyType String
```

##### Instances
``` purescript
Newtype PaginationKeyType _
Generic PaginationKeyType _
Show PaginationKeyType
Decode PaginationKeyType
Encode PaginationKeyType
```

#### `PasswordPolicyMinLengthType`

``` purescript
newtype PasswordPolicyMinLengthType
  = PasswordPolicyMinLengthType Int
```

##### Instances
``` purescript
Newtype PasswordPolicyMinLengthType _
Generic PasswordPolicyMinLengthType _
Show PasswordPolicyMinLengthType
Decode PasswordPolicyMinLengthType
Encode PasswordPolicyMinLengthType
```

#### `PasswordPolicyType`

``` purescript
newtype PasswordPolicyType
  = PasswordPolicyType { "MinimumLength" :: NullOrUndefined (PasswordPolicyMinLengthType), "RequireUppercase" :: NullOrUndefined (BooleanType), "RequireLowercase" :: NullOrUndefined (BooleanType), "RequireNumbers" :: NullOrUndefined (BooleanType), "RequireSymbols" :: NullOrUndefined (BooleanType) }
```

<p>The password policy type.</p>

##### Instances
``` purescript
Newtype PasswordPolicyType _
Generic PasswordPolicyType _
Show PasswordPolicyType
Decode PasswordPolicyType
Encode PasswordPolicyType
```

#### `newPasswordPolicyType`

``` purescript
newPasswordPolicyType :: PasswordPolicyType
```

Constructs PasswordPolicyType from required parameters

#### `newPasswordPolicyType'`

``` purescript
newPasswordPolicyType' :: ({ "MinimumLength" :: NullOrUndefined (PasswordPolicyMinLengthType), "RequireUppercase" :: NullOrUndefined (BooleanType), "RequireLowercase" :: NullOrUndefined (BooleanType), "RequireNumbers" :: NullOrUndefined (BooleanType), "RequireSymbols" :: NullOrUndefined (BooleanType) } -> { "MinimumLength" :: NullOrUndefined (PasswordPolicyMinLengthType), "RequireUppercase" :: NullOrUndefined (BooleanType), "RequireLowercase" :: NullOrUndefined (BooleanType), "RequireNumbers" :: NullOrUndefined (BooleanType), "RequireSymbols" :: NullOrUndefined (BooleanType) }) -> PasswordPolicyType
```

Constructs PasswordPolicyType's fields from required parameters

#### `PasswordResetRequiredException`

``` purescript
newtype PasswordResetRequiredException
  = PasswordResetRequiredException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a password reset is required.</p>

##### Instances
``` purescript
Newtype PasswordResetRequiredException _
Generic PasswordResetRequiredException _
Show PasswordResetRequiredException
Decode PasswordResetRequiredException
Encode PasswordResetRequiredException
```

#### `newPasswordResetRequiredException`

``` purescript
newPasswordResetRequiredException :: PasswordResetRequiredException
```

Constructs PasswordResetRequiredException from required parameters

#### `newPasswordResetRequiredException'`

``` purescript
newPasswordResetRequiredException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> PasswordResetRequiredException
```

Constructs PasswordResetRequiredException's fields from required parameters

#### `PasswordType`

``` purescript
newtype PasswordType
  = PasswordType String
```

##### Instances
``` purescript
Newtype PasswordType _
Generic PasswordType _
Show PasswordType
Decode PasswordType
Encode PasswordType
```

#### `PoolQueryLimitType`

``` purescript
newtype PoolQueryLimitType
  = PoolQueryLimitType Int
```

##### Instances
``` purescript
Newtype PoolQueryLimitType _
Generic PoolQueryLimitType _
Show PoolQueryLimitType
Decode PoolQueryLimitType
Encode PoolQueryLimitType
```

#### `PreSignedUrlType`

``` purescript
newtype PreSignedUrlType
  = PreSignedUrlType String
```

##### Instances
``` purescript
Newtype PreSignedUrlType _
Generic PreSignedUrlType _
Show PreSignedUrlType
Decode PreSignedUrlType
Encode PreSignedUrlType
```

#### `PrecedenceType`

``` purescript
newtype PrecedenceType
  = PrecedenceType Int
```

##### Instances
``` purescript
Newtype PrecedenceType _
Generic PrecedenceType _
Show PrecedenceType
Decode PrecedenceType
Encode PrecedenceType
```

#### `PreconditionNotMetException`

``` purescript
newtype PreconditionNotMetException
  = PreconditionNotMetException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a precondition is not met.</p>

##### Instances
``` purescript
Newtype PreconditionNotMetException _
Generic PreconditionNotMetException _
Show PreconditionNotMetException
Decode PreconditionNotMetException
Encode PreconditionNotMetException
```

#### `newPreconditionNotMetException`

``` purescript
newPreconditionNotMetException :: PreconditionNotMetException
```

Constructs PreconditionNotMetException from required parameters

#### `newPreconditionNotMetException'`

``` purescript
newPreconditionNotMetException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> PreconditionNotMetException
```

Constructs PreconditionNotMetException's fields from required parameters

#### `ProviderDescription`

``` purescript
newtype ProviderDescription
  = ProviderDescription { "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }
```

<p>A container for identity provider details.</p>

##### Instances
``` purescript
Newtype ProviderDescription _
Generic ProviderDescription _
Show ProviderDescription
Decode ProviderDescription
Encode ProviderDescription
```

#### `newProviderDescription`

``` purescript
newProviderDescription :: ProviderDescription
```

Constructs ProviderDescription from required parameters

#### `newProviderDescription'`

``` purescript
newProviderDescription' :: ({ "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) } -> { "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderType" :: NullOrUndefined (IdentityProviderTypeType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }) -> ProviderDescription
```

Constructs ProviderDescription's fields from required parameters

#### `ProviderDetailsType`

``` purescript
newtype ProviderDetailsType
  = ProviderDetailsType (StrMap StringType)
```

##### Instances
``` purescript
Newtype ProviderDetailsType _
Generic ProviderDetailsType _
Show ProviderDetailsType
Decode ProviderDetailsType
Encode ProviderDetailsType
```

#### `ProviderNameType`

``` purescript
newtype ProviderNameType
  = ProviderNameType String
```

##### Instances
``` purescript
Newtype ProviderNameType _
Generic ProviderNameType _
Show ProviderNameType
Decode ProviderNameType
Encode ProviderNameType
```

#### `ProviderNameTypeV1`

``` purescript
newtype ProviderNameTypeV1
  = ProviderNameTypeV1 String
```

##### Instances
``` purescript
Newtype ProviderNameTypeV1 _
Generic ProviderNameTypeV1 _
Show ProviderNameTypeV1
Decode ProviderNameTypeV1
Encode ProviderNameTypeV1
```

#### `ProviderUserIdentifierType`

``` purescript
newtype ProviderUserIdentifierType
  = ProviderUserIdentifierType { "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderAttributeName" :: NullOrUndefined (StringType), "ProviderAttributeValue" :: NullOrUndefined (StringType) }
```

<p>A container for information about an identity provider for a user pool.</p>

##### Instances
``` purescript
Newtype ProviderUserIdentifierType _
Generic ProviderUserIdentifierType _
Show ProviderUserIdentifierType
Decode ProviderUserIdentifierType
Encode ProviderUserIdentifierType
```

#### `newProviderUserIdentifierType`

``` purescript
newProviderUserIdentifierType :: ProviderUserIdentifierType
```

Constructs ProviderUserIdentifierType from required parameters

#### `newProviderUserIdentifierType'`

``` purescript
newProviderUserIdentifierType' :: ({ "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderAttributeName" :: NullOrUndefined (StringType), "ProviderAttributeValue" :: NullOrUndefined (StringType) } -> { "ProviderName" :: NullOrUndefined (ProviderNameType), "ProviderAttributeName" :: NullOrUndefined (StringType), "ProviderAttributeValue" :: NullOrUndefined (StringType) }) -> ProviderUserIdentifierType
```

Constructs ProviderUserIdentifierType's fields from required parameters

#### `ProvidersListType`

``` purescript
newtype ProvidersListType
  = ProvidersListType (Array ProviderDescription)
```

##### Instances
``` purescript
Newtype ProvidersListType _
Generic ProvidersListType _
Show ProvidersListType
Decode ProvidersListType
Encode ProvidersListType
```

#### `QueryLimit`

``` purescript
newtype QueryLimit
  = QueryLimit Int
```

##### Instances
``` purescript
Newtype QueryLimit _
Generic QueryLimit _
Show QueryLimit
Decode QueryLimit
Encode QueryLimit
```

#### `QueryLimitType`

``` purescript
newtype QueryLimitType
  = QueryLimitType Int
```

##### Instances
``` purescript
Newtype QueryLimitType _
Generic QueryLimitType _
Show QueryLimitType
Decode QueryLimitType
Encode QueryLimitType
```

#### `RedirectUrlType`

``` purescript
newtype RedirectUrlType
  = RedirectUrlType String
```

##### Instances
``` purescript
Newtype RedirectUrlType _
Generic RedirectUrlType _
Show RedirectUrlType
Decode RedirectUrlType
Encode RedirectUrlType
```

#### `RefreshTokenValidityType`

``` purescript
newtype RefreshTokenValidityType
  = RefreshTokenValidityType Int
```

##### Instances
``` purescript
Newtype RefreshTokenValidityType _
Generic RefreshTokenValidityType _
Show RefreshTokenValidityType
Decode RefreshTokenValidityType
Encode RefreshTokenValidityType
```

#### `ResendConfirmationCodeRequest`

``` purescript
newtype ResendConfirmationCodeRequest
  = ResendConfirmationCodeRequest { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) }
```

<p>Represents the request to resend the confirmation code.</p>

##### Instances
``` purescript
Newtype ResendConfirmationCodeRequest _
Generic ResendConfirmationCodeRequest _
Show ResendConfirmationCodeRequest
Decode ResendConfirmationCodeRequest
Encode ResendConfirmationCodeRequest
```

#### `newResendConfirmationCodeRequest`

``` purescript
newResendConfirmationCodeRequest :: ClientIdType -> UsernameType -> ResendConfirmationCodeRequest
```

Constructs ResendConfirmationCodeRequest from required parameters

#### `newResendConfirmationCodeRequest'`

``` purescript
newResendConfirmationCodeRequest' :: ClientIdType -> UsernameType -> ({ "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) } -> { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "UserContextData" :: NullOrUndefined (UserContextDataType), "Username" :: UsernameType, "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType) }) -> ResendConfirmationCodeRequest
```

Constructs ResendConfirmationCodeRequest's fields from required parameters

#### `ResendConfirmationCodeResponse`

``` purescript
newtype ResendConfirmationCodeResponse
  = ResendConfirmationCodeResponse { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }
```

<p>The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.</p>

##### Instances
``` purescript
Newtype ResendConfirmationCodeResponse _
Generic ResendConfirmationCodeResponse _
Show ResendConfirmationCodeResponse
Decode ResendConfirmationCodeResponse
Encode ResendConfirmationCodeResponse
```

#### `newResendConfirmationCodeResponse`

``` purescript
newResendConfirmationCodeResponse :: ResendConfirmationCodeResponse
```

Constructs ResendConfirmationCodeResponse from required parameters

#### `newResendConfirmationCodeResponse'`

``` purescript
newResendConfirmationCodeResponse' :: ({ "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) } -> { "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType) }) -> ResendConfirmationCodeResponse
```

Constructs ResendConfirmationCodeResponse's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ResourceServerIdentifierType`

``` purescript
newtype ResourceServerIdentifierType
  = ResourceServerIdentifierType String
```

##### Instances
``` purescript
Newtype ResourceServerIdentifierType _
Generic ResourceServerIdentifierType _
Show ResourceServerIdentifierType
Decode ResourceServerIdentifierType
Encode ResourceServerIdentifierType
```

#### `ResourceServerNameType`

``` purescript
newtype ResourceServerNameType
  = ResourceServerNameType String
```

##### Instances
``` purescript
Newtype ResourceServerNameType _
Generic ResourceServerNameType _
Show ResourceServerNameType
Decode ResourceServerNameType
Encode ResourceServerNameType
```

#### `ResourceServerScopeDescriptionType`

``` purescript
newtype ResourceServerScopeDescriptionType
  = ResourceServerScopeDescriptionType String
```

##### Instances
``` purescript
Newtype ResourceServerScopeDescriptionType _
Generic ResourceServerScopeDescriptionType _
Show ResourceServerScopeDescriptionType
Decode ResourceServerScopeDescriptionType
Encode ResourceServerScopeDescriptionType
```

#### `ResourceServerScopeListType`

``` purescript
newtype ResourceServerScopeListType
  = ResourceServerScopeListType (Array ResourceServerScopeType)
```

##### Instances
``` purescript
Newtype ResourceServerScopeListType _
Generic ResourceServerScopeListType _
Show ResourceServerScopeListType
Decode ResourceServerScopeListType
Encode ResourceServerScopeListType
```

#### `ResourceServerScopeNameType`

``` purescript
newtype ResourceServerScopeNameType
  = ResourceServerScopeNameType String
```

##### Instances
``` purescript
Newtype ResourceServerScopeNameType _
Generic ResourceServerScopeNameType _
Show ResourceServerScopeNameType
Decode ResourceServerScopeNameType
Encode ResourceServerScopeNameType
```

#### `ResourceServerScopeType`

``` purescript
newtype ResourceServerScopeType
  = ResourceServerScopeType { "ScopeName" :: ResourceServerScopeNameType, "ScopeDescription" :: ResourceServerScopeDescriptionType }
```

<p>A resource server scope.</p>

##### Instances
``` purescript
Newtype ResourceServerScopeType _
Generic ResourceServerScopeType _
Show ResourceServerScopeType
Decode ResourceServerScopeType
Encode ResourceServerScopeType
```

#### `newResourceServerScopeType`

``` purescript
newResourceServerScopeType :: ResourceServerScopeDescriptionType -> ResourceServerScopeNameType -> ResourceServerScopeType
```

Constructs ResourceServerScopeType from required parameters

#### `newResourceServerScopeType'`

``` purescript
newResourceServerScopeType' :: ResourceServerScopeDescriptionType -> ResourceServerScopeNameType -> ({ "ScopeName" :: ResourceServerScopeNameType, "ScopeDescription" :: ResourceServerScopeDescriptionType } -> { "ScopeName" :: ResourceServerScopeNameType, "ScopeDescription" :: ResourceServerScopeDescriptionType }) -> ResourceServerScopeType
```

Constructs ResourceServerScopeType's fields from required parameters

#### `ResourceServerType`

``` purescript
newtype ResourceServerType
  = ResourceServerType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Identifier" :: NullOrUndefined (ResourceServerIdentifierType), "Name" :: NullOrUndefined (ResourceServerNameType), "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }
```

<p>A container for information about a resource server for a user pool.</p>

##### Instances
``` purescript
Newtype ResourceServerType _
Generic ResourceServerType _
Show ResourceServerType
Decode ResourceServerType
Encode ResourceServerType
```

#### `newResourceServerType`

``` purescript
newResourceServerType :: ResourceServerType
```

Constructs ResourceServerType from required parameters

#### `newResourceServerType'`

``` purescript
newResourceServerType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Identifier" :: NullOrUndefined (ResourceServerIdentifierType), "Name" :: NullOrUndefined (ResourceServerNameType), "Scopes" :: NullOrUndefined (ResourceServerScopeListType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "Identifier" :: NullOrUndefined (ResourceServerIdentifierType), "Name" :: NullOrUndefined (ResourceServerNameType), "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }) -> ResourceServerType
```

Constructs ResourceServerType's fields from required parameters

#### `ResourceServersListType`

``` purescript
newtype ResourceServersListType
  = ResourceServersListType (Array ResourceServerType)
```

##### Instances
``` purescript
Newtype ResourceServersListType _
Generic ResourceServersListType _
Show ResourceServersListType
Decode ResourceServersListType
Encode ResourceServersListType
```

#### `RespondToAuthChallengeRequest`

``` purescript
newtype RespondToAuthChallengeRequest
  = RespondToAuthChallengeRequest { "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "Session" :: NullOrUndefined (SessionType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }
```

<p>The request to respond to an authentication challenge.</p>

##### Instances
``` purescript
Newtype RespondToAuthChallengeRequest _
Generic RespondToAuthChallengeRequest _
Show RespondToAuthChallengeRequest
Decode RespondToAuthChallengeRequest
Encode RespondToAuthChallengeRequest
```

#### `newRespondToAuthChallengeRequest`

``` purescript
newRespondToAuthChallengeRequest :: ChallengeNameType -> ClientIdType -> RespondToAuthChallengeRequest
```

Constructs RespondToAuthChallengeRequest from required parameters

#### `newRespondToAuthChallengeRequest'`

``` purescript
newRespondToAuthChallengeRequest' :: ChallengeNameType -> ClientIdType -> ({ "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "Session" :: NullOrUndefined (SessionType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) } -> { "ClientId" :: ClientIdType, "ChallengeName" :: ChallengeNameType, "Session" :: NullOrUndefined (SessionType), "ChallengeResponses" :: NullOrUndefined (ChallengeResponsesType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }) -> RespondToAuthChallengeRequest
```

Constructs RespondToAuthChallengeRequest's fields from required parameters

#### `RespondToAuthChallengeResponse`

``` purescript
newtype RespondToAuthChallengeResponse
  = RespondToAuthChallengeResponse { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }
```

<p>The response to respond to the authentication challenge.</p>

##### Instances
``` purescript
Newtype RespondToAuthChallengeResponse _
Generic RespondToAuthChallengeResponse _
Show RespondToAuthChallengeResponse
Decode RespondToAuthChallengeResponse
Encode RespondToAuthChallengeResponse
```

#### `newRespondToAuthChallengeResponse`

``` purescript
newRespondToAuthChallengeResponse :: RespondToAuthChallengeResponse
```

Constructs RespondToAuthChallengeResponse from required parameters

#### `newRespondToAuthChallengeResponse'`

``` purescript
newRespondToAuthChallengeResponse' :: ({ "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) } -> { "ChallengeName" :: NullOrUndefined (ChallengeNameType), "Session" :: NullOrUndefined (SessionType), "ChallengeParameters" :: NullOrUndefined (ChallengeParametersType), "AuthenticationResult" :: NullOrUndefined (AuthenticationResultType) }) -> RespondToAuthChallengeResponse
```

Constructs RespondToAuthChallengeResponse's fields from required parameters

#### `RiskConfigurationType`

``` purescript
newtype RiskConfigurationType
  = RiskConfigurationType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType), "LastModifiedDate" :: NullOrUndefined (DateType) }
```

<p>The risk configuration type.</p>

##### Instances
``` purescript
Newtype RiskConfigurationType _
Generic RiskConfigurationType _
Show RiskConfigurationType
Decode RiskConfigurationType
Encode RiskConfigurationType
```

#### `newRiskConfigurationType`

``` purescript
newRiskConfigurationType :: RiskConfigurationType
```

Constructs RiskConfigurationType from required parameters

#### `newRiskConfigurationType'`

``` purescript
newRiskConfigurationType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType), "LastModifiedDate" :: NullOrUndefined (DateType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType), "LastModifiedDate" :: NullOrUndefined (DateType) }) -> RiskConfigurationType
```

Constructs RiskConfigurationType's fields from required parameters

#### `RiskDecisionType`

``` purescript
newtype RiskDecisionType
  = RiskDecisionType String
```

##### Instances
``` purescript
Newtype RiskDecisionType _
Generic RiskDecisionType _
Show RiskDecisionType
Decode RiskDecisionType
Encode RiskDecisionType
```

#### `RiskExceptionConfigurationType`

``` purescript
newtype RiskExceptionConfigurationType
  = RiskExceptionConfigurationType { "BlockedIPRangeList" :: NullOrUndefined (BlockedIPRangeListType), "SkippedIPRangeList" :: NullOrUndefined (SkippedIPRangeListType) }
```

<p>The type of the configuration to override the risk decision.</p>

##### Instances
``` purescript
Newtype RiskExceptionConfigurationType _
Generic RiskExceptionConfigurationType _
Show RiskExceptionConfigurationType
Decode RiskExceptionConfigurationType
Encode RiskExceptionConfigurationType
```

#### `newRiskExceptionConfigurationType`

``` purescript
newRiskExceptionConfigurationType :: RiskExceptionConfigurationType
```

Constructs RiskExceptionConfigurationType from required parameters

#### `newRiskExceptionConfigurationType'`

``` purescript
newRiskExceptionConfigurationType' :: ({ "BlockedIPRangeList" :: NullOrUndefined (BlockedIPRangeListType), "SkippedIPRangeList" :: NullOrUndefined (SkippedIPRangeListType) } -> { "BlockedIPRangeList" :: NullOrUndefined (BlockedIPRangeListType), "SkippedIPRangeList" :: NullOrUndefined (SkippedIPRangeListType) }) -> RiskExceptionConfigurationType
```

Constructs RiskExceptionConfigurationType's fields from required parameters

#### `RiskLevelType`

``` purescript
newtype RiskLevelType
  = RiskLevelType String
```

##### Instances
``` purescript
Newtype RiskLevelType _
Generic RiskLevelType _
Show RiskLevelType
Decode RiskLevelType
Encode RiskLevelType
```

#### `S3BucketType`

``` purescript
newtype S3BucketType
  = S3BucketType String
```

##### Instances
``` purescript
Newtype S3BucketType _
Generic S3BucketType _
Show S3BucketType
Decode S3BucketType
Encode S3BucketType
```

#### `SMSMfaSettingsType`

``` purescript
newtype SMSMfaSettingsType
  = SMSMfaSettingsType { "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) }
```

<p>The SMS multi-factor authentication (MFA) settings type.</p>

##### Instances
``` purescript
Newtype SMSMfaSettingsType _
Generic SMSMfaSettingsType _
Show SMSMfaSettingsType
Decode SMSMfaSettingsType
Encode SMSMfaSettingsType
```

#### `newSMSMfaSettingsType`

``` purescript
newSMSMfaSettingsType :: SMSMfaSettingsType
```

Constructs SMSMfaSettingsType from required parameters

#### `newSMSMfaSettingsType'`

``` purescript
newSMSMfaSettingsType' :: ({ "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) } -> { "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) }) -> SMSMfaSettingsType
```

Constructs SMSMfaSettingsType's fields from required parameters

#### `SchemaAttributeType`

``` purescript
newtype SchemaAttributeType
  = SchemaAttributeType { "Name" :: NullOrUndefined (CustomAttributeNameType), "AttributeDataType" :: NullOrUndefined (AttributeDataType), "DeveloperOnlyAttribute" :: NullOrUndefined (BooleanType), "Mutable" :: NullOrUndefined (BooleanType), "Required" :: NullOrUndefined (BooleanType), "NumberAttributeConstraints" :: NullOrUndefined (NumberAttributeConstraintsType), "StringAttributeConstraints" :: NullOrUndefined (StringAttributeConstraintsType) }
```

<p>Contains information about the schema attribute.</p>

##### Instances
``` purescript
Newtype SchemaAttributeType _
Generic SchemaAttributeType _
Show SchemaAttributeType
Decode SchemaAttributeType
Encode SchemaAttributeType
```

#### `newSchemaAttributeType`

``` purescript
newSchemaAttributeType :: SchemaAttributeType
```

Constructs SchemaAttributeType from required parameters

#### `newSchemaAttributeType'`

``` purescript
newSchemaAttributeType' :: ({ "Name" :: NullOrUndefined (CustomAttributeNameType), "AttributeDataType" :: NullOrUndefined (AttributeDataType), "DeveloperOnlyAttribute" :: NullOrUndefined (BooleanType), "Mutable" :: NullOrUndefined (BooleanType), "Required" :: NullOrUndefined (BooleanType), "NumberAttributeConstraints" :: NullOrUndefined (NumberAttributeConstraintsType), "StringAttributeConstraints" :: NullOrUndefined (StringAttributeConstraintsType) } -> { "Name" :: NullOrUndefined (CustomAttributeNameType), "AttributeDataType" :: NullOrUndefined (AttributeDataType), "DeveloperOnlyAttribute" :: NullOrUndefined (BooleanType), "Mutable" :: NullOrUndefined (BooleanType), "Required" :: NullOrUndefined (BooleanType), "NumberAttributeConstraints" :: NullOrUndefined (NumberAttributeConstraintsType), "StringAttributeConstraints" :: NullOrUndefined (StringAttributeConstraintsType) }) -> SchemaAttributeType
```

Constructs SchemaAttributeType's fields from required parameters

#### `SchemaAttributesListType`

``` purescript
newtype SchemaAttributesListType
  = SchemaAttributesListType (Array SchemaAttributeType)
```

##### Instances
``` purescript
Newtype SchemaAttributesListType _
Generic SchemaAttributesListType _
Show SchemaAttributesListType
Decode SchemaAttributesListType
Encode SchemaAttributesListType
```

#### `ScopeDoesNotExistException`

``` purescript
newtype ScopeDoesNotExistException
  = ScopeDoesNotExistException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the specified scope does not exist.</p>

##### Instances
``` purescript
Newtype ScopeDoesNotExistException _
Generic ScopeDoesNotExistException _
Show ScopeDoesNotExistException
Decode ScopeDoesNotExistException
Encode ScopeDoesNotExistException
```

#### `newScopeDoesNotExistException`

``` purescript
newScopeDoesNotExistException :: ScopeDoesNotExistException
```

Constructs ScopeDoesNotExistException from required parameters

#### `newScopeDoesNotExistException'`

``` purescript
newScopeDoesNotExistException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> ScopeDoesNotExistException
```

Constructs ScopeDoesNotExistException's fields from required parameters

#### `ScopeListType`

``` purescript
newtype ScopeListType
  = ScopeListType (Array ScopeType)
```

##### Instances
``` purescript
Newtype ScopeListType _
Generic ScopeListType _
Show ScopeListType
Decode ScopeListType
Encode ScopeListType
```

#### `ScopeType`

``` purescript
newtype ScopeType
  = ScopeType String
```

##### Instances
``` purescript
Newtype ScopeType _
Generic ScopeType _
Show ScopeType
Decode ScopeType
Encode ScopeType
```

#### `SearchPaginationTokenType`

``` purescript
newtype SearchPaginationTokenType
  = SearchPaginationTokenType String
```

##### Instances
``` purescript
Newtype SearchPaginationTokenType _
Generic SearchPaginationTokenType _
Show SearchPaginationTokenType
Decode SearchPaginationTokenType
Encode SearchPaginationTokenType
```

#### `SearchedAttributeNamesListType`

``` purescript
newtype SearchedAttributeNamesListType
  = SearchedAttributeNamesListType (Array AttributeNameType)
```

##### Instances
``` purescript
Newtype SearchedAttributeNamesListType _
Generic SearchedAttributeNamesListType _
Show SearchedAttributeNamesListType
Decode SearchedAttributeNamesListType
Encode SearchedAttributeNamesListType
```

#### `SecretCodeType`

``` purescript
newtype SecretCodeType
  = SecretCodeType String
```

##### Instances
``` purescript
Newtype SecretCodeType _
Generic SecretCodeType _
Show SecretCodeType
Decode SecretCodeType
Encode SecretCodeType
```

#### `SecretHashType`

``` purescript
newtype SecretHashType
  = SecretHashType String
```

##### Instances
``` purescript
Newtype SecretHashType _
Generic SecretHashType _
Show SecretHashType
Decode SecretHashType
Encode SecretHashType
```

#### `SessionType`

``` purescript
newtype SessionType
  = SessionType String
```

##### Instances
``` purescript
Newtype SessionType _
Generic SessionType _
Show SessionType
Decode SessionType
Encode SessionType
```

#### `SetRiskConfigurationRequest`

``` purescript
newtype SetRiskConfigurationRequest
  = SetRiskConfigurationRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType) }
```

##### Instances
``` purescript
Newtype SetRiskConfigurationRequest _
Generic SetRiskConfigurationRequest _
Show SetRiskConfigurationRequest
Decode SetRiskConfigurationRequest
Encode SetRiskConfigurationRequest
```

#### `newSetRiskConfigurationRequest`

``` purescript
newSetRiskConfigurationRequest :: UserPoolIdType -> SetRiskConfigurationRequest
```

Constructs SetRiskConfigurationRequest from required parameters

#### `newSetRiskConfigurationRequest'`

``` purescript
newSetRiskConfigurationRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CompromisedCredentialsRiskConfiguration" :: NullOrUndefined (CompromisedCredentialsRiskConfigurationType), "AccountTakeoverRiskConfiguration" :: NullOrUndefined (AccountTakeoverRiskConfigurationType), "RiskExceptionConfiguration" :: NullOrUndefined (RiskExceptionConfigurationType) }) -> SetRiskConfigurationRequest
```

Constructs SetRiskConfigurationRequest's fields from required parameters

#### `SetRiskConfigurationResponse`

``` purescript
newtype SetRiskConfigurationResponse
  = SetRiskConfigurationResponse { "RiskConfiguration" :: RiskConfigurationType }
```

##### Instances
``` purescript
Newtype SetRiskConfigurationResponse _
Generic SetRiskConfigurationResponse _
Show SetRiskConfigurationResponse
Decode SetRiskConfigurationResponse
Encode SetRiskConfigurationResponse
```

#### `newSetRiskConfigurationResponse`

``` purescript
newSetRiskConfigurationResponse :: RiskConfigurationType -> SetRiskConfigurationResponse
```

Constructs SetRiskConfigurationResponse from required parameters

#### `newSetRiskConfigurationResponse'`

``` purescript
newSetRiskConfigurationResponse' :: RiskConfigurationType -> ({ "RiskConfiguration" :: RiskConfigurationType } -> { "RiskConfiguration" :: RiskConfigurationType }) -> SetRiskConfigurationResponse
```

Constructs SetRiskConfigurationResponse's fields from required parameters

#### `SetUICustomizationRequest`

``` purescript
newtype SetUICustomizationRequest
  = SetUICustomizationRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CSS" :: NullOrUndefined (CSSType), "ImageFile" :: NullOrUndefined (ImageFileType) }
```

##### Instances
``` purescript
Newtype SetUICustomizationRequest _
Generic SetUICustomizationRequest _
Show SetUICustomizationRequest
Decode SetUICustomizationRequest
Encode SetUICustomizationRequest
```

#### `newSetUICustomizationRequest`

``` purescript
newSetUICustomizationRequest :: UserPoolIdType -> SetUICustomizationRequest
```

Constructs SetUICustomizationRequest from required parameters

#### `newSetUICustomizationRequest'`

``` purescript
newSetUICustomizationRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CSS" :: NullOrUndefined (CSSType), "ImageFile" :: NullOrUndefined (ImageFileType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: NullOrUndefined (ClientIdType), "CSS" :: NullOrUndefined (CSSType), "ImageFile" :: NullOrUndefined (ImageFileType) }) -> SetUICustomizationRequest
```

Constructs SetUICustomizationRequest's fields from required parameters

#### `SetUICustomizationResponse`

``` purescript
newtype SetUICustomizationResponse
  = SetUICustomizationResponse { "UICustomization" :: UICustomizationType }
```

##### Instances
``` purescript
Newtype SetUICustomizationResponse _
Generic SetUICustomizationResponse _
Show SetUICustomizationResponse
Decode SetUICustomizationResponse
Encode SetUICustomizationResponse
```

#### `newSetUICustomizationResponse`

``` purescript
newSetUICustomizationResponse :: UICustomizationType -> SetUICustomizationResponse
```

Constructs SetUICustomizationResponse from required parameters

#### `newSetUICustomizationResponse'`

``` purescript
newSetUICustomizationResponse' :: UICustomizationType -> ({ "UICustomization" :: UICustomizationType } -> { "UICustomization" :: UICustomizationType }) -> SetUICustomizationResponse
```

Constructs SetUICustomizationResponse's fields from required parameters

#### `SetUserMFAPreferenceRequest`

``` purescript
newtype SetUserMFAPreferenceRequest
  = SetUserMFAPreferenceRequest { "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "AccessToken" :: TokenModelType }
```

##### Instances
``` purescript
Newtype SetUserMFAPreferenceRequest _
Generic SetUserMFAPreferenceRequest _
Show SetUserMFAPreferenceRequest
Decode SetUserMFAPreferenceRequest
Encode SetUserMFAPreferenceRequest
```

#### `newSetUserMFAPreferenceRequest`

``` purescript
newSetUserMFAPreferenceRequest :: TokenModelType -> SetUserMFAPreferenceRequest
```

Constructs SetUserMFAPreferenceRequest from required parameters

#### `newSetUserMFAPreferenceRequest'`

``` purescript
newSetUserMFAPreferenceRequest' :: TokenModelType -> ({ "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "AccessToken" :: TokenModelType } -> { "SMSMfaSettings" :: NullOrUndefined (SMSMfaSettingsType), "SoftwareTokenMfaSettings" :: NullOrUndefined (SoftwareTokenMfaSettingsType), "AccessToken" :: TokenModelType }) -> SetUserMFAPreferenceRequest
```

Constructs SetUserMFAPreferenceRequest's fields from required parameters

#### `SetUserMFAPreferenceResponse`

``` purescript
newtype SetUserMFAPreferenceResponse
  = SetUserMFAPreferenceResponse NoArguments
```

##### Instances
``` purescript
Newtype SetUserMFAPreferenceResponse _
Generic SetUserMFAPreferenceResponse _
Show SetUserMFAPreferenceResponse
Decode SetUserMFAPreferenceResponse
Encode SetUserMFAPreferenceResponse
```

#### `SetUserPoolMfaConfigRequest`

``` purescript
newtype SetUserPoolMfaConfigRequest
  = SetUserPoolMfaConfigRequest { "UserPoolId" :: UserPoolIdType, "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }
```

##### Instances
``` purescript
Newtype SetUserPoolMfaConfigRequest _
Generic SetUserPoolMfaConfigRequest _
Show SetUserPoolMfaConfigRequest
Decode SetUserPoolMfaConfigRequest
Encode SetUserPoolMfaConfigRequest
```

#### `newSetUserPoolMfaConfigRequest`

``` purescript
newSetUserPoolMfaConfigRequest :: UserPoolIdType -> SetUserPoolMfaConfigRequest
```

Constructs SetUserPoolMfaConfigRequest from required parameters

#### `newSetUserPoolMfaConfigRequest'`

``` purescript
newSetUserPoolMfaConfigRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) } -> { "UserPoolId" :: UserPoolIdType, "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }) -> SetUserPoolMfaConfigRequest
```

Constructs SetUserPoolMfaConfigRequest's fields from required parameters

#### `SetUserPoolMfaConfigResponse`

``` purescript
newtype SetUserPoolMfaConfigResponse
  = SetUserPoolMfaConfigResponse { "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }
```

##### Instances
``` purescript
Newtype SetUserPoolMfaConfigResponse _
Generic SetUserPoolMfaConfigResponse _
Show SetUserPoolMfaConfigResponse
Decode SetUserPoolMfaConfigResponse
Encode SetUserPoolMfaConfigResponse
```

#### `newSetUserPoolMfaConfigResponse`

``` purescript
newSetUserPoolMfaConfigResponse :: SetUserPoolMfaConfigResponse
```

Constructs SetUserPoolMfaConfigResponse from required parameters

#### `newSetUserPoolMfaConfigResponse'`

``` purescript
newSetUserPoolMfaConfigResponse' :: ({ "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) } -> { "SmsMfaConfiguration" :: NullOrUndefined (SmsMfaConfigType), "SoftwareTokenMfaConfiguration" :: NullOrUndefined (SoftwareTokenMfaConfigType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType) }) -> SetUserPoolMfaConfigResponse
```

Constructs SetUserPoolMfaConfigResponse's fields from required parameters

#### `SetUserSettingsRequest`

``` purescript
newtype SetUserSettingsRequest
  = SetUserSettingsRequest { "AccessToken" :: TokenModelType, "MFAOptions" :: MFAOptionListType }
```

<p>Represents the request to set user settings.</p>

##### Instances
``` purescript
Newtype SetUserSettingsRequest _
Generic SetUserSettingsRequest _
Show SetUserSettingsRequest
Decode SetUserSettingsRequest
Encode SetUserSettingsRequest
```

#### `newSetUserSettingsRequest`

``` purescript
newSetUserSettingsRequest :: TokenModelType -> MFAOptionListType -> SetUserSettingsRequest
```

Constructs SetUserSettingsRequest from required parameters

#### `newSetUserSettingsRequest'`

``` purescript
newSetUserSettingsRequest' :: TokenModelType -> MFAOptionListType -> ({ "AccessToken" :: TokenModelType, "MFAOptions" :: MFAOptionListType } -> { "AccessToken" :: TokenModelType, "MFAOptions" :: MFAOptionListType }) -> SetUserSettingsRequest
```

Constructs SetUserSettingsRequest's fields from required parameters

#### `SetUserSettingsResponse`

``` purescript
newtype SetUserSettingsResponse
  = SetUserSettingsResponse NoArguments
```

<p>The response from the server for a set user settings request.</p>

##### Instances
``` purescript
Newtype SetUserSettingsResponse _
Generic SetUserSettingsResponse _
Show SetUserSettingsResponse
Decode SetUserSettingsResponse
Encode SetUserSettingsResponse
```

#### `SignUpRequest`

``` purescript
newtype SignUpRequest
  = SignUpRequest { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "Password" :: PasswordType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }
```

<p>Represents the request to register a user.</p>

##### Instances
``` purescript
Newtype SignUpRequest _
Generic SignUpRequest _
Show SignUpRequest
Decode SignUpRequest
Encode SignUpRequest
```

#### `newSignUpRequest`

``` purescript
newSignUpRequest :: ClientIdType -> PasswordType -> UsernameType -> SignUpRequest
```

Constructs SignUpRequest from required parameters

#### `newSignUpRequest'`

``` purescript
newSignUpRequest' :: ClientIdType -> PasswordType -> UsernameType -> ({ "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "Password" :: PasswordType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) } -> { "ClientId" :: ClientIdType, "SecretHash" :: NullOrUndefined (SecretHashType), "Username" :: UsernameType, "Password" :: PasswordType, "UserAttributes" :: NullOrUndefined (AttributeListType), "ValidationData" :: NullOrUndefined (AttributeListType), "AnalyticsMetadata" :: NullOrUndefined (AnalyticsMetadataType), "UserContextData" :: NullOrUndefined (UserContextDataType) }) -> SignUpRequest
```

Constructs SignUpRequest's fields from required parameters

#### `SignUpResponse`

``` purescript
newtype SignUpResponse
  = SignUpResponse { "UserConfirmed" :: BooleanType, "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType), "UserSub" :: StringType }
```

<p>The response from the server for a registration request.</p>

##### Instances
``` purescript
Newtype SignUpResponse _
Generic SignUpResponse _
Show SignUpResponse
Decode SignUpResponse
Encode SignUpResponse
```

#### `newSignUpResponse`

``` purescript
newSignUpResponse :: BooleanType -> StringType -> SignUpResponse
```

Constructs SignUpResponse from required parameters

#### `newSignUpResponse'`

``` purescript
newSignUpResponse' :: BooleanType -> StringType -> ({ "UserConfirmed" :: BooleanType, "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType), "UserSub" :: StringType } -> { "UserConfirmed" :: BooleanType, "CodeDeliveryDetails" :: NullOrUndefined (CodeDeliveryDetailsType), "UserSub" :: StringType }) -> SignUpResponse
```

Constructs SignUpResponse's fields from required parameters

#### `SkippedIPRangeListType`

``` purescript
newtype SkippedIPRangeListType
  = SkippedIPRangeListType (Array StringType)
```

##### Instances
``` purescript
Newtype SkippedIPRangeListType _
Generic SkippedIPRangeListType _
Show SkippedIPRangeListType
Decode SkippedIPRangeListType
Encode SkippedIPRangeListType
```

#### `SmsConfigurationType`

``` purescript
newtype SmsConfigurationType
  = SmsConfigurationType { "SnsCallerArn" :: ArnType, "ExternalId" :: NullOrUndefined (StringType) }
```

<p>The SMS configuration type.</p>

##### Instances
``` purescript
Newtype SmsConfigurationType _
Generic SmsConfigurationType _
Show SmsConfigurationType
Decode SmsConfigurationType
Encode SmsConfigurationType
```

#### `newSmsConfigurationType`

``` purescript
newSmsConfigurationType :: ArnType -> SmsConfigurationType
```

Constructs SmsConfigurationType from required parameters

#### `newSmsConfigurationType'`

``` purescript
newSmsConfigurationType' :: ArnType -> ({ "SnsCallerArn" :: ArnType, "ExternalId" :: NullOrUndefined (StringType) } -> { "SnsCallerArn" :: ArnType, "ExternalId" :: NullOrUndefined (StringType) }) -> SmsConfigurationType
```

Constructs SmsConfigurationType's fields from required parameters

#### `SmsMfaConfigType`

``` purescript
newtype SmsMfaConfigType
  = SmsMfaConfigType { "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType) }
```

<p>The SMS text message multi-factor authentication (MFA) configuration type.</p>

##### Instances
``` purescript
Newtype SmsMfaConfigType _
Generic SmsMfaConfigType _
Show SmsMfaConfigType
Decode SmsMfaConfigType
Encode SmsMfaConfigType
```

#### `newSmsMfaConfigType`

``` purescript
newSmsMfaConfigType :: SmsMfaConfigType
```

Constructs SmsMfaConfigType from required parameters

#### `newSmsMfaConfigType'`

``` purescript
newSmsMfaConfigType' :: ({ "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType) } -> { "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType) }) -> SmsMfaConfigType
```

Constructs SmsMfaConfigType's fields from required parameters

#### `SmsVerificationMessageType`

``` purescript
newtype SmsVerificationMessageType
  = SmsVerificationMessageType String
```

##### Instances
``` purescript
Newtype SmsVerificationMessageType _
Generic SmsVerificationMessageType _
Show SmsVerificationMessageType
Decode SmsVerificationMessageType
Encode SmsVerificationMessageType
```

#### `SoftwareTokenMFANotFoundException`

``` purescript
newtype SoftwareTokenMFANotFoundException
  = SoftwareTokenMFANotFoundException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the software token TOTP multi-factor authentication (MFA) is not enabled for the user pool.</p>

##### Instances
``` purescript
Newtype SoftwareTokenMFANotFoundException _
Generic SoftwareTokenMFANotFoundException _
Show SoftwareTokenMFANotFoundException
Decode SoftwareTokenMFANotFoundException
Encode SoftwareTokenMFANotFoundException
```

#### `newSoftwareTokenMFANotFoundException`

``` purescript
newSoftwareTokenMFANotFoundException :: SoftwareTokenMFANotFoundException
```

Constructs SoftwareTokenMFANotFoundException from required parameters

#### `newSoftwareTokenMFANotFoundException'`

``` purescript
newSoftwareTokenMFANotFoundException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> SoftwareTokenMFANotFoundException
```

Constructs SoftwareTokenMFANotFoundException's fields from required parameters

#### `SoftwareTokenMFAUserCodeType`

``` purescript
newtype SoftwareTokenMFAUserCodeType
  = SoftwareTokenMFAUserCodeType String
```

##### Instances
``` purescript
Newtype SoftwareTokenMFAUserCodeType _
Generic SoftwareTokenMFAUserCodeType _
Show SoftwareTokenMFAUserCodeType
Decode SoftwareTokenMFAUserCodeType
Encode SoftwareTokenMFAUserCodeType
```

#### `SoftwareTokenMfaConfigType`

``` purescript
newtype SoftwareTokenMfaConfigType
  = SoftwareTokenMfaConfigType { "Enabled" :: NullOrUndefined (BooleanType) }
```

<p>The type used for enabling software token MFA at the user pool level.</p>

##### Instances
``` purescript
Newtype SoftwareTokenMfaConfigType _
Generic SoftwareTokenMfaConfigType _
Show SoftwareTokenMfaConfigType
Decode SoftwareTokenMfaConfigType
Encode SoftwareTokenMfaConfigType
```

#### `newSoftwareTokenMfaConfigType`

``` purescript
newSoftwareTokenMfaConfigType :: SoftwareTokenMfaConfigType
```

Constructs SoftwareTokenMfaConfigType from required parameters

#### `newSoftwareTokenMfaConfigType'`

``` purescript
newSoftwareTokenMfaConfigType' :: ({ "Enabled" :: NullOrUndefined (BooleanType) } -> { "Enabled" :: NullOrUndefined (BooleanType) }) -> SoftwareTokenMfaConfigType
```

Constructs SoftwareTokenMfaConfigType's fields from required parameters

#### `SoftwareTokenMfaSettingsType`

``` purescript
newtype SoftwareTokenMfaSettingsType
  = SoftwareTokenMfaSettingsType { "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) }
```

<p>The type used for enabling software token MFA at the user level.</p>

##### Instances
``` purescript
Newtype SoftwareTokenMfaSettingsType _
Generic SoftwareTokenMfaSettingsType _
Show SoftwareTokenMfaSettingsType
Decode SoftwareTokenMfaSettingsType
Encode SoftwareTokenMfaSettingsType
```

#### `newSoftwareTokenMfaSettingsType`

``` purescript
newSoftwareTokenMfaSettingsType :: SoftwareTokenMfaSettingsType
```

Constructs SoftwareTokenMfaSettingsType from required parameters

#### `newSoftwareTokenMfaSettingsType'`

``` purescript
newSoftwareTokenMfaSettingsType' :: ({ "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) } -> { "Enabled" :: NullOrUndefined (BooleanType), "PreferredMfa" :: NullOrUndefined (BooleanType) }) -> SoftwareTokenMfaSettingsType
```

Constructs SoftwareTokenMfaSettingsType's fields from required parameters

#### `StartUserImportJobRequest`

``` purescript
newtype StartUserImportJobRequest
  = StartUserImportJobRequest { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }
```

<p>Represents the request to start the user import job.</p>

##### Instances
``` purescript
Newtype StartUserImportJobRequest _
Generic StartUserImportJobRequest _
Show StartUserImportJobRequest
Decode StartUserImportJobRequest
Encode StartUserImportJobRequest
```

#### `newStartUserImportJobRequest`

``` purescript
newStartUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> StartUserImportJobRequest
```

Constructs StartUserImportJobRequest from required parameters

#### `newStartUserImportJobRequest'`

``` purescript
newStartUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType } -> { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }) -> StartUserImportJobRequest
```

Constructs StartUserImportJobRequest's fields from required parameters

#### `StartUserImportJobResponse`

``` purescript
newtype StartUserImportJobResponse
  = StartUserImportJobResponse { "UserImportJob" :: NullOrUndefined (UserImportJobType) }
```

<p>Represents the response from the server to the request to start the user import job.</p>

##### Instances
``` purescript
Newtype StartUserImportJobResponse _
Generic StartUserImportJobResponse _
Show StartUserImportJobResponse
Decode StartUserImportJobResponse
Encode StartUserImportJobResponse
```

#### `newStartUserImportJobResponse`

``` purescript
newStartUserImportJobResponse :: StartUserImportJobResponse
```

Constructs StartUserImportJobResponse from required parameters

#### `newStartUserImportJobResponse'`

``` purescript
newStartUserImportJobResponse' :: ({ "UserImportJob" :: NullOrUndefined (UserImportJobType) } -> { "UserImportJob" :: NullOrUndefined (UserImportJobType) }) -> StartUserImportJobResponse
```

Constructs StartUserImportJobResponse's fields from required parameters

#### `StatusType`

``` purescript
newtype StatusType
  = StatusType String
```

##### Instances
``` purescript
Newtype StatusType _
Generic StatusType _
Show StatusType
Decode StatusType
Encode StatusType
```

#### `StopUserImportJobRequest`

``` purescript
newtype StopUserImportJobRequest
  = StopUserImportJobRequest { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }
```

<p>Represents the request to stop the user import job.</p>

##### Instances
``` purescript
Newtype StopUserImportJobRequest _
Generic StopUserImportJobRequest _
Show StopUserImportJobRequest
Decode StopUserImportJobRequest
Encode StopUserImportJobRequest
```

#### `newStopUserImportJobRequest`

``` purescript
newStopUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> StopUserImportJobRequest
```

Constructs StopUserImportJobRequest from required parameters

#### `newStopUserImportJobRequest'`

``` purescript
newStopUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType } -> { "UserPoolId" :: UserPoolIdType, "JobId" :: UserImportJobIdType }) -> StopUserImportJobRequest
```

Constructs StopUserImportJobRequest's fields from required parameters

#### `StopUserImportJobResponse`

``` purescript
newtype StopUserImportJobResponse
  = StopUserImportJobResponse { "UserImportJob" :: NullOrUndefined (UserImportJobType) }
```

<p>Represents the response from the server to the request to stop the user import job.</p>

##### Instances
``` purescript
Newtype StopUserImportJobResponse _
Generic StopUserImportJobResponse _
Show StopUserImportJobResponse
Decode StopUserImportJobResponse
Encode StopUserImportJobResponse
```

#### `newStopUserImportJobResponse`

``` purescript
newStopUserImportJobResponse :: StopUserImportJobResponse
```

Constructs StopUserImportJobResponse from required parameters

#### `newStopUserImportJobResponse'`

``` purescript
newStopUserImportJobResponse' :: ({ "UserImportJob" :: NullOrUndefined (UserImportJobType) } -> { "UserImportJob" :: NullOrUndefined (UserImportJobType) }) -> StopUserImportJobResponse
```

Constructs StopUserImportJobResponse's fields from required parameters

#### `StringAttributeConstraintsType`

``` purescript
newtype StringAttributeConstraintsType
  = StringAttributeConstraintsType { "MinLength" :: NullOrUndefined (StringType), "MaxLength" :: NullOrUndefined (StringType) }
```

<p>The constraints associated with a string attribute.</p>

##### Instances
``` purescript
Newtype StringAttributeConstraintsType _
Generic StringAttributeConstraintsType _
Show StringAttributeConstraintsType
Decode StringAttributeConstraintsType
Encode StringAttributeConstraintsType
```

#### `newStringAttributeConstraintsType`

``` purescript
newStringAttributeConstraintsType :: StringAttributeConstraintsType
```

Constructs StringAttributeConstraintsType from required parameters

#### `newStringAttributeConstraintsType'`

``` purescript
newStringAttributeConstraintsType' :: ({ "MinLength" :: NullOrUndefined (StringType), "MaxLength" :: NullOrUndefined (StringType) } -> { "MinLength" :: NullOrUndefined (StringType), "MaxLength" :: NullOrUndefined (StringType) }) -> StringAttributeConstraintsType
```

Constructs StringAttributeConstraintsType's fields from required parameters

#### `StringType`

``` purescript
newtype StringType
  = StringType String
```

##### Instances
``` purescript
Newtype StringType _
Generic StringType _
Show StringType
Decode StringType
Encode StringType
```

#### `SupportedIdentityProvidersListType`

``` purescript
newtype SupportedIdentityProvidersListType
  = SupportedIdentityProvidersListType (Array ProviderNameType)
```

##### Instances
``` purescript
Newtype SupportedIdentityProvidersListType _
Generic SupportedIdentityProvidersListType _
Show SupportedIdentityProvidersListType
Decode SupportedIdentityProvidersListType
Encode SupportedIdentityProvidersListType
```

#### `TokenModelType`

``` purescript
newtype TokenModelType
  = TokenModelType String
```

##### Instances
``` purescript
Newtype TokenModelType _
Generic TokenModelType _
Show TokenModelType
Decode TokenModelType
Encode TokenModelType
```

#### `TooManyFailedAttemptsException`

``` purescript
newtype TooManyFailedAttemptsException
  = TooManyFailedAttemptsException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>

##### Instances
``` purescript
Newtype TooManyFailedAttemptsException _
Generic TooManyFailedAttemptsException _
Show TooManyFailedAttemptsException
Decode TooManyFailedAttemptsException
Encode TooManyFailedAttemptsException
```

#### `newTooManyFailedAttemptsException`

``` purescript
newTooManyFailedAttemptsException :: TooManyFailedAttemptsException
```

Constructs TooManyFailedAttemptsException from required parameters

#### `newTooManyFailedAttemptsException'`

``` purescript
newTooManyFailedAttemptsException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> TooManyFailedAttemptsException
```

Constructs TooManyFailedAttemptsException's fields from required parameters

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the user has made too many requests for a given operation.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UICustomizationType`

``` purescript
newtype UICustomizationType
  = UICustomizationType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "ImageUrl" :: NullOrUndefined (ImageUrlType), "CSS" :: NullOrUndefined (CSSType), "CSSVersion" :: NullOrUndefined (CSSVersionType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }
```

<p>A container for the UI customization information for a user pool's built-in app UI.</p>

##### Instances
``` purescript
Newtype UICustomizationType _
Generic UICustomizationType _
Show UICustomizationType
Decode UICustomizationType
Encode UICustomizationType
```

#### `newUICustomizationType`

``` purescript
newUICustomizationType :: UICustomizationType
```

Constructs UICustomizationType from required parameters

#### `newUICustomizationType'`

``` purescript
newUICustomizationType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "ImageUrl" :: NullOrUndefined (ImageUrlType), "CSS" :: NullOrUndefined (CSSType), "CSSVersion" :: NullOrUndefined (CSSVersionType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientId" :: NullOrUndefined (ClientIdType), "ImageUrl" :: NullOrUndefined (ImageUrlType), "CSS" :: NullOrUndefined (CSSType), "CSSVersion" :: NullOrUndefined (CSSVersionType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }) -> UICustomizationType
```

Constructs UICustomizationType's fields from required parameters

#### `UnexpectedLambdaException`

``` purescript
newtype UnexpectedLambdaException
  = UnexpectedLambdaException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>

##### Instances
``` purescript
Newtype UnexpectedLambdaException _
Generic UnexpectedLambdaException _
Show UnexpectedLambdaException
Decode UnexpectedLambdaException
Encode UnexpectedLambdaException
```

#### `newUnexpectedLambdaException`

``` purescript
newUnexpectedLambdaException :: UnexpectedLambdaException
```

Constructs UnexpectedLambdaException from required parameters

#### `newUnexpectedLambdaException'`

``` purescript
newUnexpectedLambdaException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UnexpectedLambdaException
```

Constructs UnexpectedLambdaException's fields from required parameters

#### `UnsupportedIdentityProviderException`

``` purescript
newtype UnsupportedIdentityProviderException
  = UnsupportedIdentityProviderException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the specified identifier is not supported.</p>

##### Instances
``` purescript
Newtype UnsupportedIdentityProviderException _
Generic UnsupportedIdentityProviderException _
Show UnsupportedIdentityProviderException
Decode UnsupportedIdentityProviderException
Encode UnsupportedIdentityProviderException
```

#### `newUnsupportedIdentityProviderException`

``` purescript
newUnsupportedIdentityProviderException :: UnsupportedIdentityProviderException
```

Constructs UnsupportedIdentityProviderException from required parameters

#### `newUnsupportedIdentityProviderException'`

``` purescript
newUnsupportedIdentityProviderException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UnsupportedIdentityProviderException
```

Constructs UnsupportedIdentityProviderException's fields from required parameters

#### `UnsupportedUserStateException`

``` purescript
newtype UnsupportedUserStateException
  = UnsupportedUserStateException { message :: NullOrUndefined (MessageType) }
```

<p>The request failed because the user is in an unsupported state.</p>

##### Instances
``` purescript
Newtype UnsupportedUserStateException _
Generic UnsupportedUserStateException _
Show UnsupportedUserStateException
Decode UnsupportedUserStateException
Encode UnsupportedUserStateException
```

#### `newUnsupportedUserStateException`

``` purescript
newUnsupportedUserStateException :: UnsupportedUserStateException
```

Constructs UnsupportedUserStateException from required parameters

#### `newUnsupportedUserStateException'`

``` purescript
newUnsupportedUserStateException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UnsupportedUserStateException
```

Constructs UnsupportedUserStateException's fields from required parameters

#### `UpdateAuthEventFeedbackRequest`

``` purescript
newtype UpdateAuthEventFeedbackRequest
  = UpdateAuthEventFeedbackRequest { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackToken" :: TokenModelType, "FeedbackValue" :: FeedbackValueType }
```

##### Instances
``` purescript
Newtype UpdateAuthEventFeedbackRequest _
Generic UpdateAuthEventFeedbackRequest _
Show UpdateAuthEventFeedbackRequest
Decode UpdateAuthEventFeedbackRequest
Encode UpdateAuthEventFeedbackRequest
```

#### `newUpdateAuthEventFeedbackRequest`

``` purescript
newUpdateAuthEventFeedbackRequest :: EventIdType -> TokenModelType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> UpdateAuthEventFeedbackRequest
```

Constructs UpdateAuthEventFeedbackRequest from required parameters

#### `newUpdateAuthEventFeedbackRequest'`

``` purescript
newUpdateAuthEventFeedbackRequest' :: EventIdType -> TokenModelType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> ({ "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackToken" :: TokenModelType, "FeedbackValue" :: FeedbackValueType } -> { "UserPoolId" :: UserPoolIdType, "Username" :: UsernameType, "EventId" :: EventIdType, "FeedbackToken" :: TokenModelType, "FeedbackValue" :: FeedbackValueType }) -> UpdateAuthEventFeedbackRequest
```

Constructs UpdateAuthEventFeedbackRequest's fields from required parameters

#### `UpdateAuthEventFeedbackResponse`

``` purescript
newtype UpdateAuthEventFeedbackResponse
  = UpdateAuthEventFeedbackResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateAuthEventFeedbackResponse _
Generic UpdateAuthEventFeedbackResponse _
Show UpdateAuthEventFeedbackResponse
Decode UpdateAuthEventFeedbackResponse
Encode UpdateAuthEventFeedbackResponse
```

#### `UpdateDeviceStatusRequest`

``` purescript
newtype UpdateDeviceStatusRequest
  = UpdateDeviceStatusRequest { "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) }
```

<p>Represents the request to update the device status.</p>

##### Instances
``` purescript
Newtype UpdateDeviceStatusRequest _
Generic UpdateDeviceStatusRequest _
Show UpdateDeviceStatusRequest
Decode UpdateDeviceStatusRequest
Encode UpdateDeviceStatusRequest
```

#### `newUpdateDeviceStatusRequest`

``` purescript
newUpdateDeviceStatusRequest :: TokenModelType -> DeviceKeyType -> UpdateDeviceStatusRequest
```

Constructs UpdateDeviceStatusRequest from required parameters

#### `newUpdateDeviceStatusRequest'`

``` purescript
newUpdateDeviceStatusRequest' :: TokenModelType -> DeviceKeyType -> ({ "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) } -> { "AccessToken" :: TokenModelType, "DeviceKey" :: DeviceKeyType, "DeviceRememberedStatus" :: NullOrUndefined (DeviceRememberedStatusType) }) -> UpdateDeviceStatusRequest
```

Constructs UpdateDeviceStatusRequest's fields from required parameters

#### `UpdateDeviceStatusResponse`

``` purescript
newtype UpdateDeviceStatusResponse
  = UpdateDeviceStatusResponse NoArguments
```

<p>The response to the request to update the device status.</p>

##### Instances
``` purescript
Newtype UpdateDeviceStatusResponse _
Generic UpdateDeviceStatusResponse _
Show UpdateDeviceStatusResponse
Decode UpdateDeviceStatusResponse
Encode UpdateDeviceStatusResponse
```

#### `UpdateGroupRequest`

``` purescript
newtype UpdateGroupRequest
  = UpdateGroupRequest { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) }
```

##### Instances
``` purescript
Newtype UpdateGroupRequest _
Generic UpdateGroupRequest _
Show UpdateGroupRequest
Decode UpdateGroupRequest
Encode UpdateGroupRequest
```

#### `newUpdateGroupRequest`

``` purescript
newUpdateGroupRequest :: GroupNameType -> UserPoolIdType -> UpdateGroupRequest
```

Constructs UpdateGroupRequest from required parameters

#### `newUpdateGroupRequest'`

``` purescript
newUpdateGroupRequest' :: GroupNameType -> UserPoolIdType -> ({ "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) } -> { "GroupName" :: GroupNameType, "UserPoolId" :: UserPoolIdType, "Description" :: NullOrUndefined (DescriptionType), "RoleArn" :: NullOrUndefined (ArnType), "Precedence" :: NullOrUndefined (PrecedenceType) }) -> UpdateGroupRequest
```

Constructs UpdateGroupRequest's fields from required parameters

#### `UpdateGroupResponse`

``` purescript
newtype UpdateGroupResponse
  = UpdateGroupResponse { "Group" :: NullOrUndefined (GroupType) }
```

##### Instances
``` purescript
Newtype UpdateGroupResponse _
Generic UpdateGroupResponse _
Show UpdateGroupResponse
Decode UpdateGroupResponse
Encode UpdateGroupResponse
```

#### `newUpdateGroupResponse`

``` purescript
newUpdateGroupResponse :: UpdateGroupResponse
```

Constructs UpdateGroupResponse from required parameters

#### `newUpdateGroupResponse'`

``` purescript
newUpdateGroupResponse' :: ({ "Group" :: NullOrUndefined (GroupType) } -> { "Group" :: NullOrUndefined (GroupType) }) -> UpdateGroupResponse
```

Constructs UpdateGroupResponse's fields from required parameters

#### `UpdateIdentityProviderRequest`

``` purescript
newtype UpdateIdentityProviderRequest
  = UpdateIdentityProviderRequest { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType, "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) }
```

##### Instances
``` purescript
Newtype UpdateIdentityProviderRequest _
Generic UpdateIdentityProviderRequest _
Show UpdateIdentityProviderRequest
Decode UpdateIdentityProviderRequest
Encode UpdateIdentityProviderRequest
```

#### `newUpdateIdentityProviderRequest`

``` purescript
newUpdateIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> UpdateIdentityProviderRequest
```

Constructs UpdateIdentityProviderRequest from required parameters

#### `newUpdateIdentityProviderRequest'`

``` purescript
newUpdateIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType, "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) } -> { "UserPoolId" :: UserPoolIdType, "ProviderName" :: ProviderNameType, "ProviderDetails" :: NullOrUndefined (ProviderDetailsType), "AttributeMapping" :: NullOrUndefined (AttributeMappingType), "IdpIdentifiers" :: NullOrUndefined (IdpIdentifiersListType) }) -> UpdateIdentityProviderRequest
```

Constructs UpdateIdentityProviderRequest's fields from required parameters

#### `UpdateIdentityProviderResponse`

``` purescript
newtype UpdateIdentityProviderResponse
  = UpdateIdentityProviderResponse { "IdentityProvider" :: IdentityProviderType }
```

##### Instances
``` purescript
Newtype UpdateIdentityProviderResponse _
Generic UpdateIdentityProviderResponse _
Show UpdateIdentityProviderResponse
Decode UpdateIdentityProviderResponse
Encode UpdateIdentityProviderResponse
```

#### `newUpdateIdentityProviderResponse`

``` purescript
newUpdateIdentityProviderResponse :: IdentityProviderType -> UpdateIdentityProviderResponse
```

Constructs UpdateIdentityProviderResponse from required parameters

#### `newUpdateIdentityProviderResponse'`

``` purescript
newUpdateIdentityProviderResponse' :: IdentityProviderType -> ({ "IdentityProvider" :: IdentityProviderType } -> { "IdentityProvider" :: IdentityProviderType }) -> UpdateIdentityProviderResponse
```

Constructs UpdateIdentityProviderResponse's fields from required parameters

#### `UpdateResourceServerRequest`

``` purescript
newtype UpdateResourceServerRequest
  = UpdateResourceServerRequest { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }
```

##### Instances
``` purescript
Newtype UpdateResourceServerRequest _
Generic UpdateResourceServerRequest _
Show UpdateResourceServerRequest
Decode UpdateResourceServerRequest
Encode UpdateResourceServerRequest
```

#### `newUpdateResourceServerRequest`

``` purescript
newUpdateResourceServerRequest :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> UpdateResourceServerRequest
```

Constructs UpdateResourceServerRequest from required parameters

#### `newUpdateResourceServerRequest'`

``` purescript
newUpdateResourceServerRequest' :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) } -> { "UserPoolId" :: UserPoolIdType, "Identifier" :: ResourceServerIdentifierType, "Name" :: ResourceServerNameType, "Scopes" :: NullOrUndefined (ResourceServerScopeListType) }) -> UpdateResourceServerRequest
```

Constructs UpdateResourceServerRequest's fields from required parameters

#### `UpdateResourceServerResponse`

``` purescript
newtype UpdateResourceServerResponse
  = UpdateResourceServerResponse { "ResourceServer" :: ResourceServerType }
```

##### Instances
``` purescript
Newtype UpdateResourceServerResponse _
Generic UpdateResourceServerResponse _
Show UpdateResourceServerResponse
Decode UpdateResourceServerResponse
Encode UpdateResourceServerResponse
```

#### `newUpdateResourceServerResponse`

``` purescript
newUpdateResourceServerResponse :: ResourceServerType -> UpdateResourceServerResponse
```

Constructs UpdateResourceServerResponse from required parameters

#### `newUpdateResourceServerResponse'`

``` purescript
newUpdateResourceServerResponse' :: ResourceServerType -> ({ "ResourceServer" :: ResourceServerType } -> { "ResourceServer" :: ResourceServerType }) -> UpdateResourceServerResponse
```

Constructs UpdateResourceServerResponse's fields from required parameters

#### `UpdateUserAttributesRequest`

``` purescript
newtype UpdateUserAttributesRequest
  = UpdateUserAttributesRequest { "UserAttributes" :: AttributeListType, "AccessToken" :: TokenModelType }
```

<p>Represents the request to update user attributes.</p>

##### Instances
``` purescript
Newtype UpdateUserAttributesRequest _
Generic UpdateUserAttributesRequest _
Show UpdateUserAttributesRequest
Decode UpdateUserAttributesRequest
Encode UpdateUserAttributesRequest
```

#### `newUpdateUserAttributesRequest`

``` purescript
newUpdateUserAttributesRequest :: TokenModelType -> AttributeListType -> UpdateUserAttributesRequest
```

Constructs UpdateUserAttributesRequest from required parameters

#### `newUpdateUserAttributesRequest'`

``` purescript
newUpdateUserAttributesRequest' :: TokenModelType -> AttributeListType -> ({ "UserAttributes" :: AttributeListType, "AccessToken" :: TokenModelType } -> { "UserAttributes" :: AttributeListType, "AccessToken" :: TokenModelType }) -> UpdateUserAttributesRequest
```

Constructs UpdateUserAttributesRequest's fields from required parameters

#### `UpdateUserAttributesResponse`

``` purescript
newtype UpdateUserAttributesResponse
  = UpdateUserAttributesResponse { "CodeDeliveryDetailsList" :: NullOrUndefined (CodeDeliveryDetailsListType) }
```

<p>Represents the response from the server for the request to update user attributes.</p>

##### Instances
``` purescript
Newtype UpdateUserAttributesResponse _
Generic UpdateUserAttributesResponse _
Show UpdateUserAttributesResponse
Decode UpdateUserAttributesResponse
Encode UpdateUserAttributesResponse
```

#### `newUpdateUserAttributesResponse`

``` purescript
newUpdateUserAttributesResponse :: UpdateUserAttributesResponse
```

Constructs UpdateUserAttributesResponse from required parameters

#### `newUpdateUserAttributesResponse'`

``` purescript
newUpdateUserAttributesResponse' :: ({ "CodeDeliveryDetailsList" :: NullOrUndefined (CodeDeliveryDetailsListType) } -> { "CodeDeliveryDetailsList" :: NullOrUndefined (CodeDeliveryDetailsListType) }) -> UpdateUserAttributesResponse
```

Constructs UpdateUserAttributesResponse's fields from required parameters

#### `UpdateUserPoolClientRequest`

``` purescript
newtype UpdateUserPoolClientRequest
  = UpdateUserPoolClientRequest { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ClientName" :: NullOrUndefined (ClientNameType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }
```

<p>Represents the request to update the user pool client.</p>

##### Instances
``` purescript
Newtype UpdateUserPoolClientRequest _
Generic UpdateUserPoolClientRequest _
Show UpdateUserPoolClientRequest
Decode UpdateUserPoolClientRequest
Encode UpdateUserPoolClientRequest
```

#### `newUpdateUserPoolClientRequest`

``` purescript
newUpdateUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> UpdateUserPoolClientRequest
```

Constructs UpdateUserPoolClientRequest from required parameters

#### `newUpdateUserPoolClientRequest'`

``` purescript
newUpdateUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ClientName" :: NullOrUndefined (ClientNameType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) } -> { "UserPoolId" :: UserPoolIdType, "ClientId" :: ClientIdType, "ClientName" :: NullOrUndefined (ClientNameType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }) -> UpdateUserPoolClientRequest
```

Constructs UpdateUserPoolClientRequest's fields from required parameters

#### `UpdateUserPoolClientResponse`

``` purescript
newtype UpdateUserPoolClientResponse
  = UpdateUserPoolClientResponse { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }
```

<p>Represents the response from the server to the request to update the user pool client.</p>

##### Instances
``` purescript
Newtype UpdateUserPoolClientResponse _
Generic UpdateUserPoolClientResponse _
Show UpdateUserPoolClientResponse
Decode UpdateUserPoolClientResponse
Encode UpdateUserPoolClientResponse
```

#### `newUpdateUserPoolClientResponse`

``` purescript
newUpdateUserPoolClientResponse :: UpdateUserPoolClientResponse
```

Constructs UpdateUserPoolClientResponse from required parameters

#### `newUpdateUserPoolClientResponse'`

``` purescript
newUpdateUserPoolClientResponse' :: ({ "UserPoolClient" :: NullOrUndefined (UserPoolClientType) } -> { "UserPoolClient" :: NullOrUndefined (UserPoolClientType) }) -> UpdateUserPoolClientResponse
```

Constructs UpdateUserPoolClientResponse's fields from required parameters

#### `UpdateUserPoolRequest`

``` purescript
newtype UpdateUserPoolRequest
  = UpdateUserPoolRequest { "UserPoolId" :: UserPoolIdType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }
```

<p>Represents the request to update the user pool.</p>

##### Instances
``` purescript
Newtype UpdateUserPoolRequest _
Generic UpdateUserPoolRequest _
Show UpdateUserPoolRequest
Decode UpdateUserPoolRequest
Encode UpdateUserPoolRequest
```

#### `newUpdateUserPoolRequest`

``` purescript
newUpdateUserPoolRequest :: UserPoolIdType -> UpdateUserPoolRequest
```

Constructs UpdateUserPoolRequest from required parameters

#### `newUpdateUserPoolRequest'`

``` purescript
newUpdateUserPoolRequest' :: UserPoolIdType -> ({ "UserPoolId" :: UserPoolIdType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) } -> { "UserPoolId" :: UserPoolIdType, "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }) -> UpdateUserPoolRequest
```

Constructs UpdateUserPoolRequest's fields from required parameters

#### `UpdateUserPoolResponse`

``` purescript
newtype UpdateUserPoolResponse
  = UpdateUserPoolResponse NoArguments
```

<p>Represents the response from the server when you make a request to update the user pool.</p>

##### Instances
``` purescript
Newtype UpdateUserPoolResponse _
Generic UpdateUserPoolResponse _
Show UpdateUserPoolResponse
Decode UpdateUserPoolResponse
Encode UpdateUserPoolResponse
```

#### `UserContextDataType`

``` purescript
newtype UserContextDataType
  = UserContextDataType { "EncodedData" :: NullOrUndefined (StringType) }
```

<p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>

##### Instances
``` purescript
Newtype UserContextDataType _
Generic UserContextDataType _
Show UserContextDataType
Decode UserContextDataType
Encode UserContextDataType
```

#### `newUserContextDataType`

``` purescript
newUserContextDataType :: UserContextDataType
```

Constructs UserContextDataType from required parameters

#### `newUserContextDataType'`

``` purescript
newUserContextDataType' :: ({ "EncodedData" :: NullOrUndefined (StringType) } -> { "EncodedData" :: NullOrUndefined (StringType) }) -> UserContextDataType
```

Constructs UserContextDataType's fields from required parameters

#### `UserFilterType`

``` purescript
newtype UserFilterType
  = UserFilterType String
```

##### Instances
``` purescript
Newtype UserFilterType _
Generic UserFilterType _
Show UserFilterType
Decode UserFilterType
Encode UserFilterType
```

#### `UserImportInProgressException`

``` purescript
newtype UserImportInProgressException
  = UserImportInProgressException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>

##### Instances
``` purescript
Newtype UserImportInProgressException _
Generic UserImportInProgressException _
Show UserImportInProgressException
Decode UserImportInProgressException
Encode UserImportInProgressException
```

#### `newUserImportInProgressException`

``` purescript
newUserImportInProgressException :: UserImportInProgressException
```

Constructs UserImportInProgressException from required parameters

#### `newUserImportInProgressException'`

``` purescript
newUserImportInProgressException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserImportInProgressException
```

Constructs UserImportInProgressException's fields from required parameters

#### `UserImportJobIdType`

``` purescript
newtype UserImportJobIdType
  = UserImportJobIdType String
```

##### Instances
``` purescript
Newtype UserImportJobIdType _
Generic UserImportJobIdType _
Show UserImportJobIdType
Decode UserImportJobIdType
Encode UserImportJobIdType
```

#### `UserImportJobNameType`

``` purescript
newtype UserImportJobNameType
  = UserImportJobNameType String
```

##### Instances
``` purescript
Newtype UserImportJobNameType _
Generic UserImportJobNameType _
Show UserImportJobNameType
Decode UserImportJobNameType
Encode UserImportJobNameType
```

#### `UserImportJobStatusType`

``` purescript
newtype UserImportJobStatusType
  = UserImportJobStatusType String
```

##### Instances
``` purescript
Newtype UserImportJobStatusType _
Generic UserImportJobStatusType _
Show UserImportJobStatusType
Decode UserImportJobStatusType
Encode UserImportJobStatusType
```

#### `UserImportJobType`

``` purescript
newtype UserImportJobType
  = UserImportJobType { "JobName" :: NullOrUndefined (UserImportJobNameType), "JobId" :: NullOrUndefined (UserImportJobIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "PreSignedUrl" :: NullOrUndefined (PreSignedUrlType), "CreationDate" :: NullOrUndefined (DateType), "StartDate" :: NullOrUndefined (DateType), "CompletionDate" :: NullOrUndefined (DateType), "Status" :: NullOrUndefined (UserImportJobStatusType), "CloudWatchLogsRoleArn" :: NullOrUndefined (ArnType), "ImportedUsers" :: NullOrUndefined (LongType), "SkippedUsers" :: NullOrUndefined (LongType), "FailedUsers" :: NullOrUndefined (LongType), "CompletionMessage" :: NullOrUndefined (CompletionMessageType) }
```

<p>The user import job type.</p>

##### Instances
``` purescript
Newtype UserImportJobType _
Generic UserImportJobType _
Show UserImportJobType
Decode UserImportJobType
Encode UserImportJobType
```

#### `newUserImportJobType`

``` purescript
newUserImportJobType :: UserImportJobType
```

Constructs UserImportJobType from required parameters

#### `newUserImportJobType'`

``` purescript
newUserImportJobType' :: ({ "JobName" :: NullOrUndefined (UserImportJobNameType), "JobId" :: NullOrUndefined (UserImportJobIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "PreSignedUrl" :: NullOrUndefined (PreSignedUrlType), "CreationDate" :: NullOrUndefined (DateType), "StartDate" :: NullOrUndefined (DateType), "CompletionDate" :: NullOrUndefined (DateType), "Status" :: NullOrUndefined (UserImportJobStatusType), "CloudWatchLogsRoleArn" :: NullOrUndefined (ArnType), "ImportedUsers" :: NullOrUndefined (LongType), "SkippedUsers" :: NullOrUndefined (LongType), "FailedUsers" :: NullOrUndefined (LongType), "CompletionMessage" :: NullOrUndefined (CompletionMessageType) } -> { "JobName" :: NullOrUndefined (UserImportJobNameType), "JobId" :: NullOrUndefined (UserImportJobIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "PreSignedUrl" :: NullOrUndefined (PreSignedUrlType), "CreationDate" :: NullOrUndefined (DateType), "StartDate" :: NullOrUndefined (DateType), "CompletionDate" :: NullOrUndefined (DateType), "Status" :: NullOrUndefined (UserImportJobStatusType), "CloudWatchLogsRoleArn" :: NullOrUndefined (ArnType), "ImportedUsers" :: NullOrUndefined (LongType), "SkippedUsers" :: NullOrUndefined (LongType), "FailedUsers" :: NullOrUndefined (LongType), "CompletionMessage" :: NullOrUndefined (CompletionMessageType) }) -> UserImportJobType
```

Constructs UserImportJobType's fields from required parameters

#### `UserImportJobsListType`

``` purescript
newtype UserImportJobsListType
  = UserImportJobsListType (Array UserImportJobType)
```

##### Instances
``` purescript
Newtype UserImportJobsListType _
Generic UserImportJobsListType _
Show UserImportJobsListType
Decode UserImportJobsListType
Encode UserImportJobsListType
```

#### `UserLambdaValidationException`

``` purescript
newtype UserLambdaValidationException
  = UserLambdaValidationException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>

##### Instances
``` purescript
Newtype UserLambdaValidationException _
Generic UserLambdaValidationException _
Show UserLambdaValidationException
Decode UserLambdaValidationException
Encode UserLambdaValidationException
```

#### `newUserLambdaValidationException`

``` purescript
newUserLambdaValidationException :: UserLambdaValidationException
```

Constructs UserLambdaValidationException from required parameters

#### `newUserLambdaValidationException'`

``` purescript
newUserLambdaValidationException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserLambdaValidationException
```

Constructs UserLambdaValidationException's fields from required parameters

#### `UserMFASettingListType`

``` purescript
newtype UserMFASettingListType
  = UserMFASettingListType (Array StringType)
```

##### Instances
``` purescript
Newtype UserMFASettingListType _
Generic UserMFASettingListType _
Show UserMFASettingListType
Decode UserMFASettingListType
Encode UserMFASettingListType
```

#### `UserNotConfirmedException`

``` purescript
newtype UserNotConfirmedException
  = UserNotConfirmedException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user is not confirmed successfully.</p>

##### Instances
``` purescript
Newtype UserNotConfirmedException _
Generic UserNotConfirmedException _
Show UserNotConfirmedException
Decode UserNotConfirmedException
Encode UserNotConfirmedException
```

#### `newUserNotConfirmedException`

``` purescript
newUserNotConfirmedException :: UserNotConfirmedException
```

Constructs UserNotConfirmedException from required parameters

#### `newUserNotConfirmedException'`

``` purescript
newUserNotConfirmedException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserNotConfirmedException
```

Constructs UserNotConfirmedException's fields from required parameters

#### `UserNotFoundException`

``` purescript
newtype UserNotFoundException
  = UserNotFoundException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user is not found.</p>

##### Instances
``` purescript
Newtype UserNotFoundException _
Generic UserNotFoundException _
Show UserNotFoundException
Decode UserNotFoundException
Encode UserNotFoundException
```

#### `newUserNotFoundException`

``` purescript
newUserNotFoundException :: UserNotFoundException
```

Constructs UserNotFoundException from required parameters

#### `newUserNotFoundException'`

``` purescript
newUserNotFoundException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserNotFoundException
```

Constructs UserNotFoundException's fields from required parameters

#### `UserPoolAddOnNotEnabledException`

``` purescript
newtype UserPoolAddOnNotEnabledException
  = UserPoolAddOnNotEnabledException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when user pool add-ons are not enabled.</p>

##### Instances
``` purescript
Newtype UserPoolAddOnNotEnabledException _
Generic UserPoolAddOnNotEnabledException _
Show UserPoolAddOnNotEnabledException
Decode UserPoolAddOnNotEnabledException
Encode UserPoolAddOnNotEnabledException
```

#### `newUserPoolAddOnNotEnabledException`

``` purescript
newUserPoolAddOnNotEnabledException :: UserPoolAddOnNotEnabledException
```

Constructs UserPoolAddOnNotEnabledException from required parameters

#### `newUserPoolAddOnNotEnabledException'`

``` purescript
newUserPoolAddOnNotEnabledException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserPoolAddOnNotEnabledException
```

Constructs UserPoolAddOnNotEnabledException's fields from required parameters

#### `UserPoolAddOnsType`

``` purescript
newtype UserPoolAddOnsType
  = UserPoolAddOnsType { "AdvancedSecurityMode" :: AdvancedSecurityModeType }
```

<p>The user pool add-ons type.</p>

##### Instances
``` purescript
Newtype UserPoolAddOnsType _
Generic UserPoolAddOnsType _
Show UserPoolAddOnsType
Decode UserPoolAddOnsType
Encode UserPoolAddOnsType
```

#### `newUserPoolAddOnsType`

``` purescript
newUserPoolAddOnsType :: AdvancedSecurityModeType -> UserPoolAddOnsType
```

Constructs UserPoolAddOnsType from required parameters

#### `newUserPoolAddOnsType'`

``` purescript
newUserPoolAddOnsType' :: AdvancedSecurityModeType -> ({ "AdvancedSecurityMode" :: AdvancedSecurityModeType } -> { "AdvancedSecurityMode" :: AdvancedSecurityModeType }) -> UserPoolAddOnsType
```

Constructs UserPoolAddOnsType's fields from required parameters

#### `UserPoolClientDescription`

``` purescript
newtype UserPoolClientDescription
  = UserPoolClientDescription { "ClientId" :: NullOrUndefined (ClientIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType) }
```

<p>The description of the user pool client.</p>

##### Instances
``` purescript
Newtype UserPoolClientDescription _
Generic UserPoolClientDescription _
Show UserPoolClientDescription
Decode UserPoolClientDescription
Encode UserPoolClientDescription
```

#### `newUserPoolClientDescription`

``` purescript
newUserPoolClientDescription :: UserPoolClientDescription
```

Constructs UserPoolClientDescription from required parameters

#### `newUserPoolClientDescription'`

``` purescript
newUserPoolClientDescription' :: ({ "ClientId" :: NullOrUndefined (ClientIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType) } -> { "ClientId" :: NullOrUndefined (ClientIdType), "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType) }) -> UserPoolClientDescription
```

Constructs UserPoolClientDescription's fields from required parameters

#### `UserPoolClientListType`

``` purescript
newtype UserPoolClientListType
  = UserPoolClientListType (Array UserPoolClientDescription)
```

##### Instances
``` purescript
Newtype UserPoolClientListType _
Generic UserPoolClientListType _
Show UserPoolClientListType
Decode UserPoolClientListType
Encode UserPoolClientListType
```

#### `UserPoolClientType`

``` purescript
newtype UserPoolClientType
  = UserPoolClientType { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType), "ClientId" :: NullOrUndefined (ClientIdType), "ClientSecret" :: NullOrUndefined (ClientSecretType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }
```

<p>Contains information about a user pool client.</p>

##### Instances
``` purescript
Newtype UserPoolClientType _
Generic UserPoolClientType _
Show UserPoolClientType
Decode UserPoolClientType
Encode UserPoolClientType
```

#### `newUserPoolClientType`

``` purescript
newUserPoolClientType :: UserPoolClientType
```

Constructs UserPoolClientType from required parameters

#### `newUserPoolClientType'`

``` purescript
newUserPoolClientType' :: ({ "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType), "ClientId" :: NullOrUndefined (ClientIdType), "ClientSecret" :: NullOrUndefined (ClientSecretType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) } -> { "UserPoolId" :: NullOrUndefined (UserPoolIdType), "ClientName" :: NullOrUndefined (ClientNameType), "ClientId" :: NullOrUndefined (ClientIdType), "ClientSecret" :: NullOrUndefined (ClientSecretType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "RefreshTokenValidity" :: NullOrUndefined (RefreshTokenValidityType), "ReadAttributes" :: NullOrUndefined (ClientPermissionListType), "WriteAttributes" :: NullOrUndefined (ClientPermissionListType), "ExplicitAuthFlows" :: NullOrUndefined (ExplicitAuthFlowsListType), "SupportedIdentityProviders" :: NullOrUndefined (SupportedIdentityProvidersListType), "CallbackURLs" :: NullOrUndefined (CallbackURLsListType), "LogoutURLs" :: NullOrUndefined (LogoutURLsListType), "DefaultRedirectURI" :: NullOrUndefined (RedirectUrlType), "AllowedOAuthFlows" :: NullOrUndefined (OAuthFlowsType), "AllowedOAuthScopes" :: NullOrUndefined (ScopeListType), "AllowedOAuthFlowsUserPoolClient" :: NullOrUndefined (BooleanType), "AnalyticsConfiguration" :: NullOrUndefined (AnalyticsConfigurationType) }) -> UserPoolClientType
```

Constructs UserPoolClientType's fields from required parameters

#### `UserPoolDescriptionType`

``` purescript
newtype UserPoolDescriptionType
  = UserPoolDescriptionType { "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }
```

<p>A user pool description.</p>

##### Instances
``` purescript
Newtype UserPoolDescriptionType _
Generic UserPoolDescriptionType _
Show UserPoolDescriptionType
Decode UserPoolDescriptionType
Encode UserPoolDescriptionType
```

#### `newUserPoolDescriptionType`

``` purescript
newUserPoolDescriptionType :: UserPoolDescriptionType
```

Constructs UserPoolDescriptionType from required parameters

#### `newUserPoolDescriptionType'`

``` purescript
newUserPoolDescriptionType' :: ({ "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) } -> { "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType) }) -> UserPoolDescriptionType
```

Constructs UserPoolDescriptionType's fields from required parameters

#### `UserPoolIdType`

``` purescript
newtype UserPoolIdType
  = UserPoolIdType String
```

##### Instances
``` purescript
Newtype UserPoolIdType _
Generic UserPoolIdType _
Show UserPoolIdType
Decode UserPoolIdType
Encode UserPoolIdType
```

#### `UserPoolListType`

``` purescript
newtype UserPoolListType
  = UserPoolListType (Array UserPoolDescriptionType)
```

##### Instances
``` purescript
Newtype UserPoolListType _
Generic UserPoolListType _
Show UserPoolListType
Decode UserPoolListType
Encode UserPoolListType
```

#### `UserPoolMfaType`

``` purescript
newtype UserPoolMfaType
  = UserPoolMfaType String
```

##### Instances
``` purescript
Newtype UserPoolMfaType _
Generic UserPoolMfaType _
Show UserPoolMfaType
Decode UserPoolMfaType
Encode UserPoolMfaType
```

#### `UserPoolNameType`

``` purescript
newtype UserPoolNameType
  = UserPoolNameType String
```

##### Instances
``` purescript
Newtype UserPoolNameType _
Generic UserPoolNameType _
Show UserPoolNameType
Decode UserPoolNameType
Encode UserPoolNameType
```

#### `UserPoolPolicyType`

``` purescript
newtype UserPoolPolicyType
  = UserPoolPolicyType { "PasswordPolicy" :: NullOrUndefined (PasswordPolicyType) }
```

<p>The policy associated with a user pool.</p>

##### Instances
``` purescript
Newtype UserPoolPolicyType _
Generic UserPoolPolicyType _
Show UserPoolPolicyType
Decode UserPoolPolicyType
Encode UserPoolPolicyType
```

#### `newUserPoolPolicyType`

``` purescript
newUserPoolPolicyType :: UserPoolPolicyType
```

Constructs UserPoolPolicyType from required parameters

#### `newUserPoolPolicyType'`

``` purescript
newUserPoolPolicyType' :: ({ "PasswordPolicy" :: NullOrUndefined (PasswordPolicyType) } -> { "PasswordPolicy" :: NullOrUndefined (PasswordPolicyType) }) -> UserPoolPolicyType
```

Constructs UserPoolPolicyType's fields from required parameters

#### `UserPoolTaggingException`

``` purescript
newtype UserPoolTaggingException
  = UserPoolTaggingException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when a user pool tag cannot be set or updated.</p>

##### Instances
``` purescript
Newtype UserPoolTaggingException _
Generic UserPoolTaggingException _
Show UserPoolTaggingException
Decode UserPoolTaggingException
Encode UserPoolTaggingException
```

#### `newUserPoolTaggingException`

``` purescript
newUserPoolTaggingException :: UserPoolTaggingException
```

Constructs UserPoolTaggingException from required parameters

#### `newUserPoolTaggingException'`

``` purescript
newUserPoolTaggingException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UserPoolTaggingException
```

Constructs UserPoolTaggingException's fields from required parameters

#### `UserPoolTagsType`

``` purescript
newtype UserPoolTagsType
  = UserPoolTagsType (StrMap StringType)
```

##### Instances
``` purescript
Newtype UserPoolTagsType _
Generic UserPoolTagsType _
Show UserPoolTagsType
Decode UserPoolTagsType
Encode UserPoolTagsType
```

#### `UserPoolType`

``` purescript
newtype UserPoolType
  = UserPoolType { "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "SchemaAttributes" :: NullOrUndefined (SchemaAttributesListType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EstimatedNumberOfUsers" :: NullOrUndefined (IntegerType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "SmsConfigurationFailure" :: NullOrUndefined (StringType), "EmailConfigurationFailure" :: NullOrUndefined (StringType), "Domain" :: NullOrUndefined (DomainType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }
```

<p>A container for information about the user pool.</p>

##### Instances
``` purescript
Newtype UserPoolType _
Generic UserPoolType _
Show UserPoolType
Decode UserPoolType
Encode UserPoolType
```

#### `newUserPoolType`

``` purescript
newUserPoolType :: UserPoolType
```

Constructs UserPoolType from required parameters

#### `newUserPoolType'`

``` purescript
newUserPoolType' :: ({ "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "SchemaAttributes" :: NullOrUndefined (SchemaAttributesListType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EstimatedNumberOfUsers" :: NullOrUndefined (IntegerType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "SmsConfigurationFailure" :: NullOrUndefined (StringType), "EmailConfigurationFailure" :: NullOrUndefined (StringType), "Domain" :: NullOrUndefined (DomainType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) } -> { "Id" :: NullOrUndefined (UserPoolIdType), "Name" :: NullOrUndefined (UserPoolNameType), "Policies" :: NullOrUndefined (UserPoolPolicyType), "LambdaConfig" :: NullOrUndefined (LambdaConfigType), "Status" :: NullOrUndefined (StatusType), "LastModifiedDate" :: NullOrUndefined (DateType), "CreationDate" :: NullOrUndefined (DateType), "SchemaAttributes" :: NullOrUndefined (SchemaAttributesListType), "AutoVerifiedAttributes" :: NullOrUndefined (VerifiedAttributesListType), "AliasAttributes" :: NullOrUndefined (AliasAttributesListType), "UsernameAttributes" :: NullOrUndefined (UsernameAttributesListType), "SmsVerificationMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailVerificationMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailVerificationSubject" :: NullOrUndefined (EmailVerificationSubjectType), "VerificationMessageTemplate" :: NullOrUndefined (VerificationMessageTemplateType), "SmsAuthenticationMessage" :: NullOrUndefined (SmsVerificationMessageType), "MfaConfiguration" :: NullOrUndefined (UserPoolMfaType), "DeviceConfiguration" :: NullOrUndefined (DeviceConfigurationType), "EstimatedNumberOfUsers" :: NullOrUndefined (IntegerType), "EmailConfiguration" :: NullOrUndefined (EmailConfigurationType), "SmsConfiguration" :: NullOrUndefined (SmsConfigurationType), "UserPoolTags" :: NullOrUndefined (UserPoolTagsType), "SmsConfigurationFailure" :: NullOrUndefined (StringType), "EmailConfigurationFailure" :: NullOrUndefined (StringType), "Domain" :: NullOrUndefined (DomainType), "AdminCreateUserConfig" :: NullOrUndefined (AdminCreateUserConfigType), "UserPoolAddOns" :: NullOrUndefined (UserPoolAddOnsType) }) -> UserPoolType
```

Constructs UserPoolType's fields from required parameters

#### `UserStatusType`

``` purescript
newtype UserStatusType
  = UserStatusType String
```

##### Instances
``` purescript
Newtype UserStatusType _
Generic UserStatusType _
Show UserStatusType
Decode UserStatusType
Encode UserStatusType
```

#### `UserType`

``` purescript
newtype UserType
  = UserType { "Username" :: NullOrUndefined (UsernameType), "Attributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType) }
```

<p>The user type.</p>

##### Instances
``` purescript
Newtype UserType _
Generic UserType _
Show UserType
Decode UserType
Encode UserType
```

#### `newUserType`

``` purescript
newUserType :: UserType
```

Constructs UserType from required parameters

#### `newUserType'`

``` purescript
newUserType' :: ({ "Username" :: NullOrUndefined (UsernameType), "Attributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType) } -> { "Username" :: NullOrUndefined (UsernameType), "Attributes" :: NullOrUndefined (AttributeListType), "UserCreateDate" :: NullOrUndefined (DateType), "UserLastModifiedDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "UserStatus" :: NullOrUndefined (UserStatusType), "MFAOptions" :: NullOrUndefined (MFAOptionListType) }) -> UserType
```

Constructs UserType's fields from required parameters

#### `UsernameAttributeType`

``` purescript
newtype UsernameAttributeType
  = UsernameAttributeType String
```

##### Instances
``` purescript
Newtype UsernameAttributeType _
Generic UsernameAttributeType _
Show UsernameAttributeType
Decode UsernameAttributeType
Encode UsernameAttributeType
```

#### `UsernameAttributesListType`

``` purescript
newtype UsernameAttributesListType
  = UsernameAttributesListType (Array UsernameAttributeType)
```

##### Instances
``` purescript
Newtype UsernameAttributesListType _
Generic UsernameAttributesListType _
Show UsernameAttributesListType
Decode UsernameAttributesListType
Encode UsernameAttributesListType
```

#### `UsernameExistsException`

``` purescript
newtype UsernameExistsException
  = UsernameExistsException { message :: NullOrUndefined (MessageType) }
```

<p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>

##### Instances
``` purescript
Newtype UsernameExistsException _
Generic UsernameExistsException _
Show UsernameExistsException
Decode UsernameExistsException
Encode UsernameExistsException
```

#### `newUsernameExistsException`

``` purescript
newUsernameExistsException :: UsernameExistsException
```

Constructs UsernameExistsException from required parameters

#### `newUsernameExistsException'`

``` purescript
newUsernameExistsException' :: ({ message :: NullOrUndefined (MessageType) } -> { message :: NullOrUndefined (MessageType) }) -> UsernameExistsException
```

Constructs UsernameExistsException's fields from required parameters

#### `UsernameType`

``` purescript
newtype UsernameType
  = UsernameType String
```

##### Instances
``` purescript
Newtype UsernameType _
Generic UsernameType _
Show UsernameType
Decode UsernameType
Encode UsernameType
```

#### `UsersListType`

``` purescript
newtype UsersListType
  = UsersListType (Array UserType)
```

##### Instances
``` purescript
Newtype UsersListType _
Generic UsersListType _
Show UsersListType
Decode UsersListType
Encode UsersListType
```

#### `VerificationMessageTemplateType`

``` purescript
newtype VerificationMessageTemplateType
  = VerificationMessageTemplateType { "SmsMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType), "EmailMessageByLink" :: NullOrUndefined (EmailVerificationMessageByLinkType), "EmailSubjectByLink" :: NullOrUndefined (EmailVerificationSubjectByLinkType), "DefaultEmailOption" :: NullOrUndefined (DefaultEmailOptionType) }
```

<p>The template for verification messages.</p>

##### Instances
``` purescript
Newtype VerificationMessageTemplateType _
Generic VerificationMessageTemplateType _
Show VerificationMessageTemplateType
Decode VerificationMessageTemplateType
Encode VerificationMessageTemplateType
```

#### `newVerificationMessageTemplateType`

``` purescript
newVerificationMessageTemplateType :: VerificationMessageTemplateType
```

Constructs VerificationMessageTemplateType from required parameters

#### `newVerificationMessageTemplateType'`

``` purescript
newVerificationMessageTemplateType' :: ({ "SmsMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType), "EmailMessageByLink" :: NullOrUndefined (EmailVerificationMessageByLinkType), "EmailSubjectByLink" :: NullOrUndefined (EmailVerificationSubjectByLinkType), "DefaultEmailOption" :: NullOrUndefined (DefaultEmailOptionType) } -> { "SmsMessage" :: NullOrUndefined (SmsVerificationMessageType), "EmailMessage" :: NullOrUndefined (EmailVerificationMessageType), "EmailSubject" :: NullOrUndefined (EmailVerificationSubjectType), "EmailMessageByLink" :: NullOrUndefined (EmailVerificationMessageByLinkType), "EmailSubjectByLink" :: NullOrUndefined (EmailVerificationSubjectByLinkType), "DefaultEmailOption" :: NullOrUndefined (DefaultEmailOptionType) }) -> VerificationMessageTemplateType
```

Constructs VerificationMessageTemplateType's fields from required parameters

#### `VerifiedAttributeType`

``` purescript
newtype VerifiedAttributeType
  = VerifiedAttributeType String
```

##### Instances
``` purescript
Newtype VerifiedAttributeType _
Generic VerifiedAttributeType _
Show VerifiedAttributeType
Decode VerifiedAttributeType
Encode VerifiedAttributeType
```

#### `VerifiedAttributesListType`

``` purescript
newtype VerifiedAttributesListType
  = VerifiedAttributesListType (Array VerifiedAttributeType)
```

##### Instances
``` purescript
Newtype VerifiedAttributesListType _
Generic VerifiedAttributesListType _
Show VerifiedAttributesListType
Decode VerifiedAttributesListType
Encode VerifiedAttributesListType
```

#### `VerifySoftwareTokenRequest`

``` purescript
newtype VerifySoftwareTokenRequest
  = VerifySoftwareTokenRequest { "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType), "UserCode" :: SoftwareTokenMFAUserCodeType, "FriendlyDeviceName" :: NullOrUndefined (StringType) }
```

##### Instances
``` purescript
Newtype VerifySoftwareTokenRequest _
Generic VerifySoftwareTokenRequest _
Show VerifySoftwareTokenRequest
Decode VerifySoftwareTokenRequest
Encode VerifySoftwareTokenRequest
```

#### `newVerifySoftwareTokenRequest`

``` purescript
newVerifySoftwareTokenRequest :: SoftwareTokenMFAUserCodeType -> VerifySoftwareTokenRequest
```

Constructs VerifySoftwareTokenRequest from required parameters

#### `newVerifySoftwareTokenRequest'`

``` purescript
newVerifySoftwareTokenRequest' :: SoftwareTokenMFAUserCodeType -> ({ "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType), "UserCode" :: SoftwareTokenMFAUserCodeType, "FriendlyDeviceName" :: NullOrUndefined (StringType) } -> { "AccessToken" :: NullOrUndefined (TokenModelType), "Session" :: NullOrUndefined (SessionType), "UserCode" :: SoftwareTokenMFAUserCodeType, "FriendlyDeviceName" :: NullOrUndefined (StringType) }) -> VerifySoftwareTokenRequest
```

Constructs VerifySoftwareTokenRequest's fields from required parameters

#### `VerifySoftwareTokenResponse`

``` purescript
newtype VerifySoftwareTokenResponse
  = VerifySoftwareTokenResponse { "Status" :: NullOrUndefined (VerifySoftwareTokenResponseType), "Session" :: NullOrUndefined (SessionType) }
```

##### Instances
``` purescript
Newtype VerifySoftwareTokenResponse _
Generic VerifySoftwareTokenResponse _
Show VerifySoftwareTokenResponse
Decode VerifySoftwareTokenResponse
Encode VerifySoftwareTokenResponse
```

#### `newVerifySoftwareTokenResponse`

``` purescript
newVerifySoftwareTokenResponse :: VerifySoftwareTokenResponse
```

Constructs VerifySoftwareTokenResponse from required parameters

#### `newVerifySoftwareTokenResponse'`

``` purescript
newVerifySoftwareTokenResponse' :: ({ "Status" :: NullOrUndefined (VerifySoftwareTokenResponseType), "Session" :: NullOrUndefined (SessionType) } -> { "Status" :: NullOrUndefined (VerifySoftwareTokenResponseType), "Session" :: NullOrUndefined (SessionType) }) -> VerifySoftwareTokenResponse
```

Constructs VerifySoftwareTokenResponse's fields from required parameters

#### `VerifySoftwareTokenResponseType`

``` purescript
newtype VerifySoftwareTokenResponseType
  = VerifySoftwareTokenResponseType String
```

##### Instances
``` purescript
Newtype VerifySoftwareTokenResponseType _
Generic VerifySoftwareTokenResponseType _
Show VerifySoftwareTokenResponseType
Decode VerifySoftwareTokenResponseType
Encode VerifySoftwareTokenResponseType
```

#### `VerifyUserAttributeRequest`

``` purescript
newtype VerifyUserAttributeRequest
  = VerifyUserAttributeRequest { "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType, "Code" :: ConfirmationCodeType }
```

<p>Represents the request to verify user attributes.</p>

##### Instances
``` purescript
Newtype VerifyUserAttributeRequest _
Generic VerifyUserAttributeRequest _
Show VerifyUserAttributeRequest
Decode VerifyUserAttributeRequest
Encode VerifyUserAttributeRequest
```

#### `newVerifyUserAttributeRequest`

``` purescript
newVerifyUserAttributeRequest :: TokenModelType -> AttributeNameType -> ConfirmationCodeType -> VerifyUserAttributeRequest
```

Constructs VerifyUserAttributeRequest from required parameters

#### `newVerifyUserAttributeRequest'`

``` purescript
newVerifyUserAttributeRequest' :: TokenModelType -> AttributeNameType -> ConfirmationCodeType -> ({ "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType, "Code" :: ConfirmationCodeType } -> { "AccessToken" :: TokenModelType, "AttributeName" :: AttributeNameType, "Code" :: ConfirmationCodeType }) -> VerifyUserAttributeRequest
```

Constructs VerifyUserAttributeRequest's fields from required parameters

#### `VerifyUserAttributeResponse`

``` purescript
newtype VerifyUserAttributeResponse
  = VerifyUserAttributeResponse NoArguments
```

<p>A container representing the response from the server from the request to verify user attributes.</p>

##### Instances
``` purescript
Newtype VerifyUserAttributeResponse _
Generic VerifyUserAttributeResponse _
Show VerifyUserAttributeResponse
Decode VerifyUserAttributeResponse
Encode VerifyUserAttributeResponse
```


