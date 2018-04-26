
module AWS.CognitoIdentityServiceProvider.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AWSAccountIdType = AWSAccountIdType String
derive instance newtypeAWSAccountIdType :: Newtype AWSAccountIdType _
derive instance repGenericAWSAccountIdType :: Generic AWSAccountIdType _
instance showAWSAccountIdType :: Show AWSAccountIdType where show = genericShow
instance decodeAWSAccountIdType :: Decode AWSAccountIdType where decode = genericDecode options
instance encodeAWSAccountIdType :: Encode AWSAccountIdType where encode = genericEncode options



newtype AccountTakeoverActionNotifyType = AccountTakeoverActionNotifyType Boolean
derive instance newtypeAccountTakeoverActionNotifyType :: Newtype AccountTakeoverActionNotifyType _
derive instance repGenericAccountTakeoverActionNotifyType :: Generic AccountTakeoverActionNotifyType _
instance showAccountTakeoverActionNotifyType :: Show AccountTakeoverActionNotifyType where show = genericShow
instance decodeAccountTakeoverActionNotifyType :: Decode AccountTakeoverActionNotifyType where decode = genericDecode options
instance encodeAccountTakeoverActionNotifyType :: Encode AccountTakeoverActionNotifyType where encode = genericEncode options



-- | <p>Account takeover action type.</p>
newtype AccountTakeoverActionType = AccountTakeoverActionType 
  { "Notify" :: (AccountTakeoverActionNotifyType)
  , "EventAction" :: (AccountTakeoverEventActionType)
  }
derive instance newtypeAccountTakeoverActionType :: Newtype AccountTakeoverActionType _
derive instance repGenericAccountTakeoverActionType :: Generic AccountTakeoverActionType _
instance showAccountTakeoverActionType :: Show AccountTakeoverActionType where show = genericShow
instance decodeAccountTakeoverActionType :: Decode AccountTakeoverActionType where decode = genericDecode options
instance encodeAccountTakeoverActionType :: Encode AccountTakeoverActionType where encode = genericEncode options

-- | Constructs AccountTakeoverActionType from required parameters
newAccountTakeoverActionType :: AccountTakeoverEventActionType -> AccountTakeoverActionNotifyType -> AccountTakeoverActionType
newAccountTakeoverActionType _EventAction _Notify = AccountTakeoverActionType { "EventAction": _EventAction, "Notify": _Notify }

-- | Constructs AccountTakeoverActionType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountTakeoverActionType' :: AccountTakeoverEventActionType -> AccountTakeoverActionNotifyType -> ( { "Notify" :: (AccountTakeoverActionNotifyType) , "EventAction" :: (AccountTakeoverEventActionType) } -> {"Notify" :: (AccountTakeoverActionNotifyType) , "EventAction" :: (AccountTakeoverEventActionType) } ) -> AccountTakeoverActionType
newAccountTakeoverActionType' _EventAction _Notify customize = (AccountTakeoverActionType <<< customize) { "EventAction": _EventAction, "Notify": _Notify }



-- | <p>Account takeover actions type.</p>
newtype AccountTakeoverActionsType = AccountTakeoverActionsType 
  { "LowAction" :: Maybe (AccountTakeoverActionType)
  , "MediumAction" :: Maybe (AccountTakeoverActionType)
  , "HighAction" :: Maybe (AccountTakeoverActionType)
  }
derive instance newtypeAccountTakeoverActionsType :: Newtype AccountTakeoverActionsType _
derive instance repGenericAccountTakeoverActionsType :: Generic AccountTakeoverActionsType _
instance showAccountTakeoverActionsType :: Show AccountTakeoverActionsType where show = genericShow
instance decodeAccountTakeoverActionsType :: Decode AccountTakeoverActionsType where decode = genericDecode options
instance encodeAccountTakeoverActionsType :: Encode AccountTakeoverActionsType where encode = genericEncode options

-- | Constructs AccountTakeoverActionsType from required parameters
newAccountTakeoverActionsType :: AccountTakeoverActionsType
newAccountTakeoverActionsType  = AccountTakeoverActionsType { "HighAction": Nothing, "LowAction": Nothing, "MediumAction": Nothing }

-- | Constructs AccountTakeoverActionsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountTakeoverActionsType' :: ( { "LowAction" :: Maybe (AccountTakeoverActionType) , "MediumAction" :: Maybe (AccountTakeoverActionType) , "HighAction" :: Maybe (AccountTakeoverActionType) } -> {"LowAction" :: Maybe (AccountTakeoverActionType) , "MediumAction" :: Maybe (AccountTakeoverActionType) , "HighAction" :: Maybe (AccountTakeoverActionType) } ) -> AccountTakeoverActionsType
newAccountTakeoverActionsType'  customize = (AccountTakeoverActionsType <<< customize) { "HighAction": Nothing, "LowAction": Nothing, "MediumAction": Nothing }



newtype AccountTakeoverEventActionType = AccountTakeoverEventActionType String
derive instance newtypeAccountTakeoverEventActionType :: Newtype AccountTakeoverEventActionType _
derive instance repGenericAccountTakeoverEventActionType :: Generic AccountTakeoverEventActionType _
instance showAccountTakeoverEventActionType :: Show AccountTakeoverEventActionType where show = genericShow
instance decodeAccountTakeoverEventActionType :: Decode AccountTakeoverEventActionType where decode = genericDecode options
instance encodeAccountTakeoverEventActionType :: Encode AccountTakeoverEventActionType where encode = genericEncode options



-- | <p>Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.</p>
newtype AccountTakeoverRiskConfigurationType = AccountTakeoverRiskConfigurationType 
  { "NotifyConfiguration" :: Maybe (NotifyConfigurationType)
  , "Actions" :: (AccountTakeoverActionsType)
  }
derive instance newtypeAccountTakeoverRiskConfigurationType :: Newtype AccountTakeoverRiskConfigurationType _
derive instance repGenericAccountTakeoverRiskConfigurationType :: Generic AccountTakeoverRiskConfigurationType _
instance showAccountTakeoverRiskConfigurationType :: Show AccountTakeoverRiskConfigurationType where show = genericShow
instance decodeAccountTakeoverRiskConfigurationType :: Decode AccountTakeoverRiskConfigurationType where decode = genericDecode options
instance encodeAccountTakeoverRiskConfigurationType :: Encode AccountTakeoverRiskConfigurationType where encode = genericEncode options

-- | Constructs AccountTakeoverRiskConfigurationType from required parameters
newAccountTakeoverRiskConfigurationType :: AccountTakeoverActionsType -> AccountTakeoverRiskConfigurationType
newAccountTakeoverRiskConfigurationType _Actions = AccountTakeoverRiskConfigurationType { "Actions": _Actions, "NotifyConfiguration": Nothing }

-- | Constructs AccountTakeoverRiskConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountTakeoverRiskConfigurationType' :: AccountTakeoverActionsType -> ( { "NotifyConfiguration" :: Maybe (NotifyConfigurationType) , "Actions" :: (AccountTakeoverActionsType) } -> {"NotifyConfiguration" :: Maybe (NotifyConfigurationType) , "Actions" :: (AccountTakeoverActionsType) } ) -> AccountTakeoverRiskConfigurationType
newAccountTakeoverRiskConfigurationType' _Actions customize = (AccountTakeoverRiskConfigurationType <<< customize) { "Actions": _Actions, "NotifyConfiguration": Nothing }



-- | <p>Represents the request to add custom attributes.</p>
newtype AddCustomAttributesRequest = AddCustomAttributesRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "CustomAttributes" :: (CustomAttributesListType)
  }
derive instance newtypeAddCustomAttributesRequest :: Newtype AddCustomAttributesRequest _
derive instance repGenericAddCustomAttributesRequest :: Generic AddCustomAttributesRequest _
instance showAddCustomAttributesRequest :: Show AddCustomAttributesRequest where show = genericShow
instance decodeAddCustomAttributesRequest :: Decode AddCustomAttributesRequest where decode = genericDecode options
instance encodeAddCustomAttributesRequest :: Encode AddCustomAttributesRequest where encode = genericEncode options

-- | Constructs AddCustomAttributesRequest from required parameters
newAddCustomAttributesRequest :: CustomAttributesListType -> UserPoolIdType -> AddCustomAttributesRequest
newAddCustomAttributesRequest _CustomAttributes _UserPoolId = AddCustomAttributesRequest { "CustomAttributes": _CustomAttributes, "UserPoolId": _UserPoolId }

-- | Constructs AddCustomAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddCustomAttributesRequest' :: CustomAttributesListType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "CustomAttributes" :: (CustomAttributesListType) } -> {"UserPoolId" :: (UserPoolIdType) , "CustomAttributes" :: (CustomAttributesListType) } ) -> AddCustomAttributesRequest
newAddCustomAttributesRequest' _CustomAttributes _UserPoolId customize = (AddCustomAttributesRequest <<< customize) { "CustomAttributes": _CustomAttributes, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server for the request to add custom attributes.</p>
newtype AddCustomAttributesResponse = AddCustomAttributesResponse Types.NoArguments
derive instance newtypeAddCustomAttributesResponse :: Newtype AddCustomAttributesResponse _
derive instance repGenericAddCustomAttributesResponse :: Generic AddCustomAttributesResponse _
instance showAddCustomAttributesResponse :: Show AddCustomAttributesResponse where show = genericShow
instance decodeAddCustomAttributesResponse :: Decode AddCustomAttributesResponse where decode = genericDecode options
instance encodeAddCustomAttributesResponse :: Encode AddCustomAttributesResponse where encode = genericEncode options



newtype AdminAddUserToGroupRequest = AdminAddUserToGroupRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "GroupName" :: (GroupNameType)
  }
derive instance newtypeAdminAddUserToGroupRequest :: Newtype AdminAddUserToGroupRequest _
derive instance repGenericAdminAddUserToGroupRequest :: Generic AdminAddUserToGroupRequest _
instance showAdminAddUserToGroupRequest :: Show AdminAddUserToGroupRequest where show = genericShow
instance decodeAdminAddUserToGroupRequest :: Decode AdminAddUserToGroupRequest where decode = genericDecode options
instance encodeAdminAddUserToGroupRequest :: Encode AdminAddUserToGroupRequest where encode = genericEncode options

-- | Constructs AdminAddUserToGroupRequest from required parameters
newAdminAddUserToGroupRequest :: GroupNameType -> UserPoolIdType -> UsernameType -> AdminAddUserToGroupRequest
newAdminAddUserToGroupRequest _GroupName _UserPoolId _Username = AdminAddUserToGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminAddUserToGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminAddUserToGroupRequest' :: GroupNameType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "GroupName" :: (GroupNameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "GroupName" :: (GroupNameType) } ) -> AdminAddUserToGroupRequest
newAdminAddUserToGroupRequest' _GroupName _UserPoolId _Username customize = (AdminAddUserToGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the request to confirm user registration.</p>
newtype AdminConfirmSignUpRequest = AdminConfirmSignUpRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminConfirmSignUpRequest :: Newtype AdminConfirmSignUpRequest _
derive instance repGenericAdminConfirmSignUpRequest :: Generic AdminConfirmSignUpRequest _
instance showAdminConfirmSignUpRequest :: Show AdminConfirmSignUpRequest where show = genericShow
instance decodeAdminConfirmSignUpRequest :: Decode AdminConfirmSignUpRequest where decode = genericDecode options
instance encodeAdminConfirmSignUpRequest :: Encode AdminConfirmSignUpRequest where encode = genericEncode options

-- | Constructs AdminConfirmSignUpRequest from required parameters
newAdminConfirmSignUpRequest :: UserPoolIdType -> UsernameType -> AdminConfirmSignUpRequest
newAdminConfirmSignUpRequest _UserPoolId _Username = AdminConfirmSignUpRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminConfirmSignUpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminConfirmSignUpRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminConfirmSignUpRequest
newAdminConfirmSignUpRequest' _UserPoolId _Username customize = (AdminConfirmSignUpRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server for the request to confirm registration.</p>
newtype AdminConfirmSignUpResponse = AdminConfirmSignUpResponse Types.NoArguments
derive instance newtypeAdminConfirmSignUpResponse :: Newtype AdminConfirmSignUpResponse _
derive instance repGenericAdminConfirmSignUpResponse :: Generic AdminConfirmSignUpResponse _
instance showAdminConfirmSignUpResponse :: Show AdminConfirmSignUpResponse where show = genericShow
instance decodeAdminConfirmSignUpResponse :: Decode AdminConfirmSignUpResponse where decode = genericDecode options
instance encodeAdminConfirmSignUpResponse :: Encode AdminConfirmSignUpResponse where encode = genericEncode options



-- | <p>The configuration for creating a new user profile.</p>
newtype AdminCreateUserConfigType = AdminCreateUserConfigType 
  { "AllowAdminCreateUserOnly" :: Maybe (BooleanType)
  , "UnusedAccountValidityDays" :: Maybe (AdminCreateUserUnusedAccountValidityDaysType)
  , "InviteMessageTemplate" :: Maybe (MessageTemplateType)
  }
derive instance newtypeAdminCreateUserConfigType :: Newtype AdminCreateUserConfigType _
derive instance repGenericAdminCreateUserConfigType :: Generic AdminCreateUserConfigType _
instance showAdminCreateUserConfigType :: Show AdminCreateUserConfigType where show = genericShow
instance decodeAdminCreateUserConfigType :: Decode AdminCreateUserConfigType where decode = genericDecode options
instance encodeAdminCreateUserConfigType :: Encode AdminCreateUserConfigType where encode = genericEncode options

-- | Constructs AdminCreateUserConfigType from required parameters
newAdminCreateUserConfigType :: AdminCreateUserConfigType
newAdminCreateUserConfigType  = AdminCreateUserConfigType { "AllowAdminCreateUserOnly": Nothing, "InviteMessageTemplate": Nothing, "UnusedAccountValidityDays": Nothing }

-- | Constructs AdminCreateUserConfigType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminCreateUserConfigType' :: ( { "AllowAdminCreateUserOnly" :: Maybe (BooleanType) , "UnusedAccountValidityDays" :: Maybe (AdminCreateUserUnusedAccountValidityDaysType) , "InviteMessageTemplate" :: Maybe (MessageTemplateType) } -> {"AllowAdminCreateUserOnly" :: Maybe (BooleanType) , "UnusedAccountValidityDays" :: Maybe (AdminCreateUserUnusedAccountValidityDaysType) , "InviteMessageTemplate" :: Maybe (MessageTemplateType) } ) -> AdminCreateUserConfigType
newAdminCreateUserConfigType'  customize = (AdminCreateUserConfigType <<< customize) { "AllowAdminCreateUserOnly": Nothing, "InviteMessageTemplate": Nothing, "UnusedAccountValidityDays": Nothing }



-- | <p>Represents the request to create a user in the specified user pool.</p>
newtype AdminCreateUserRequest = AdminCreateUserRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "UserAttributes" :: Maybe (AttributeListType)
  , "ValidationData" :: Maybe (AttributeListType)
  , "TemporaryPassword" :: Maybe (PasswordType)
  , "ForceAliasCreation" :: Maybe (ForceAliasCreation)
  , "MessageAction" :: Maybe (MessageActionType)
  , "DesiredDeliveryMediums" :: Maybe (DeliveryMediumListType)
  }
derive instance newtypeAdminCreateUserRequest :: Newtype AdminCreateUserRequest _
derive instance repGenericAdminCreateUserRequest :: Generic AdminCreateUserRequest _
instance showAdminCreateUserRequest :: Show AdminCreateUserRequest where show = genericShow
instance decodeAdminCreateUserRequest :: Decode AdminCreateUserRequest where decode = genericDecode options
instance encodeAdminCreateUserRequest :: Encode AdminCreateUserRequest where encode = genericEncode options

-- | Constructs AdminCreateUserRequest from required parameters
newAdminCreateUserRequest :: UserPoolIdType -> UsernameType -> AdminCreateUserRequest
newAdminCreateUserRequest _UserPoolId _Username = AdminCreateUserRequest { "UserPoolId": _UserPoolId, "Username": _Username, "DesiredDeliveryMediums": Nothing, "ForceAliasCreation": Nothing, "MessageAction": Nothing, "TemporaryPassword": Nothing, "UserAttributes": Nothing, "ValidationData": Nothing }

-- | Constructs AdminCreateUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminCreateUserRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributes" :: Maybe (AttributeListType) , "ValidationData" :: Maybe (AttributeListType) , "TemporaryPassword" :: Maybe (PasswordType) , "ForceAliasCreation" :: Maybe (ForceAliasCreation) , "MessageAction" :: Maybe (MessageActionType) , "DesiredDeliveryMediums" :: Maybe (DeliveryMediumListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributes" :: Maybe (AttributeListType) , "ValidationData" :: Maybe (AttributeListType) , "TemporaryPassword" :: Maybe (PasswordType) , "ForceAliasCreation" :: Maybe (ForceAliasCreation) , "MessageAction" :: Maybe (MessageActionType) , "DesiredDeliveryMediums" :: Maybe (DeliveryMediumListType) } ) -> AdminCreateUserRequest
newAdminCreateUserRequest' _UserPoolId _Username customize = (AdminCreateUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username, "DesiredDeliveryMediums": Nothing, "ForceAliasCreation": Nothing, "MessageAction": Nothing, "TemporaryPassword": Nothing, "UserAttributes": Nothing, "ValidationData": Nothing }



-- | <p>Represents the response from the server to the request to create the user.</p>
newtype AdminCreateUserResponse = AdminCreateUserResponse 
  { "User" :: Maybe (UserType)
  }
derive instance newtypeAdminCreateUserResponse :: Newtype AdminCreateUserResponse _
derive instance repGenericAdminCreateUserResponse :: Generic AdminCreateUserResponse _
instance showAdminCreateUserResponse :: Show AdminCreateUserResponse where show = genericShow
instance decodeAdminCreateUserResponse :: Decode AdminCreateUserResponse where decode = genericDecode options
instance encodeAdminCreateUserResponse :: Encode AdminCreateUserResponse where encode = genericEncode options

-- | Constructs AdminCreateUserResponse from required parameters
newAdminCreateUserResponse :: AdminCreateUserResponse
newAdminCreateUserResponse  = AdminCreateUserResponse { "User": Nothing }

-- | Constructs AdminCreateUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminCreateUserResponse' :: ( { "User" :: Maybe (UserType) } -> {"User" :: Maybe (UserType) } ) -> AdminCreateUserResponse
newAdminCreateUserResponse'  customize = (AdminCreateUserResponse <<< customize) { "User": Nothing }



newtype AdminCreateUserUnusedAccountValidityDaysType = AdminCreateUserUnusedAccountValidityDaysType Int
derive instance newtypeAdminCreateUserUnusedAccountValidityDaysType :: Newtype AdminCreateUserUnusedAccountValidityDaysType _
derive instance repGenericAdminCreateUserUnusedAccountValidityDaysType :: Generic AdminCreateUserUnusedAccountValidityDaysType _
instance showAdminCreateUserUnusedAccountValidityDaysType :: Show AdminCreateUserUnusedAccountValidityDaysType where show = genericShow
instance decodeAdminCreateUserUnusedAccountValidityDaysType :: Decode AdminCreateUserUnusedAccountValidityDaysType where decode = genericDecode options
instance encodeAdminCreateUserUnusedAccountValidityDaysType :: Encode AdminCreateUserUnusedAccountValidityDaysType where encode = genericEncode options



-- | <p>Represents the request to delete user attributes as an administrator.</p>
newtype AdminDeleteUserAttributesRequest = AdminDeleteUserAttributesRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "UserAttributeNames" :: (AttributeNameListType)
  }
derive instance newtypeAdminDeleteUserAttributesRequest :: Newtype AdminDeleteUserAttributesRequest _
derive instance repGenericAdminDeleteUserAttributesRequest :: Generic AdminDeleteUserAttributesRequest _
instance showAdminDeleteUserAttributesRequest :: Show AdminDeleteUserAttributesRequest where show = genericShow
instance decodeAdminDeleteUserAttributesRequest :: Decode AdminDeleteUserAttributesRequest where decode = genericDecode options
instance encodeAdminDeleteUserAttributesRequest :: Encode AdminDeleteUserAttributesRequest where encode = genericEncode options

-- | Constructs AdminDeleteUserAttributesRequest from required parameters
newAdminDeleteUserAttributesRequest :: AttributeNameListType -> UserPoolIdType -> UsernameType -> AdminDeleteUserAttributesRequest
newAdminDeleteUserAttributesRequest _UserAttributeNames _UserPoolId _Username = AdminDeleteUserAttributesRequest { "UserAttributeNames": _UserAttributeNames, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminDeleteUserAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminDeleteUserAttributesRequest' :: AttributeNameListType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributeNames" :: (AttributeNameListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributeNames" :: (AttributeNameListType) } ) -> AdminDeleteUserAttributesRequest
newAdminDeleteUserAttributesRequest' _UserAttributeNames _UserPoolId _Username customize = (AdminDeleteUserAttributesRequest <<< customize) { "UserAttributeNames": _UserAttributeNames, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response received from the server for a request to delete user attributes.</p>
newtype AdminDeleteUserAttributesResponse = AdminDeleteUserAttributesResponse Types.NoArguments
derive instance newtypeAdminDeleteUserAttributesResponse :: Newtype AdminDeleteUserAttributesResponse _
derive instance repGenericAdminDeleteUserAttributesResponse :: Generic AdminDeleteUserAttributesResponse _
instance showAdminDeleteUserAttributesResponse :: Show AdminDeleteUserAttributesResponse where show = genericShow
instance decodeAdminDeleteUserAttributesResponse :: Decode AdminDeleteUserAttributesResponse where decode = genericDecode options
instance encodeAdminDeleteUserAttributesResponse :: Encode AdminDeleteUserAttributesResponse where encode = genericEncode options



-- | <p>Represents the request to delete a user as an administrator.</p>
newtype AdminDeleteUserRequest = AdminDeleteUserRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminDeleteUserRequest :: Newtype AdminDeleteUserRequest _
derive instance repGenericAdminDeleteUserRequest :: Generic AdminDeleteUserRequest _
instance showAdminDeleteUserRequest :: Show AdminDeleteUserRequest where show = genericShow
instance decodeAdminDeleteUserRequest :: Decode AdminDeleteUserRequest where decode = genericDecode options
instance encodeAdminDeleteUserRequest :: Encode AdminDeleteUserRequest where encode = genericEncode options

-- | Constructs AdminDeleteUserRequest from required parameters
newAdminDeleteUserRequest :: UserPoolIdType -> UsernameType -> AdminDeleteUserRequest
newAdminDeleteUserRequest _UserPoolId _Username = AdminDeleteUserRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminDeleteUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminDeleteUserRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminDeleteUserRequest
newAdminDeleteUserRequest' _UserPoolId _Username customize = (AdminDeleteUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



newtype AdminDisableProviderForUserRequest = AdminDisableProviderForUserRequest 
  { "UserPoolId" :: (StringType)
  , "User" :: (ProviderUserIdentifierType)
  }
derive instance newtypeAdminDisableProviderForUserRequest :: Newtype AdminDisableProviderForUserRequest _
derive instance repGenericAdminDisableProviderForUserRequest :: Generic AdminDisableProviderForUserRequest _
instance showAdminDisableProviderForUserRequest :: Show AdminDisableProviderForUserRequest where show = genericShow
instance decodeAdminDisableProviderForUserRequest :: Decode AdminDisableProviderForUserRequest where decode = genericDecode options
instance encodeAdminDisableProviderForUserRequest :: Encode AdminDisableProviderForUserRequest where encode = genericEncode options

-- | Constructs AdminDisableProviderForUserRequest from required parameters
newAdminDisableProviderForUserRequest :: ProviderUserIdentifierType -> StringType -> AdminDisableProviderForUserRequest
newAdminDisableProviderForUserRequest _User _UserPoolId = AdminDisableProviderForUserRequest { "User": _User, "UserPoolId": _UserPoolId }

-- | Constructs AdminDisableProviderForUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminDisableProviderForUserRequest' :: ProviderUserIdentifierType -> StringType -> ( { "UserPoolId" :: (StringType) , "User" :: (ProviderUserIdentifierType) } -> {"UserPoolId" :: (StringType) , "User" :: (ProviderUserIdentifierType) } ) -> AdminDisableProviderForUserRequest
newAdminDisableProviderForUserRequest' _User _UserPoolId customize = (AdminDisableProviderForUserRequest <<< customize) { "User": _User, "UserPoolId": _UserPoolId }



newtype AdminDisableProviderForUserResponse = AdminDisableProviderForUserResponse Types.NoArguments
derive instance newtypeAdminDisableProviderForUserResponse :: Newtype AdminDisableProviderForUserResponse _
derive instance repGenericAdminDisableProviderForUserResponse :: Generic AdminDisableProviderForUserResponse _
instance showAdminDisableProviderForUserResponse :: Show AdminDisableProviderForUserResponse where show = genericShow
instance decodeAdminDisableProviderForUserResponse :: Decode AdminDisableProviderForUserResponse where decode = genericDecode options
instance encodeAdminDisableProviderForUserResponse :: Encode AdminDisableProviderForUserResponse where encode = genericEncode options



-- | <p>Represents the request to disable any user as an administrator.</p>
newtype AdminDisableUserRequest = AdminDisableUserRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminDisableUserRequest :: Newtype AdminDisableUserRequest _
derive instance repGenericAdminDisableUserRequest :: Generic AdminDisableUserRequest _
instance showAdminDisableUserRequest :: Show AdminDisableUserRequest where show = genericShow
instance decodeAdminDisableUserRequest :: Decode AdminDisableUserRequest where decode = genericDecode options
instance encodeAdminDisableUserRequest :: Encode AdminDisableUserRequest where encode = genericEncode options

-- | Constructs AdminDisableUserRequest from required parameters
newAdminDisableUserRequest :: UserPoolIdType -> UsernameType -> AdminDisableUserRequest
newAdminDisableUserRequest _UserPoolId _Username = AdminDisableUserRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminDisableUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminDisableUserRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminDisableUserRequest
newAdminDisableUserRequest' _UserPoolId _Username customize = (AdminDisableUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response received from the server to disable the user as an administrator.</p>
newtype AdminDisableUserResponse = AdminDisableUserResponse Types.NoArguments
derive instance newtypeAdminDisableUserResponse :: Newtype AdminDisableUserResponse _
derive instance repGenericAdminDisableUserResponse :: Generic AdminDisableUserResponse _
instance showAdminDisableUserResponse :: Show AdminDisableUserResponse where show = genericShow
instance decodeAdminDisableUserResponse :: Decode AdminDisableUserResponse where decode = genericDecode options
instance encodeAdminDisableUserResponse :: Encode AdminDisableUserResponse where encode = genericEncode options



-- | <p>Represents the request that enables the user as an administrator.</p>
newtype AdminEnableUserRequest = AdminEnableUserRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminEnableUserRequest :: Newtype AdminEnableUserRequest _
derive instance repGenericAdminEnableUserRequest :: Generic AdminEnableUserRequest _
instance showAdminEnableUserRequest :: Show AdminEnableUserRequest where show = genericShow
instance decodeAdminEnableUserRequest :: Decode AdminEnableUserRequest where decode = genericDecode options
instance encodeAdminEnableUserRequest :: Encode AdminEnableUserRequest where encode = genericEncode options

-- | Constructs AdminEnableUserRequest from required parameters
newAdminEnableUserRequest :: UserPoolIdType -> UsernameType -> AdminEnableUserRequest
newAdminEnableUserRequest _UserPoolId _Username = AdminEnableUserRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminEnableUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminEnableUserRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminEnableUserRequest
newAdminEnableUserRequest' _UserPoolId _Username customize = (AdminEnableUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server for the request to enable a user as an administrator.</p>
newtype AdminEnableUserResponse = AdminEnableUserResponse Types.NoArguments
derive instance newtypeAdminEnableUserResponse :: Newtype AdminEnableUserResponse _
derive instance repGenericAdminEnableUserResponse :: Generic AdminEnableUserResponse _
instance showAdminEnableUserResponse :: Show AdminEnableUserResponse where show = genericShow
instance decodeAdminEnableUserResponse :: Decode AdminEnableUserResponse where decode = genericDecode options
instance encodeAdminEnableUserResponse :: Encode AdminEnableUserResponse where encode = genericEncode options



-- | <p>Sends the forgot device request, as an administrator.</p>
newtype AdminForgetDeviceRequest = AdminForgetDeviceRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "DeviceKey" :: (DeviceKeyType)
  }
derive instance newtypeAdminForgetDeviceRequest :: Newtype AdminForgetDeviceRequest _
derive instance repGenericAdminForgetDeviceRequest :: Generic AdminForgetDeviceRequest _
instance showAdminForgetDeviceRequest :: Show AdminForgetDeviceRequest where show = genericShow
instance decodeAdminForgetDeviceRequest :: Decode AdminForgetDeviceRequest where decode = genericDecode options
instance encodeAdminForgetDeviceRequest :: Encode AdminForgetDeviceRequest where encode = genericEncode options

-- | Constructs AdminForgetDeviceRequest from required parameters
newAdminForgetDeviceRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminForgetDeviceRequest
newAdminForgetDeviceRequest _DeviceKey _UserPoolId _Username = AdminForgetDeviceRequest { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminForgetDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminForgetDeviceRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "DeviceKey" :: (DeviceKeyType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "DeviceKey" :: (DeviceKeyType) } ) -> AdminForgetDeviceRequest
newAdminForgetDeviceRequest' _DeviceKey _UserPoolId _Username customize = (AdminForgetDeviceRequest <<< customize) { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the request to get the device, as an administrator.</p>
newtype AdminGetDeviceRequest = AdminGetDeviceRequest 
  { "DeviceKey" :: (DeviceKeyType)
  , "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminGetDeviceRequest :: Newtype AdminGetDeviceRequest _
derive instance repGenericAdminGetDeviceRequest :: Generic AdminGetDeviceRequest _
instance showAdminGetDeviceRequest :: Show AdminGetDeviceRequest where show = genericShow
instance decodeAdminGetDeviceRequest :: Decode AdminGetDeviceRequest where decode = genericDecode options
instance encodeAdminGetDeviceRequest :: Encode AdminGetDeviceRequest where encode = genericEncode options

-- | Constructs AdminGetDeviceRequest from required parameters
newAdminGetDeviceRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminGetDeviceRequest
newAdminGetDeviceRequest _DeviceKey _UserPoolId _Username = AdminGetDeviceRequest { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminGetDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminGetDeviceRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ( { "DeviceKey" :: (DeviceKeyType) , "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"DeviceKey" :: (DeviceKeyType) , "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminGetDeviceRequest
newAdminGetDeviceRequest' _DeviceKey _UserPoolId _Username customize = (AdminGetDeviceRequest <<< customize) { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Gets the device response, as an administrator.</p>
newtype AdminGetDeviceResponse = AdminGetDeviceResponse 
  { "Device" :: (DeviceType)
  }
derive instance newtypeAdminGetDeviceResponse :: Newtype AdminGetDeviceResponse _
derive instance repGenericAdminGetDeviceResponse :: Generic AdminGetDeviceResponse _
instance showAdminGetDeviceResponse :: Show AdminGetDeviceResponse where show = genericShow
instance decodeAdminGetDeviceResponse :: Decode AdminGetDeviceResponse where decode = genericDecode options
instance encodeAdminGetDeviceResponse :: Encode AdminGetDeviceResponse where encode = genericEncode options

-- | Constructs AdminGetDeviceResponse from required parameters
newAdminGetDeviceResponse :: DeviceType -> AdminGetDeviceResponse
newAdminGetDeviceResponse _Device = AdminGetDeviceResponse { "Device": _Device }

-- | Constructs AdminGetDeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminGetDeviceResponse' :: DeviceType -> ( { "Device" :: (DeviceType) } -> {"Device" :: (DeviceType) } ) -> AdminGetDeviceResponse
newAdminGetDeviceResponse' _Device customize = (AdminGetDeviceResponse <<< customize) { "Device": _Device }



-- | <p>Represents the request to get the specified user as an administrator.</p>
newtype AdminGetUserRequest = AdminGetUserRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminGetUserRequest :: Newtype AdminGetUserRequest _
derive instance repGenericAdminGetUserRequest :: Generic AdminGetUserRequest _
instance showAdminGetUserRequest :: Show AdminGetUserRequest where show = genericShow
instance decodeAdminGetUserRequest :: Decode AdminGetUserRequest where decode = genericDecode options
instance encodeAdminGetUserRequest :: Encode AdminGetUserRequest where encode = genericEncode options

-- | Constructs AdminGetUserRequest from required parameters
newAdminGetUserRequest :: UserPoolIdType -> UsernameType -> AdminGetUserRequest
newAdminGetUserRequest _UserPoolId _Username = AdminGetUserRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminGetUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminGetUserRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminGetUserRequest
newAdminGetUserRequest' _UserPoolId _Username customize = (AdminGetUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server from the request to get the specified user as an administrator.</p>
newtype AdminGetUserResponse = AdminGetUserResponse 
  { "Username" :: (UsernameType)
  , "UserAttributes" :: Maybe (AttributeListType)
  , "UserCreateDate" :: Maybe (DateType)
  , "UserLastModifiedDate" :: Maybe (DateType)
  , "Enabled" :: Maybe (BooleanType)
  , "UserStatus" :: Maybe (UserStatusType)
  , "MFAOptions" :: Maybe (MFAOptionListType)
  , "PreferredMfaSetting" :: Maybe (StringType)
  , "UserMFASettingList" :: Maybe (UserMFASettingListType)
  }
derive instance newtypeAdminGetUserResponse :: Newtype AdminGetUserResponse _
derive instance repGenericAdminGetUserResponse :: Generic AdminGetUserResponse _
instance showAdminGetUserResponse :: Show AdminGetUserResponse where show = genericShow
instance decodeAdminGetUserResponse :: Decode AdminGetUserResponse where decode = genericDecode options
instance encodeAdminGetUserResponse :: Encode AdminGetUserResponse where encode = genericEncode options

-- | Constructs AdminGetUserResponse from required parameters
newAdminGetUserResponse :: UsernameType -> AdminGetUserResponse
newAdminGetUserResponse _Username = AdminGetUserResponse { "Username": _Username, "Enabled": Nothing, "MFAOptions": Nothing, "PreferredMfaSetting": Nothing, "UserAttributes": Nothing, "UserCreateDate": Nothing, "UserLastModifiedDate": Nothing, "UserMFASettingList": Nothing, "UserStatus": Nothing }

-- | Constructs AdminGetUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminGetUserResponse' :: UsernameType -> ( { "Username" :: (UsernameType) , "UserAttributes" :: Maybe (AttributeListType) , "UserCreateDate" :: Maybe (DateType) , "UserLastModifiedDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "UserStatus" :: Maybe (UserStatusType) , "MFAOptions" :: Maybe (MFAOptionListType) , "PreferredMfaSetting" :: Maybe (StringType) , "UserMFASettingList" :: Maybe (UserMFASettingListType) } -> {"Username" :: (UsernameType) , "UserAttributes" :: Maybe (AttributeListType) , "UserCreateDate" :: Maybe (DateType) , "UserLastModifiedDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "UserStatus" :: Maybe (UserStatusType) , "MFAOptions" :: Maybe (MFAOptionListType) , "PreferredMfaSetting" :: Maybe (StringType) , "UserMFASettingList" :: Maybe (UserMFASettingListType) } ) -> AdminGetUserResponse
newAdminGetUserResponse' _Username customize = (AdminGetUserResponse <<< customize) { "Username": _Username, "Enabled": Nothing, "MFAOptions": Nothing, "PreferredMfaSetting": Nothing, "UserAttributes": Nothing, "UserCreateDate": Nothing, "UserLastModifiedDate": Nothing, "UserMFASettingList": Nothing, "UserStatus": Nothing }



-- | <p>Initiates the authorization request, as an administrator.</p>
newtype AdminInitiateAuthRequest = AdminInitiateAuthRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: (ClientIdType)
  , "AuthFlow" :: (AuthFlowType)
  , "AuthParameters" :: Maybe (AuthParametersType)
  , "ClientMetadata" :: Maybe (ClientMetadataType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "ContextData" :: Maybe (ContextDataType)
  }
derive instance newtypeAdminInitiateAuthRequest :: Newtype AdminInitiateAuthRequest _
derive instance repGenericAdminInitiateAuthRequest :: Generic AdminInitiateAuthRequest _
instance showAdminInitiateAuthRequest :: Show AdminInitiateAuthRequest where show = genericShow
instance decodeAdminInitiateAuthRequest :: Decode AdminInitiateAuthRequest where decode = genericDecode options
instance encodeAdminInitiateAuthRequest :: Encode AdminInitiateAuthRequest where encode = genericEncode options

-- | Constructs AdminInitiateAuthRequest from required parameters
newAdminInitiateAuthRequest :: AuthFlowType -> ClientIdType -> UserPoolIdType -> AdminInitiateAuthRequest
newAdminInitiateAuthRequest _AuthFlow _ClientId _UserPoolId = AdminInitiateAuthRequest { "AuthFlow": _AuthFlow, "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AnalyticsMetadata": Nothing, "AuthParameters": Nothing, "ClientMetadata": Nothing, "ContextData": Nothing }

-- | Constructs AdminInitiateAuthRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminInitiateAuthRequest' :: AuthFlowType -> ClientIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "AuthFlow" :: (AuthFlowType) , "AuthParameters" :: Maybe (AuthParametersType) , "ClientMetadata" :: Maybe (ClientMetadataType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "ContextData" :: Maybe (ContextDataType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "AuthFlow" :: (AuthFlowType) , "AuthParameters" :: Maybe (AuthParametersType) , "ClientMetadata" :: Maybe (ClientMetadataType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "ContextData" :: Maybe (ContextDataType) } ) -> AdminInitiateAuthRequest
newAdminInitiateAuthRequest' _AuthFlow _ClientId _UserPoolId customize = (AdminInitiateAuthRequest <<< customize) { "AuthFlow": _AuthFlow, "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AnalyticsMetadata": Nothing, "AuthParameters": Nothing, "ClientMetadata": Nothing, "ContextData": Nothing }



-- | <p>Initiates the authentication response, as an administrator.</p>
newtype AdminInitiateAuthResponse = AdminInitiateAuthResponse 
  { "ChallengeName" :: Maybe (ChallengeNameType)
  , "Session" :: Maybe (SessionType)
  , "ChallengeParameters" :: Maybe (ChallengeParametersType)
  , "AuthenticationResult" :: Maybe (AuthenticationResultType)
  }
derive instance newtypeAdminInitiateAuthResponse :: Newtype AdminInitiateAuthResponse _
derive instance repGenericAdminInitiateAuthResponse :: Generic AdminInitiateAuthResponse _
instance showAdminInitiateAuthResponse :: Show AdminInitiateAuthResponse where show = genericShow
instance decodeAdminInitiateAuthResponse :: Decode AdminInitiateAuthResponse where decode = genericDecode options
instance encodeAdminInitiateAuthResponse :: Encode AdminInitiateAuthResponse where encode = genericEncode options

-- | Constructs AdminInitiateAuthResponse from required parameters
newAdminInitiateAuthResponse :: AdminInitiateAuthResponse
newAdminInitiateAuthResponse  = AdminInitiateAuthResponse { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }

-- | Constructs AdminInitiateAuthResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminInitiateAuthResponse' :: ( { "ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } -> {"ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } ) -> AdminInitiateAuthResponse
newAdminInitiateAuthResponse'  customize = (AdminInitiateAuthResponse <<< customize) { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }



newtype AdminLinkProviderForUserRequest = AdminLinkProviderForUserRequest 
  { "UserPoolId" :: (StringType)
  , "DestinationUser" :: (ProviderUserIdentifierType)
  , "SourceUser" :: (ProviderUserIdentifierType)
  }
derive instance newtypeAdminLinkProviderForUserRequest :: Newtype AdminLinkProviderForUserRequest _
derive instance repGenericAdminLinkProviderForUserRequest :: Generic AdminLinkProviderForUserRequest _
instance showAdminLinkProviderForUserRequest :: Show AdminLinkProviderForUserRequest where show = genericShow
instance decodeAdminLinkProviderForUserRequest :: Decode AdminLinkProviderForUserRequest where decode = genericDecode options
instance encodeAdminLinkProviderForUserRequest :: Encode AdminLinkProviderForUserRequest where encode = genericEncode options

-- | Constructs AdminLinkProviderForUserRequest from required parameters
newAdminLinkProviderForUserRequest :: ProviderUserIdentifierType -> ProviderUserIdentifierType -> StringType -> AdminLinkProviderForUserRequest
newAdminLinkProviderForUserRequest _DestinationUser _SourceUser _UserPoolId = AdminLinkProviderForUserRequest { "DestinationUser": _DestinationUser, "SourceUser": _SourceUser, "UserPoolId": _UserPoolId }

-- | Constructs AdminLinkProviderForUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminLinkProviderForUserRequest' :: ProviderUserIdentifierType -> ProviderUserIdentifierType -> StringType -> ( { "UserPoolId" :: (StringType) , "DestinationUser" :: (ProviderUserIdentifierType) , "SourceUser" :: (ProviderUserIdentifierType) } -> {"UserPoolId" :: (StringType) , "DestinationUser" :: (ProviderUserIdentifierType) , "SourceUser" :: (ProviderUserIdentifierType) } ) -> AdminLinkProviderForUserRequest
newAdminLinkProviderForUserRequest' _DestinationUser _SourceUser _UserPoolId customize = (AdminLinkProviderForUserRequest <<< customize) { "DestinationUser": _DestinationUser, "SourceUser": _SourceUser, "UserPoolId": _UserPoolId }



newtype AdminLinkProviderForUserResponse = AdminLinkProviderForUserResponse Types.NoArguments
derive instance newtypeAdminLinkProviderForUserResponse :: Newtype AdminLinkProviderForUserResponse _
derive instance repGenericAdminLinkProviderForUserResponse :: Generic AdminLinkProviderForUserResponse _
instance showAdminLinkProviderForUserResponse :: Show AdminLinkProviderForUserResponse where show = genericShow
instance decodeAdminLinkProviderForUserResponse :: Decode AdminLinkProviderForUserResponse where decode = genericDecode options
instance encodeAdminLinkProviderForUserResponse :: Encode AdminLinkProviderForUserResponse where encode = genericEncode options



-- | <p>Represents the request to list devices, as an administrator.</p>
newtype AdminListDevicesRequest = AdminListDevicesRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "Limit" :: Maybe (QueryLimitType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  }
derive instance newtypeAdminListDevicesRequest :: Newtype AdminListDevicesRequest _
derive instance repGenericAdminListDevicesRequest :: Generic AdminListDevicesRequest _
instance showAdminListDevicesRequest :: Show AdminListDevicesRequest where show = genericShow
instance decodeAdminListDevicesRequest :: Decode AdminListDevicesRequest where decode = genericDecode options
instance encodeAdminListDevicesRequest :: Encode AdminListDevicesRequest where encode = genericEncode options

-- | Constructs AdminListDevicesRequest from required parameters
newAdminListDevicesRequest :: UserPoolIdType -> UsernameType -> AdminListDevicesRequest
newAdminListDevicesRequest _UserPoolId _Username = AdminListDevicesRequest { "UserPoolId": _UserPoolId, "Username": _Username, "Limit": Nothing, "PaginationToken": Nothing }

-- | Constructs AdminListDevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListDevicesRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } ) -> AdminListDevicesRequest
newAdminListDevicesRequest' _UserPoolId _Username customize = (AdminListDevicesRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username, "Limit": Nothing, "PaginationToken": Nothing }



-- | <p>Lists the device's response, as an administrator.</p>
newtype AdminListDevicesResponse = AdminListDevicesResponse 
  { "Devices" :: Maybe (DeviceListType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  }
derive instance newtypeAdminListDevicesResponse :: Newtype AdminListDevicesResponse _
derive instance repGenericAdminListDevicesResponse :: Generic AdminListDevicesResponse _
instance showAdminListDevicesResponse :: Show AdminListDevicesResponse where show = genericShow
instance decodeAdminListDevicesResponse :: Decode AdminListDevicesResponse where decode = genericDecode options
instance encodeAdminListDevicesResponse :: Encode AdminListDevicesResponse where encode = genericEncode options

-- | Constructs AdminListDevicesResponse from required parameters
newAdminListDevicesResponse :: AdminListDevicesResponse
newAdminListDevicesResponse  = AdminListDevicesResponse { "Devices": Nothing, "PaginationToken": Nothing }

-- | Constructs AdminListDevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListDevicesResponse' :: ( { "Devices" :: Maybe (DeviceListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } -> {"Devices" :: Maybe (DeviceListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } ) -> AdminListDevicesResponse
newAdminListDevicesResponse'  customize = (AdminListDevicesResponse <<< customize) { "Devices": Nothing, "PaginationToken": Nothing }



newtype AdminListGroupsForUserRequest = AdminListGroupsForUserRequest 
  { "Username" :: (UsernameType)
  , "UserPoolId" :: (UserPoolIdType)
  , "Limit" :: Maybe (QueryLimitType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeAdminListGroupsForUserRequest :: Newtype AdminListGroupsForUserRequest _
derive instance repGenericAdminListGroupsForUserRequest :: Generic AdminListGroupsForUserRequest _
instance showAdminListGroupsForUserRequest :: Show AdminListGroupsForUserRequest where show = genericShow
instance decodeAdminListGroupsForUserRequest :: Decode AdminListGroupsForUserRequest where decode = genericDecode options
instance encodeAdminListGroupsForUserRequest :: Encode AdminListGroupsForUserRequest where encode = genericEncode options

-- | Constructs AdminListGroupsForUserRequest from required parameters
newAdminListGroupsForUserRequest :: UserPoolIdType -> UsernameType -> AdminListGroupsForUserRequest
newAdminListGroupsForUserRequest _UserPoolId _Username = AdminListGroupsForUserRequest { "UserPoolId": _UserPoolId, "Username": _Username, "Limit": Nothing, "NextToken": Nothing }

-- | Constructs AdminListGroupsForUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListGroupsForUserRequest' :: UserPoolIdType -> UsernameType -> ( { "Username" :: (UsernameType) , "UserPoolId" :: (UserPoolIdType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } -> {"Username" :: (UsernameType) , "UserPoolId" :: (UserPoolIdType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } ) -> AdminListGroupsForUserRequest
newAdminListGroupsForUserRequest' _UserPoolId _Username customize = (AdminListGroupsForUserRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username, "Limit": Nothing, "NextToken": Nothing }



newtype AdminListGroupsForUserResponse = AdminListGroupsForUserResponse 
  { "Groups" :: Maybe (GroupListType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeAdminListGroupsForUserResponse :: Newtype AdminListGroupsForUserResponse _
derive instance repGenericAdminListGroupsForUserResponse :: Generic AdminListGroupsForUserResponse _
instance showAdminListGroupsForUserResponse :: Show AdminListGroupsForUserResponse where show = genericShow
instance decodeAdminListGroupsForUserResponse :: Decode AdminListGroupsForUserResponse where decode = genericDecode options
instance encodeAdminListGroupsForUserResponse :: Encode AdminListGroupsForUserResponse where encode = genericEncode options

-- | Constructs AdminListGroupsForUserResponse from required parameters
newAdminListGroupsForUserResponse :: AdminListGroupsForUserResponse
newAdminListGroupsForUserResponse  = AdminListGroupsForUserResponse { "Groups": Nothing, "NextToken": Nothing }

-- | Constructs AdminListGroupsForUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListGroupsForUserResponse' :: ( { "Groups" :: Maybe (GroupListType) , "NextToken" :: Maybe (PaginationKey) } -> {"Groups" :: Maybe (GroupListType) , "NextToken" :: Maybe (PaginationKey) } ) -> AdminListGroupsForUserResponse
newAdminListGroupsForUserResponse'  customize = (AdminListGroupsForUserResponse <<< customize) { "Groups": Nothing, "NextToken": Nothing }



newtype AdminListUserAuthEventsRequest = AdminListUserAuthEventsRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "MaxResults" :: Maybe (QueryLimitType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeAdminListUserAuthEventsRequest :: Newtype AdminListUserAuthEventsRequest _
derive instance repGenericAdminListUserAuthEventsRequest :: Generic AdminListUserAuthEventsRequest _
instance showAdminListUserAuthEventsRequest :: Show AdminListUserAuthEventsRequest where show = genericShow
instance decodeAdminListUserAuthEventsRequest :: Decode AdminListUserAuthEventsRequest where decode = genericDecode options
instance encodeAdminListUserAuthEventsRequest :: Encode AdminListUserAuthEventsRequest where encode = genericEncode options

-- | Constructs AdminListUserAuthEventsRequest from required parameters
newAdminListUserAuthEventsRequest :: UserPoolIdType -> UsernameType -> AdminListUserAuthEventsRequest
newAdminListUserAuthEventsRequest _UserPoolId _Username = AdminListUserAuthEventsRequest { "UserPoolId": _UserPoolId, "Username": _Username, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs AdminListUserAuthEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListUserAuthEventsRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "MaxResults" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "MaxResults" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } ) -> AdminListUserAuthEventsRequest
newAdminListUserAuthEventsRequest' _UserPoolId _Username customize = (AdminListUserAuthEventsRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username, "MaxResults": Nothing, "NextToken": Nothing }



newtype AdminListUserAuthEventsResponse = AdminListUserAuthEventsResponse 
  { "AuthEvents" :: Maybe (AuthEventsType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeAdminListUserAuthEventsResponse :: Newtype AdminListUserAuthEventsResponse _
derive instance repGenericAdminListUserAuthEventsResponse :: Generic AdminListUserAuthEventsResponse _
instance showAdminListUserAuthEventsResponse :: Show AdminListUserAuthEventsResponse where show = genericShow
instance decodeAdminListUserAuthEventsResponse :: Decode AdminListUserAuthEventsResponse where decode = genericDecode options
instance encodeAdminListUserAuthEventsResponse :: Encode AdminListUserAuthEventsResponse where encode = genericEncode options

-- | Constructs AdminListUserAuthEventsResponse from required parameters
newAdminListUserAuthEventsResponse :: AdminListUserAuthEventsResponse
newAdminListUserAuthEventsResponse  = AdminListUserAuthEventsResponse { "AuthEvents": Nothing, "NextToken": Nothing }

-- | Constructs AdminListUserAuthEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminListUserAuthEventsResponse' :: ( { "AuthEvents" :: Maybe (AuthEventsType) , "NextToken" :: Maybe (PaginationKey) } -> {"AuthEvents" :: Maybe (AuthEventsType) , "NextToken" :: Maybe (PaginationKey) } ) -> AdminListUserAuthEventsResponse
newAdminListUserAuthEventsResponse'  customize = (AdminListUserAuthEventsResponse <<< customize) { "AuthEvents": Nothing, "NextToken": Nothing }



newtype AdminRemoveUserFromGroupRequest = AdminRemoveUserFromGroupRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "GroupName" :: (GroupNameType)
  }
derive instance newtypeAdminRemoveUserFromGroupRequest :: Newtype AdminRemoveUserFromGroupRequest _
derive instance repGenericAdminRemoveUserFromGroupRequest :: Generic AdminRemoveUserFromGroupRequest _
instance showAdminRemoveUserFromGroupRequest :: Show AdminRemoveUserFromGroupRequest where show = genericShow
instance decodeAdminRemoveUserFromGroupRequest :: Decode AdminRemoveUserFromGroupRequest where decode = genericDecode options
instance encodeAdminRemoveUserFromGroupRequest :: Encode AdminRemoveUserFromGroupRequest where encode = genericEncode options

-- | Constructs AdminRemoveUserFromGroupRequest from required parameters
newAdminRemoveUserFromGroupRequest :: GroupNameType -> UserPoolIdType -> UsernameType -> AdminRemoveUserFromGroupRequest
newAdminRemoveUserFromGroupRequest _GroupName _UserPoolId _Username = AdminRemoveUserFromGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminRemoveUserFromGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminRemoveUserFromGroupRequest' :: GroupNameType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "GroupName" :: (GroupNameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "GroupName" :: (GroupNameType) } ) -> AdminRemoveUserFromGroupRequest
newAdminRemoveUserFromGroupRequest' _GroupName _UserPoolId _Username customize = (AdminRemoveUserFromGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the request to reset a user's password as an administrator.</p>
newtype AdminResetUserPasswordRequest = AdminResetUserPasswordRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminResetUserPasswordRequest :: Newtype AdminResetUserPasswordRequest _
derive instance repGenericAdminResetUserPasswordRequest :: Generic AdminResetUserPasswordRequest _
instance showAdminResetUserPasswordRequest :: Show AdminResetUserPasswordRequest where show = genericShow
instance decodeAdminResetUserPasswordRequest :: Decode AdminResetUserPasswordRequest where decode = genericDecode options
instance encodeAdminResetUserPasswordRequest :: Encode AdminResetUserPasswordRequest where encode = genericEncode options

-- | Constructs AdminResetUserPasswordRequest from required parameters
newAdminResetUserPasswordRequest :: UserPoolIdType -> UsernameType -> AdminResetUserPasswordRequest
newAdminResetUserPasswordRequest _UserPoolId _Username = AdminResetUserPasswordRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminResetUserPasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminResetUserPasswordRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminResetUserPasswordRequest
newAdminResetUserPasswordRequest' _UserPoolId _Username customize = (AdminResetUserPasswordRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server to reset a user password as an administrator.</p>
newtype AdminResetUserPasswordResponse = AdminResetUserPasswordResponse Types.NoArguments
derive instance newtypeAdminResetUserPasswordResponse :: Newtype AdminResetUserPasswordResponse _
derive instance repGenericAdminResetUserPasswordResponse :: Generic AdminResetUserPasswordResponse _
instance showAdminResetUserPasswordResponse :: Show AdminResetUserPasswordResponse where show = genericShow
instance decodeAdminResetUserPasswordResponse :: Decode AdminResetUserPasswordResponse where decode = genericDecode options
instance encodeAdminResetUserPasswordResponse :: Encode AdminResetUserPasswordResponse where encode = genericEncode options



-- | <p>The request to respond to the authentication challenge, as an administrator.</p>
newtype AdminRespondToAuthChallengeRequest = AdminRespondToAuthChallengeRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: (ClientIdType)
  , "ChallengeName" :: (ChallengeNameType)
  , "ChallengeResponses" :: Maybe (ChallengeResponsesType)
  , "Session" :: Maybe (SessionType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "ContextData" :: Maybe (ContextDataType)
  }
derive instance newtypeAdminRespondToAuthChallengeRequest :: Newtype AdminRespondToAuthChallengeRequest _
derive instance repGenericAdminRespondToAuthChallengeRequest :: Generic AdminRespondToAuthChallengeRequest _
instance showAdminRespondToAuthChallengeRequest :: Show AdminRespondToAuthChallengeRequest where show = genericShow
instance decodeAdminRespondToAuthChallengeRequest :: Decode AdminRespondToAuthChallengeRequest where decode = genericDecode options
instance encodeAdminRespondToAuthChallengeRequest :: Encode AdminRespondToAuthChallengeRequest where encode = genericEncode options

-- | Constructs AdminRespondToAuthChallengeRequest from required parameters
newAdminRespondToAuthChallengeRequest :: ChallengeNameType -> ClientIdType -> UserPoolIdType -> AdminRespondToAuthChallengeRequest
newAdminRespondToAuthChallengeRequest _ChallengeName _ClientId _UserPoolId = AdminRespondToAuthChallengeRequest { "ChallengeName": _ChallengeName, "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AnalyticsMetadata": Nothing, "ChallengeResponses": Nothing, "ContextData": Nothing, "Session": Nothing }

-- | Constructs AdminRespondToAuthChallengeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminRespondToAuthChallengeRequest' :: ChallengeNameType -> ClientIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "ChallengeName" :: (ChallengeNameType) , "ChallengeResponses" :: Maybe (ChallengeResponsesType) , "Session" :: Maybe (SessionType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "ContextData" :: Maybe (ContextDataType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "ChallengeName" :: (ChallengeNameType) , "ChallengeResponses" :: Maybe (ChallengeResponsesType) , "Session" :: Maybe (SessionType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "ContextData" :: Maybe (ContextDataType) } ) -> AdminRespondToAuthChallengeRequest
newAdminRespondToAuthChallengeRequest' _ChallengeName _ClientId _UserPoolId customize = (AdminRespondToAuthChallengeRequest <<< customize) { "ChallengeName": _ChallengeName, "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AnalyticsMetadata": Nothing, "ChallengeResponses": Nothing, "ContextData": Nothing, "Session": Nothing }



-- | <p>Responds to the authentication challenge, as an administrator.</p>
newtype AdminRespondToAuthChallengeResponse = AdminRespondToAuthChallengeResponse 
  { "ChallengeName" :: Maybe (ChallengeNameType)
  , "Session" :: Maybe (SessionType)
  , "ChallengeParameters" :: Maybe (ChallengeParametersType)
  , "AuthenticationResult" :: Maybe (AuthenticationResultType)
  }
derive instance newtypeAdminRespondToAuthChallengeResponse :: Newtype AdminRespondToAuthChallengeResponse _
derive instance repGenericAdminRespondToAuthChallengeResponse :: Generic AdminRespondToAuthChallengeResponse _
instance showAdminRespondToAuthChallengeResponse :: Show AdminRespondToAuthChallengeResponse where show = genericShow
instance decodeAdminRespondToAuthChallengeResponse :: Decode AdminRespondToAuthChallengeResponse where decode = genericDecode options
instance encodeAdminRespondToAuthChallengeResponse :: Encode AdminRespondToAuthChallengeResponse where encode = genericEncode options

-- | Constructs AdminRespondToAuthChallengeResponse from required parameters
newAdminRespondToAuthChallengeResponse :: AdminRespondToAuthChallengeResponse
newAdminRespondToAuthChallengeResponse  = AdminRespondToAuthChallengeResponse { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }

-- | Constructs AdminRespondToAuthChallengeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminRespondToAuthChallengeResponse' :: ( { "ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } -> {"ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } ) -> AdminRespondToAuthChallengeResponse
newAdminRespondToAuthChallengeResponse'  customize = (AdminRespondToAuthChallengeResponse <<< customize) { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }



newtype AdminSetUserMFAPreferenceRequest = AdminSetUserMFAPreferenceRequest 
  { "SMSMfaSettings" :: Maybe (SMSMfaSettingsType)
  , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType)
  , "Username" :: (UsernameType)
  , "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeAdminSetUserMFAPreferenceRequest :: Newtype AdminSetUserMFAPreferenceRequest _
derive instance repGenericAdminSetUserMFAPreferenceRequest :: Generic AdminSetUserMFAPreferenceRequest _
instance showAdminSetUserMFAPreferenceRequest :: Show AdminSetUserMFAPreferenceRequest where show = genericShow
instance decodeAdminSetUserMFAPreferenceRequest :: Decode AdminSetUserMFAPreferenceRequest where decode = genericDecode options
instance encodeAdminSetUserMFAPreferenceRequest :: Encode AdminSetUserMFAPreferenceRequest where encode = genericEncode options

-- | Constructs AdminSetUserMFAPreferenceRequest from required parameters
newAdminSetUserMFAPreferenceRequest :: UserPoolIdType -> UsernameType -> AdminSetUserMFAPreferenceRequest
newAdminSetUserMFAPreferenceRequest _UserPoolId _Username = AdminSetUserMFAPreferenceRequest { "UserPoolId": _UserPoolId, "Username": _Username, "SMSMfaSettings": Nothing, "SoftwareTokenMfaSettings": Nothing }

-- | Constructs AdminSetUserMFAPreferenceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminSetUserMFAPreferenceRequest' :: UserPoolIdType -> UsernameType -> ( { "SMSMfaSettings" :: Maybe (SMSMfaSettingsType) , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType) , "Username" :: (UsernameType) , "UserPoolId" :: (UserPoolIdType) } -> {"SMSMfaSettings" :: Maybe (SMSMfaSettingsType) , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType) , "Username" :: (UsernameType) , "UserPoolId" :: (UserPoolIdType) } ) -> AdminSetUserMFAPreferenceRequest
newAdminSetUserMFAPreferenceRequest' _UserPoolId _Username customize = (AdminSetUserMFAPreferenceRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username, "SMSMfaSettings": Nothing, "SoftwareTokenMfaSettings": Nothing }



newtype AdminSetUserMFAPreferenceResponse = AdminSetUserMFAPreferenceResponse Types.NoArguments
derive instance newtypeAdminSetUserMFAPreferenceResponse :: Newtype AdminSetUserMFAPreferenceResponse _
derive instance repGenericAdminSetUserMFAPreferenceResponse :: Generic AdminSetUserMFAPreferenceResponse _
instance showAdminSetUserMFAPreferenceResponse :: Show AdminSetUserMFAPreferenceResponse where show = genericShow
instance decodeAdminSetUserMFAPreferenceResponse :: Decode AdminSetUserMFAPreferenceResponse where decode = genericDecode options
instance encodeAdminSetUserMFAPreferenceResponse :: Encode AdminSetUserMFAPreferenceResponse where encode = genericEncode options



-- | <p>Represents the request to set user settings as an administrator.</p>
newtype AdminSetUserSettingsRequest = AdminSetUserSettingsRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "MFAOptions" :: (MFAOptionListType)
  }
derive instance newtypeAdminSetUserSettingsRequest :: Newtype AdminSetUserSettingsRequest _
derive instance repGenericAdminSetUserSettingsRequest :: Generic AdminSetUserSettingsRequest _
instance showAdminSetUserSettingsRequest :: Show AdminSetUserSettingsRequest where show = genericShow
instance decodeAdminSetUserSettingsRequest :: Decode AdminSetUserSettingsRequest where decode = genericDecode options
instance encodeAdminSetUserSettingsRequest :: Encode AdminSetUserSettingsRequest where encode = genericEncode options

-- | Constructs AdminSetUserSettingsRequest from required parameters
newAdminSetUserSettingsRequest :: MFAOptionListType -> UserPoolIdType -> UsernameType -> AdminSetUserSettingsRequest
newAdminSetUserSettingsRequest _MFAOptions _UserPoolId _Username = AdminSetUserSettingsRequest { "MFAOptions": _MFAOptions, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminSetUserSettingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminSetUserSettingsRequest' :: MFAOptionListType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "MFAOptions" :: (MFAOptionListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "MFAOptions" :: (MFAOptionListType) } ) -> AdminSetUserSettingsRequest
newAdminSetUserSettingsRequest' _MFAOptions _UserPoolId _Username customize = (AdminSetUserSettingsRequest <<< customize) { "MFAOptions": _MFAOptions, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server to set user settings as an administrator.</p>
newtype AdminSetUserSettingsResponse = AdminSetUserSettingsResponse Types.NoArguments
derive instance newtypeAdminSetUserSettingsResponse :: Newtype AdminSetUserSettingsResponse _
derive instance repGenericAdminSetUserSettingsResponse :: Generic AdminSetUserSettingsResponse _
instance showAdminSetUserSettingsResponse :: Show AdminSetUserSettingsResponse where show = genericShow
instance decodeAdminSetUserSettingsResponse :: Decode AdminSetUserSettingsResponse where decode = genericDecode options
instance encodeAdminSetUserSettingsResponse :: Encode AdminSetUserSettingsResponse where encode = genericEncode options



newtype AdminUpdateAuthEventFeedbackRequest = AdminUpdateAuthEventFeedbackRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "EventId" :: (EventIdType)
  , "FeedbackValue" :: (FeedbackValueType)
  }
derive instance newtypeAdminUpdateAuthEventFeedbackRequest :: Newtype AdminUpdateAuthEventFeedbackRequest _
derive instance repGenericAdminUpdateAuthEventFeedbackRequest :: Generic AdminUpdateAuthEventFeedbackRequest _
instance showAdminUpdateAuthEventFeedbackRequest :: Show AdminUpdateAuthEventFeedbackRequest where show = genericShow
instance decodeAdminUpdateAuthEventFeedbackRequest :: Decode AdminUpdateAuthEventFeedbackRequest where decode = genericDecode options
instance encodeAdminUpdateAuthEventFeedbackRequest :: Encode AdminUpdateAuthEventFeedbackRequest where encode = genericEncode options

-- | Constructs AdminUpdateAuthEventFeedbackRequest from required parameters
newAdminUpdateAuthEventFeedbackRequest :: EventIdType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> AdminUpdateAuthEventFeedbackRequest
newAdminUpdateAuthEventFeedbackRequest _EventId _FeedbackValue _UserPoolId _Username = AdminUpdateAuthEventFeedbackRequest { "EventId": _EventId, "FeedbackValue": _FeedbackValue, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminUpdateAuthEventFeedbackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminUpdateAuthEventFeedbackRequest' :: EventIdType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "EventId" :: (EventIdType) , "FeedbackValue" :: (FeedbackValueType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "EventId" :: (EventIdType) , "FeedbackValue" :: (FeedbackValueType) } ) -> AdminUpdateAuthEventFeedbackRequest
newAdminUpdateAuthEventFeedbackRequest' _EventId _FeedbackValue _UserPoolId _Username customize = (AdminUpdateAuthEventFeedbackRequest <<< customize) { "EventId": _EventId, "FeedbackValue": _FeedbackValue, "UserPoolId": _UserPoolId, "Username": _Username }



newtype AdminUpdateAuthEventFeedbackResponse = AdminUpdateAuthEventFeedbackResponse Types.NoArguments
derive instance newtypeAdminUpdateAuthEventFeedbackResponse :: Newtype AdminUpdateAuthEventFeedbackResponse _
derive instance repGenericAdminUpdateAuthEventFeedbackResponse :: Generic AdminUpdateAuthEventFeedbackResponse _
instance showAdminUpdateAuthEventFeedbackResponse :: Show AdminUpdateAuthEventFeedbackResponse where show = genericShow
instance decodeAdminUpdateAuthEventFeedbackResponse :: Decode AdminUpdateAuthEventFeedbackResponse where decode = genericDecode options
instance encodeAdminUpdateAuthEventFeedbackResponse :: Encode AdminUpdateAuthEventFeedbackResponse where encode = genericEncode options



-- | <p>The request to update the device status, as an administrator.</p>
newtype AdminUpdateDeviceStatusRequest = AdminUpdateDeviceStatusRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "DeviceKey" :: (DeviceKeyType)
  , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType)
  }
derive instance newtypeAdminUpdateDeviceStatusRequest :: Newtype AdminUpdateDeviceStatusRequest _
derive instance repGenericAdminUpdateDeviceStatusRequest :: Generic AdminUpdateDeviceStatusRequest _
instance showAdminUpdateDeviceStatusRequest :: Show AdminUpdateDeviceStatusRequest where show = genericShow
instance decodeAdminUpdateDeviceStatusRequest :: Decode AdminUpdateDeviceStatusRequest where decode = genericDecode options
instance encodeAdminUpdateDeviceStatusRequest :: Encode AdminUpdateDeviceStatusRequest where encode = genericEncode options

-- | Constructs AdminUpdateDeviceStatusRequest from required parameters
newAdminUpdateDeviceStatusRequest :: DeviceKeyType -> UserPoolIdType -> UsernameType -> AdminUpdateDeviceStatusRequest
newAdminUpdateDeviceStatusRequest _DeviceKey _UserPoolId _Username = AdminUpdateDeviceStatusRequest { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username, "DeviceRememberedStatus": Nothing }

-- | Constructs AdminUpdateDeviceStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminUpdateDeviceStatusRequest' :: DeviceKeyType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "DeviceKey" :: (DeviceKeyType) , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "DeviceKey" :: (DeviceKeyType) , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType) } ) -> AdminUpdateDeviceStatusRequest
newAdminUpdateDeviceStatusRequest' _DeviceKey _UserPoolId _Username customize = (AdminUpdateDeviceStatusRequest <<< customize) { "DeviceKey": _DeviceKey, "UserPoolId": _UserPoolId, "Username": _Username, "DeviceRememberedStatus": Nothing }



-- | <p>The status response from the request to update the device, as an administrator.</p>
newtype AdminUpdateDeviceStatusResponse = AdminUpdateDeviceStatusResponse Types.NoArguments
derive instance newtypeAdminUpdateDeviceStatusResponse :: Newtype AdminUpdateDeviceStatusResponse _
derive instance repGenericAdminUpdateDeviceStatusResponse :: Generic AdminUpdateDeviceStatusResponse _
instance showAdminUpdateDeviceStatusResponse :: Show AdminUpdateDeviceStatusResponse where show = genericShow
instance decodeAdminUpdateDeviceStatusResponse :: Decode AdminUpdateDeviceStatusResponse where decode = genericDecode options
instance encodeAdminUpdateDeviceStatusResponse :: Encode AdminUpdateDeviceStatusResponse where encode = genericEncode options



-- | <p>Represents the request to update the user's attributes as an administrator.</p>
newtype AdminUpdateUserAttributesRequest = AdminUpdateUserAttributesRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "UserAttributes" :: (AttributeListType)
  }
derive instance newtypeAdminUpdateUserAttributesRequest :: Newtype AdminUpdateUserAttributesRequest _
derive instance repGenericAdminUpdateUserAttributesRequest :: Generic AdminUpdateUserAttributesRequest _
instance showAdminUpdateUserAttributesRequest :: Show AdminUpdateUserAttributesRequest where show = genericShow
instance decodeAdminUpdateUserAttributesRequest :: Decode AdminUpdateUserAttributesRequest where decode = genericDecode options
instance encodeAdminUpdateUserAttributesRequest :: Encode AdminUpdateUserAttributesRequest where encode = genericEncode options

-- | Constructs AdminUpdateUserAttributesRequest from required parameters
newAdminUpdateUserAttributesRequest :: AttributeListType -> UserPoolIdType -> UsernameType -> AdminUpdateUserAttributesRequest
newAdminUpdateUserAttributesRequest _UserAttributes _UserPoolId _Username = AdminUpdateUserAttributesRequest { "UserAttributes": _UserAttributes, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminUpdateUserAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminUpdateUserAttributesRequest' :: AttributeListType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributes" :: (AttributeListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "UserAttributes" :: (AttributeListType) } ) -> AdminUpdateUserAttributesRequest
newAdminUpdateUserAttributesRequest' _UserAttributes _UserPoolId _Username customize = (AdminUpdateUserAttributesRequest <<< customize) { "UserAttributes": _UserAttributes, "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>Represents the response from the server for the request to update user attributes as an administrator.</p>
newtype AdminUpdateUserAttributesResponse = AdminUpdateUserAttributesResponse Types.NoArguments
derive instance newtypeAdminUpdateUserAttributesResponse :: Newtype AdminUpdateUserAttributesResponse _
derive instance repGenericAdminUpdateUserAttributesResponse :: Generic AdminUpdateUserAttributesResponse _
instance showAdminUpdateUserAttributesResponse :: Show AdminUpdateUserAttributesResponse where show = genericShow
instance decodeAdminUpdateUserAttributesResponse :: Decode AdminUpdateUserAttributesResponse where decode = genericDecode options
instance encodeAdminUpdateUserAttributesResponse :: Encode AdminUpdateUserAttributesResponse where encode = genericEncode options



-- | <p>The request to sign out of all devices, as an administrator.</p>
newtype AdminUserGlobalSignOutRequest = AdminUserGlobalSignOutRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  }
derive instance newtypeAdminUserGlobalSignOutRequest :: Newtype AdminUserGlobalSignOutRequest _
derive instance repGenericAdminUserGlobalSignOutRequest :: Generic AdminUserGlobalSignOutRequest _
instance showAdminUserGlobalSignOutRequest :: Show AdminUserGlobalSignOutRequest where show = genericShow
instance decodeAdminUserGlobalSignOutRequest :: Decode AdminUserGlobalSignOutRequest where decode = genericDecode options
instance encodeAdminUserGlobalSignOutRequest :: Encode AdminUserGlobalSignOutRequest where encode = genericEncode options

-- | Constructs AdminUserGlobalSignOutRequest from required parameters
newAdminUserGlobalSignOutRequest :: UserPoolIdType -> UsernameType -> AdminUserGlobalSignOutRequest
newAdminUserGlobalSignOutRequest _UserPoolId _Username = AdminUserGlobalSignOutRequest { "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs AdminUserGlobalSignOutRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdminUserGlobalSignOutRequest' :: UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) } ) -> AdminUserGlobalSignOutRequest
newAdminUserGlobalSignOutRequest' _UserPoolId _Username customize = (AdminUserGlobalSignOutRequest <<< customize) { "UserPoolId": _UserPoolId, "Username": _Username }



-- | <p>The global sign-out response, as an administrator.</p>
newtype AdminUserGlobalSignOutResponse = AdminUserGlobalSignOutResponse Types.NoArguments
derive instance newtypeAdminUserGlobalSignOutResponse :: Newtype AdminUserGlobalSignOutResponse _
derive instance repGenericAdminUserGlobalSignOutResponse :: Generic AdminUserGlobalSignOutResponse _
instance showAdminUserGlobalSignOutResponse :: Show AdminUserGlobalSignOutResponse where show = genericShow
instance decodeAdminUserGlobalSignOutResponse :: Decode AdminUserGlobalSignOutResponse where decode = genericDecode options
instance encodeAdminUserGlobalSignOutResponse :: Encode AdminUserGlobalSignOutResponse where encode = genericEncode options



newtype AdvancedSecurityModeType = AdvancedSecurityModeType String
derive instance newtypeAdvancedSecurityModeType :: Newtype AdvancedSecurityModeType _
derive instance repGenericAdvancedSecurityModeType :: Generic AdvancedSecurityModeType _
instance showAdvancedSecurityModeType :: Show AdvancedSecurityModeType where show = genericShow
instance decodeAdvancedSecurityModeType :: Decode AdvancedSecurityModeType where decode = genericDecode options
instance encodeAdvancedSecurityModeType :: Encode AdvancedSecurityModeType where encode = genericEncode options



newtype AliasAttributeType = AliasAttributeType String
derive instance newtypeAliasAttributeType :: Newtype AliasAttributeType _
derive instance repGenericAliasAttributeType :: Generic AliasAttributeType _
instance showAliasAttributeType :: Show AliasAttributeType where show = genericShow
instance decodeAliasAttributeType :: Decode AliasAttributeType where decode = genericDecode options
instance encodeAliasAttributeType :: Encode AliasAttributeType where encode = genericEncode options



newtype AliasAttributesListType = AliasAttributesListType (Array AliasAttributeType)
derive instance newtypeAliasAttributesListType :: Newtype AliasAttributesListType _
derive instance repGenericAliasAttributesListType :: Generic AliasAttributesListType _
instance showAliasAttributesListType :: Show AliasAttributesListType where show = genericShow
instance decodeAliasAttributesListType :: Decode AliasAttributesListType where decode = genericDecode options
instance encodeAliasAttributesListType :: Encode AliasAttributesListType where encode = genericEncode options



-- | <p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>
newtype AliasExistsException = AliasExistsException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeAliasExistsException :: Newtype AliasExistsException _
derive instance repGenericAliasExistsException :: Generic AliasExistsException _
instance showAliasExistsException :: Show AliasExistsException where show = genericShow
instance decodeAliasExistsException :: Decode AliasExistsException where decode = genericDecode options
instance encodeAliasExistsException :: Encode AliasExistsException where encode = genericEncode options

-- | Constructs AliasExistsException from required parameters
newAliasExistsException :: AliasExistsException
newAliasExistsException  = AliasExistsException { "message": Nothing }

-- | Constructs AliasExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliasExistsException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> AliasExistsException
newAliasExistsException'  customize = (AliasExistsException <<< customize) { "message": Nothing }



-- | <p>The Amazon Pinpoint analytics configuration for collecting metrics for a user pool.</p>
newtype AnalyticsConfigurationType = AnalyticsConfigurationType 
  { "ApplicationId" :: (HexStringType)
  , "RoleArn" :: (ArnType)
  , "ExternalId" :: (StringType)
  , "UserDataShared" :: Maybe (BooleanType)
  }
derive instance newtypeAnalyticsConfigurationType :: Newtype AnalyticsConfigurationType _
derive instance repGenericAnalyticsConfigurationType :: Generic AnalyticsConfigurationType _
instance showAnalyticsConfigurationType :: Show AnalyticsConfigurationType where show = genericShow
instance decodeAnalyticsConfigurationType :: Decode AnalyticsConfigurationType where decode = genericDecode options
instance encodeAnalyticsConfigurationType :: Encode AnalyticsConfigurationType where encode = genericEncode options

-- | Constructs AnalyticsConfigurationType from required parameters
newAnalyticsConfigurationType :: HexStringType -> StringType -> ArnType -> AnalyticsConfigurationType
newAnalyticsConfigurationType _ApplicationId _ExternalId _RoleArn = AnalyticsConfigurationType { "ApplicationId": _ApplicationId, "ExternalId": _ExternalId, "RoleArn": _RoleArn, "UserDataShared": Nothing }

-- | Constructs AnalyticsConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAnalyticsConfigurationType' :: HexStringType -> StringType -> ArnType -> ( { "ApplicationId" :: (HexStringType) , "RoleArn" :: (ArnType) , "ExternalId" :: (StringType) , "UserDataShared" :: Maybe (BooleanType) } -> {"ApplicationId" :: (HexStringType) , "RoleArn" :: (ArnType) , "ExternalId" :: (StringType) , "UserDataShared" :: Maybe (BooleanType) } ) -> AnalyticsConfigurationType
newAnalyticsConfigurationType' _ApplicationId _ExternalId _RoleArn customize = (AnalyticsConfigurationType <<< customize) { "ApplicationId": _ApplicationId, "ExternalId": _ExternalId, "RoleArn": _RoleArn, "UserDataShared": Nothing }



-- | <p>An Amazon Pinpoint analytics endpoint.</p> <p>An endpoint uniquely identifies a mobile device, email address, or phone number that can receive messages from Amazon Pinpoint analytics.</p>
newtype AnalyticsMetadataType = AnalyticsMetadataType 
  { "AnalyticsEndpointId" :: Maybe (StringType)
  }
derive instance newtypeAnalyticsMetadataType :: Newtype AnalyticsMetadataType _
derive instance repGenericAnalyticsMetadataType :: Generic AnalyticsMetadataType _
instance showAnalyticsMetadataType :: Show AnalyticsMetadataType where show = genericShow
instance decodeAnalyticsMetadataType :: Decode AnalyticsMetadataType where decode = genericDecode options
instance encodeAnalyticsMetadataType :: Encode AnalyticsMetadataType where encode = genericEncode options

-- | Constructs AnalyticsMetadataType from required parameters
newAnalyticsMetadataType :: AnalyticsMetadataType
newAnalyticsMetadataType  = AnalyticsMetadataType { "AnalyticsEndpointId": Nothing }

-- | Constructs AnalyticsMetadataType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAnalyticsMetadataType' :: ( { "AnalyticsEndpointId" :: Maybe (StringType) } -> {"AnalyticsEndpointId" :: Maybe (StringType) } ) -> AnalyticsMetadataType
newAnalyticsMetadataType'  customize = (AnalyticsMetadataType <<< customize) { "AnalyticsEndpointId": Nothing }



newtype ArnType = ArnType String
derive instance newtypeArnType :: Newtype ArnType _
derive instance repGenericArnType :: Generic ArnType _
instance showArnType :: Show ArnType where show = genericShow
instance decodeArnType :: Decode ArnType where decode = genericDecode options
instance encodeArnType :: Encode ArnType where encode = genericEncode options



newtype AssociateSoftwareTokenRequest = AssociateSoftwareTokenRequest 
  { "AccessToken" :: Maybe (TokenModelType)
  , "Session" :: Maybe (SessionType)
  }
derive instance newtypeAssociateSoftwareTokenRequest :: Newtype AssociateSoftwareTokenRequest _
derive instance repGenericAssociateSoftwareTokenRequest :: Generic AssociateSoftwareTokenRequest _
instance showAssociateSoftwareTokenRequest :: Show AssociateSoftwareTokenRequest where show = genericShow
instance decodeAssociateSoftwareTokenRequest :: Decode AssociateSoftwareTokenRequest where decode = genericDecode options
instance encodeAssociateSoftwareTokenRequest :: Encode AssociateSoftwareTokenRequest where encode = genericEncode options

-- | Constructs AssociateSoftwareTokenRequest from required parameters
newAssociateSoftwareTokenRequest :: AssociateSoftwareTokenRequest
newAssociateSoftwareTokenRequest  = AssociateSoftwareTokenRequest { "AccessToken": Nothing, "Session": Nothing }

-- | Constructs AssociateSoftwareTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateSoftwareTokenRequest' :: ( { "AccessToken" :: Maybe (TokenModelType) , "Session" :: Maybe (SessionType) } -> {"AccessToken" :: Maybe (TokenModelType) , "Session" :: Maybe (SessionType) } ) -> AssociateSoftwareTokenRequest
newAssociateSoftwareTokenRequest'  customize = (AssociateSoftwareTokenRequest <<< customize) { "AccessToken": Nothing, "Session": Nothing }



newtype AssociateSoftwareTokenResponse = AssociateSoftwareTokenResponse 
  { "SecretCode" :: Maybe (SecretCodeType)
  , "Session" :: Maybe (SessionType)
  }
derive instance newtypeAssociateSoftwareTokenResponse :: Newtype AssociateSoftwareTokenResponse _
derive instance repGenericAssociateSoftwareTokenResponse :: Generic AssociateSoftwareTokenResponse _
instance showAssociateSoftwareTokenResponse :: Show AssociateSoftwareTokenResponse where show = genericShow
instance decodeAssociateSoftwareTokenResponse :: Decode AssociateSoftwareTokenResponse where decode = genericDecode options
instance encodeAssociateSoftwareTokenResponse :: Encode AssociateSoftwareTokenResponse where encode = genericEncode options

-- | Constructs AssociateSoftwareTokenResponse from required parameters
newAssociateSoftwareTokenResponse :: AssociateSoftwareTokenResponse
newAssociateSoftwareTokenResponse  = AssociateSoftwareTokenResponse { "SecretCode": Nothing, "Session": Nothing }

-- | Constructs AssociateSoftwareTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateSoftwareTokenResponse' :: ( { "SecretCode" :: Maybe (SecretCodeType) , "Session" :: Maybe (SessionType) } -> {"SecretCode" :: Maybe (SecretCodeType) , "Session" :: Maybe (SessionType) } ) -> AssociateSoftwareTokenResponse
newAssociateSoftwareTokenResponse'  customize = (AssociateSoftwareTokenResponse <<< customize) { "SecretCode": Nothing, "Session": Nothing }



newtype AttributeDataType = AttributeDataType String
derive instance newtypeAttributeDataType :: Newtype AttributeDataType _
derive instance repGenericAttributeDataType :: Generic AttributeDataType _
instance showAttributeDataType :: Show AttributeDataType where show = genericShow
instance decodeAttributeDataType :: Decode AttributeDataType where decode = genericDecode options
instance encodeAttributeDataType :: Encode AttributeDataType where encode = genericEncode options



newtype AttributeListType = AttributeListType (Array AttributeType)
derive instance newtypeAttributeListType :: Newtype AttributeListType _
derive instance repGenericAttributeListType :: Generic AttributeListType _
instance showAttributeListType :: Show AttributeListType where show = genericShow
instance decodeAttributeListType :: Decode AttributeListType where decode = genericDecode options
instance encodeAttributeListType :: Encode AttributeListType where encode = genericEncode options



newtype AttributeMappingKeyType = AttributeMappingKeyType String
derive instance newtypeAttributeMappingKeyType :: Newtype AttributeMappingKeyType _
derive instance repGenericAttributeMappingKeyType :: Generic AttributeMappingKeyType _
instance showAttributeMappingKeyType :: Show AttributeMappingKeyType where show = genericShow
instance decodeAttributeMappingKeyType :: Decode AttributeMappingKeyType where decode = genericDecode options
instance encodeAttributeMappingKeyType :: Encode AttributeMappingKeyType where encode = genericEncode options



newtype AttributeMappingType = AttributeMappingType (StrMap.StrMap StringType)
derive instance newtypeAttributeMappingType :: Newtype AttributeMappingType _
derive instance repGenericAttributeMappingType :: Generic AttributeMappingType _
instance showAttributeMappingType :: Show AttributeMappingType where show = genericShow
instance decodeAttributeMappingType :: Decode AttributeMappingType where decode = genericDecode options
instance encodeAttributeMappingType :: Encode AttributeMappingType where encode = genericEncode options



newtype AttributeNameListType = AttributeNameListType (Array AttributeNameType)
derive instance newtypeAttributeNameListType :: Newtype AttributeNameListType _
derive instance repGenericAttributeNameListType :: Generic AttributeNameListType _
instance showAttributeNameListType :: Show AttributeNameListType where show = genericShow
instance decodeAttributeNameListType :: Decode AttributeNameListType where decode = genericDecode options
instance encodeAttributeNameListType :: Encode AttributeNameListType where encode = genericEncode options



newtype AttributeNameType = AttributeNameType String
derive instance newtypeAttributeNameType :: Newtype AttributeNameType _
derive instance repGenericAttributeNameType :: Generic AttributeNameType _
instance showAttributeNameType :: Show AttributeNameType where show = genericShow
instance decodeAttributeNameType :: Decode AttributeNameType where decode = genericDecode options
instance encodeAttributeNameType :: Encode AttributeNameType where encode = genericEncode options



-- | <p>Specifies whether the attribute is standard or custom.</p>
newtype AttributeType = AttributeType 
  { "Name" :: (AttributeNameType)
  , "Value" :: Maybe (AttributeValueType)
  }
derive instance newtypeAttributeType :: Newtype AttributeType _
derive instance repGenericAttributeType :: Generic AttributeType _
instance showAttributeType :: Show AttributeType where show = genericShow
instance decodeAttributeType :: Decode AttributeType where decode = genericDecode options
instance encodeAttributeType :: Encode AttributeType where encode = genericEncode options

-- | Constructs AttributeType from required parameters
newAttributeType :: AttributeNameType -> AttributeType
newAttributeType _Name = AttributeType { "Name": _Name, "Value": Nothing }

-- | Constructs AttributeType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeType' :: AttributeNameType -> ( { "Name" :: (AttributeNameType) , "Value" :: Maybe (AttributeValueType) } -> {"Name" :: (AttributeNameType) , "Value" :: Maybe (AttributeValueType) } ) -> AttributeType
newAttributeType' _Name customize = (AttributeType <<< customize) { "Name": _Name, "Value": Nothing }



newtype AttributeValueType = AttributeValueType String
derive instance newtypeAttributeValueType :: Newtype AttributeValueType _
derive instance repGenericAttributeValueType :: Generic AttributeValueType _
instance showAttributeValueType :: Show AttributeValueType where show = genericShow
instance decodeAttributeValueType :: Decode AttributeValueType where decode = genericDecode options
instance encodeAttributeValueType :: Encode AttributeValueType where encode = genericEncode options



-- | <p>The authentication event type.</p>
newtype AuthEventType = AuthEventType 
  { "EventId" :: Maybe (StringType)
  , "EventType" :: Maybe (EventType)
  , "CreationDate" :: Maybe (DateType)
  , "EventResponse" :: Maybe (EventResponseType)
  , "EventRisk" :: Maybe (EventRiskType)
  , "ChallengeResponses" :: Maybe (ChallengeResponseListType)
  , "EventContextData" :: Maybe (EventContextDataType)
  , "EventFeedback" :: Maybe (EventFeedbackType)
  }
derive instance newtypeAuthEventType :: Newtype AuthEventType _
derive instance repGenericAuthEventType :: Generic AuthEventType _
instance showAuthEventType :: Show AuthEventType where show = genericShow
instance decodeAuthEventType :: Decode AuthEventType where decode = genericDecode options
instance encodeAuthEventType :: Encode AuthEventType where encode = genericEncode options

-- | Constructs AuthEventType from required parameters
newAuthEventType :: AuthEventType
newAuthEventType  = AuthEventType { "ChallengeResponses": Nothing, "CreationDate": Nothing, "EventContextData": Nothing, "EventFeedback": Nothing, "EventId": Nothing, "EventResponse": Nothing, "EventRisk": Nothing, "EventType": Nothing }

-- | Constructs AuthEventType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthEventType' :: ( { "EventId" :: Maybe (StringType) , "EventType" :: Maybe (EventType) , "CreationDate" :: Maybe (DateType) , "EventResponse" :: Maybe (EventResponseType) , "EventRisk" :: Maybe (EventRiskType) , "ChallengeResponses" :: Maybe (ChallengeResponseListType) , "EventContextData" :: Maybe (EventContextDataType) , "EventFeedback" :: Maybe (EventFeedbackType) } -> {"EventId" :: Maybe (StringType) , "EventType" :: Maybe (EventType) , "CreationDate" :: Maybe (DateType) , "EventResponse" :: Maybe (EventResponseType) , "EventRisk" :: Maybe (EventRiskType) , "ChallengeResponses" :: Maybe (ChallengeResponseListType) , "EventContextData" :: Maybe (EventContextDataType) , "EventFeedback" :: Maybe (EventFeedbackType) } ) -> AuthEventType
newAuthEventType'  customize = (AuthEventType <<< customize) { "ChallengeResponses": Nothing, "CreationDate": Nothing, "EventContextData": Nothing, "EventFeedback": Nothing, "EventId": Nothing, "EventResponse": Nothing, "EventRisk": Nothing, "EventType": Nothing }



newtype AuthEventsType = AuthEventsType (Array AuthEventType)
derive instance newtypeAuthEventsType :: Newtype AuthEventsType _
derive instance repGenericAuthEventsType :: Generic AuthEventsType _
instance showAuthEventsType :: Show AuthEventsType where show = genericShow
instance decodeAuthEventsType :: Decode AuthEventsType where decode = genericDecode options
instance encodeAuthEventsType :: Encode AuthEventsType where encode = genericEncode options



newtype AuthFlowType = AuthFlowType String
derive instance newtypeAuthFlowType :: Newtype AuthFlowType _
derive instance repGenericAuthFlowType :: Generic AuthFlowType _
instance showAuthFlowType :: Show AuthFlowType where show = genericShow
instance decodeAuthFlowType :: Decode AuthFlowType where decode = genericDecode options
instance encodeAuthFlowType :: Encode AuthFlowType where encode = genericEncode options



newtype AuthParametersType = AuthParametersType (StrMap.StrMap StringType)
derive instance newtypeAuthParametersType :: Newtype AuthParametersType _
derive instance repGenericAuthParametersType :: Generic AuthParametersType _
instance showAuthParametersType :: Show AuthParametersType where show = genericShow
instance decodeAuthParametersType :: Decode AuthParametersType where decode = genericDecode options
instance encodeAuthParametersType :: Encode AuthParametersType where encode = genericEncode options



-- | <p>The authentication result.</p>
newtype AuthenticationResultType = AuthenticationResultType 
  { "AccessToken" :: Maybe (TokenModelType)
  , "ExpiresIn" :: Maybe (IntegerType)
  , "TokenType" :: Maybe (StringType)
  , "RefreshToken" :: Maybe (TokenModelType)
  , "IdToken" :: Maybe (TokenModelType)
  , "NewDeviceMetadata" :: Maybe (NewDeviceMetadataType)
  }
derive instance newtypeAuthenticationResultType :: Newtype AuthenticationResultType _
derive instance repGenericAuthenticationResultType :: Generic AuthenticationResultType _
instance showAuthenticationResultType :: Show AuthenticationResultType where show = genericShow
instance decodeAuthenticationResultType :: Decode AuthenticationResultType where decode = genericDecode options
instance encodeAuthenticationResultType :: Encode AuthenticationResultType where encode = genericEncode options

-- | Constructs AuthenticationResultType from required parameters
newAuthenticationResultType :: AuthenticationResultType
newAuthenticationResultType  = AuthenticationResultType { "AccessToken": Nothing, "ExpiresIn": Nothing, "IdToken": Nothing, "NewDeviceMetadata": Nothing, "RefreshToken": Nothing, "TokenType": Nothing }

-- | Constructs AuthenticationResultType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthenticationResultType' :: ( { "AccessToken" :: Maybe (TokenModelType) , "ExpiresIn" :: Maybe (IntegerType) , "TokenType" :: Maybe (StringType) , "RefreshToken" :: Maybe (TokenModelType) , "IdToken" :: Maybe (TokenModelType) , "NewDeviceMetadata" :: Maybe (NewDeviceMetadataType) } -> {"AccessToken" :: Maybe (TokenModelType) , "ExpiresIn" :: Maybe (IntegerType) , "TokenType" :: Maybe (StringType) , "RefreshToken" :: Maybe (TokenModelType) , "IdToken" :: Maybe (TokenModelType) , "NewDeviceMetadata" :: Maybe (NewDeviceMetadataType) } ) -> AuthenticationResultType
newAuthenticationResultType'  customize = (AuthenticationResultType <<< customize) { "AccessToken": Nothing, "ExpiresIn": Nothing, "IdToken": Nothing, "NewDeviceMetadata": Nothing, "RefreshToken": Nothing, "TokenType": Nothing }



newtype BlockedIPRangeListType = BlockedIPRangeListType (Array StringType)
derive instance newtypeBlockedIPRangeListType :: Newtype BlockedIPRangeListType _
derive instance repGenericBlockedIPRangeListType :: Generic BlockedIPRangeListType _
instance showBlockedIPRangeListType :: Show BlockedIPRangeListType where show = genericShow
instance decodeBlockedIPRangeListType :: Decode BlockedIPRangeListType where decode = genericDecode options
instance encodeBlockedIPRangeListType :: Encode BlockedIPRangeListType where encode = genericEncode options



newtype BooleanType = BooleanType Boolean
derive instance newtypeBooleanType :: Newtype BooleanType _
derive instance repGenericBooleanType :: Generic BooleanType _
instance showBooleanType :: Show BooleanType where show = genericShow
instance decodeBooleanType :: Decode BooleanType where decode = genericDecode options
instance encodeBooleanType :: Encode BooleanType where encode = genericEncode options



newtype CSSType = CSSType String
derive instance newtypeCSSType :: Newtype CSSType _
derive instance repGenericCSSType :: Generic CSSType _
instance showCSSType :: Show CSSType where show = genericShow
instance decodeCSSType :: Decode CSSType where decode = genericDecode options
instance encodeCSSType :: Encode CSSType where encode = genericEncode options



newtype CSSVersionType = CSSVersionType String
derive instance newtypeCSSVersionType :: Newtype CSSVersionType _
derive instance repGenericCSSVersionType :: Generic CSSVersionType _
instance showCSSVersionType :: Show CSSVersionType where show = genericShow
instance decodeCSSVersionType :: Decode CSSVersionType where decode = genericDecode options
instance encodeCSSVersionType :: Encode CSSVersionType where encode = genericEncode options



newtype CallbackURLsListType = CallbackURLsListType (Array RedirectUrlType)
derive instance newtypeCallbackURLsListType :: Newtype CallbackURLsListType _
derive instance repGenericCallbackURLsListType :: Generic CallbackURLsListType _
instance showCallbackURLsListType :: Show CallbackURLsListType where show = genericShow
instance decodeCallbackURLsListType :: Decode CallbackURLsListType where decode = genericDecode options
instance encodeCallbackURLsListType :: Encode CallbackURLsListType where encode = genericEncode options



newtype ChallengeName = ChallengeName String
derive instance newtypeChallengeName :: Newtype ChallengeName _
derive instance repGenericChallengeName :: Generic ChallengeName _
instance showChallengeName :: Show ChallengeName where show = genericShow
instance decodeChallengeName :: Decode ChallengeName where decode = genericDecode options
instance encodeChallengeName :: Encode ChallengeName where encode = genericEncode options



newtype ChallengeNameType = ChallengeNameType String
derive instance newtypeChallengeNameType :: Newtype ChallengeNameType _
derive instance repGenericChallengeNameType :: Generic ChallengeNameType _
instance showChallengeNameType :: Show ChallengeNameType where show = genericShow
instance decodeChallengeNameType :: Decode ChallengeNameType where decode = genericDecode options
instance encodeChallengeNameType :: Encode ChallengeNameType where encode = genericEncode options



newtype ChallengeParametersType = ChallengeParametersType (StrMap.StrMap StringType)
derive instance newtypeChallengeParametersType :: Newtype ChallengeParametersType _
derive instance repGenericChallengeParametersType :: Generic ChallengeParametersType _
instance showChallengeParametersType :: Show ChallengeParametersType where show = genericShow
instance decodeChallengeParametersType :: Decode ChallengeParametersType where decode = genericDecode options
instance encodeChallengeParametersType :: Encode ChallengeParametersType where encode = genericEncode options



newtype ChallengeResponse = ChallengeResponse String
derive instance newtypeChallengeResponse :: Newtype ChallengeResponse _
derive instance repGenericChallengeResponse :: Generic ChallengeResponse _
instance showChallengeResponse :: Show ChallengeResponse where show = genericShow
instance decodeChallengeResponse :: Decode ChallengeResponse where decode = genericDecode options
instance encodeChallengeResponse :: Encode ChallengeResponse where encode = genericEncode options



newtype ChallengeResponseListType = ChallengeResponseListType (Array ChallengeResponseType)
derive instance newtypeChallengeResponseListType :: Newtype ChallengeResponseListType _
derive instance repGenericChallengeResponseListType :: Generic ChallengeResponseListType _
instance showChallengeResponseListType :: Show ChallengeResponseListType where show = genericShow
instance decodeChallengeResponseListType :: Decode ChallengeResponseListType where decode = genericDecode options
instance encodeChallengeResponseListType :: Encode ChallengeResponseListType where encode = genericEncode options



-- | <p>The challenge response type.</p>
newtype ChallengeResponseType = ChallengeResponseType 
  { "ChallengeName" :: Maybe (ChallengeName)
  , "ChallengeResponse" :: Maybe (ChallengeResponse)
  }
derive instance newtypeChallengeResponseType :: Newtype ChallengeResponseType _
derive instance repGenericChallengeResponseType :: Generic ChallengeResponseType _
instance showChallengeResponseType :: Show ChallengeResponseType where show = genericShow
instance decodeChallengeResponseType :: Decode ChallengeResponseType where decode = genericDecode options
instance encodeChallengeResponseType :: Encode ChallengeResponseType where encode = genericEncode options

-- | Constructs ChallengeResponseType from required parameters
newChallengeResponseType :: ChallengeResponseType
newChallengeResponseType  = ChallengeResponseType { "ChallengeName": Nothing, "ChallengeResponse": Nothing }

-- | Constructs ChallengeResponseType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChallengeResponseType' :: ( { "ChallengeName" :: Maybe (ChallengeName) , "ChallengeResponse" :: Maybe (ChallengeResponse) } -> {"ChallengeName" :: Maybe (ChallengeName) , "ChallengeResponse" :: Maybe (ChallengeResponse) } ) -> ChallengeResponseType
newChallengeResponseType'  customize = (ChallengeResponseType <<< customize) { "ChallengeName": Nothing, "ChallengeResponse": Nothing }



newtype ChallengeResponsesType = ChallengeResponsesType (StrMap.StrMap StringType)
derive instance newtypeChallengeResponsesType :: Newtype ChallengeResponsesType _
derive instance repGenericChallengeResponsesType :: Generic ChallengeResponsesType _
instance showChallengeResponsesType :: Show ChallengeResponsesType where show = genericShow
instance decodeChallengeResponsesType :: Decode ChallengeResponsesType where decode = genericDecode options
instance encodeChallengeResponsesType :: Encode ChallengeResponsesType where encode = genericEncode options



-- | <p>Represents the request to change a user password.</p>
newtype ChangePasswordRequest = ChangePasswordRequest 
  { "PreviousPassword" :: (PasswordType)
  , "ProposedPassword" :: (PasswordType)
  , "AccessToken" :: (TokenModelType)
  }
derive instance newtypeChangePasswordRequest :: Newtype ChangePasswordRequest _
derive instance repGenericChangePasswordRequest :: Generic ChangePasswordRequest _
instance showChangePasswordRequest :: Show ChangePasswordRequest where show = genericShow
instance decodeChangePasswordRequest :: Decode ChangePasswordRequest where decode = genericDecode options
instance encodeChangePasswordRequest :: Encode ChangePasswordRequest where encode = genericEncode options

-- | Constructs ChangePasswordRequest from required parameters
newChangePasswordRequest :: TokenModelType -> PasswordType -> PasswordType -> ChangePasswordRequest
newChangePasswordRequest _AccessToken _PreviousPassword _ProposedPassword = ChangePasswordRequest { "AccessToken": _AccessToken, "PreviousPassword": _PreviousPassword, "ProposedPassword": _ProposedPassword }

-- | Constructs ChangePasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangePasswordRequest' :: TokenModelType -> PasswordType -> PasswordType -> ( { "PreviousPassword" :: (PasswordType) , "ProposedPassword" :: (PasswordType) , "AccessToken" :: (TokenModelType) } -> {"PreviousPassword" :: (PasswordType) , "ProposedPassword" :: (PasswordType) , "AccessToken" :: (TokenModelType) } ) -> ChangePasswordRequest
newChangePasswordRequest' _AccessToken _PreviousPassword _ProposedPassword customize = (ChangePasswordRequest <<< customize) { "AccessToken": _AccessToken, "PreviousPassword": _PreviousPassword, "ProposedPassword": _ProposedPassword }



-- | <p>The response from the server to the change password request.</p>
newtype ChangePasswordResponse = ChangePasswordResponse Types.NoArguments
derive instance newtypeChangePasswordResponse :: Newtype ChangePasswordResponse _
derive instance repGenericChangePasswordResponse :: Generic ChangePasswordResponse _
instance showChangePasswordResponse :: Show ChangePasswordResponse where show = genericShow
instance decodeChangePasswordResponse :: Decode ChangePasswordResponse where decode = genericDecode options
instance encodeChangePasswordResponse :: Encode ChangePasswordResponse where encode = genericEncode options



newtype ClientIdType = ClientIdType String
derive instance newtypeClientIdType :: Newtype ClientIdType _
derive instance repGenericClientIdType :: Generic ClientIdType _
instance showClientIdType :: Show ClientIdType where show = genericShow
instance decodeClientIdType :: Decode ClientIdType where decode = genericDecode options
instance encodeClientIdType :: Encode ClientIdType where encode = genericEncode options



newtype ClientMetadataType = ClientMetadataType (StrMap.StrMap StringType)
derive instance newtypeClientMetadataType :: Newtype ClientMetadataType _
derive instance repGenericClientMetadataType :: Generic ClientMetadataType _
instance showClientMetadataType :: Show ClientMetadataType where show = genericShow
instance decodeClientMetadataType :: Decode ClientMetadataType where decode = genericDecode options
instance encodeClientMetadataType :: Encode ClientMetadataType where encode = genericEncode options



newtype ClientNameType = ClientNameType String
derive instance newtypeClientNameType :: Newtype ClientNameType _
derive instance repGenericClientNameType :: Generic ClientNameType _
instance showClientNameType :: Show ClientNameType where show = genericShow
instance decodeClientNameType :: Decode ClientNameType where decode = genericDecode options
instance encodeClientNameType :: Encode ClientNameType where encode = genericEncode options



newtype ClientPermissionListType = ClientPermissionListType (Array ClientPermissionType)
derive instance newtypeClientPermissionListType :: Newtype ClientPermissionListType _
derive instance repGenericClientPermissionListType :: Generic ClientPermissionListType _
instance showClientPermissionListType :: Show ClientPermissionListType where show = genericShow
instance decodeClientPermissionListType :: Decode ClientPermissionListType where decode = genericDecode options
instance encodeClientPermissionListType :: Encode ClientPermissionListType where encode = genericEncode options



newtype ClientPermissionType = ClientPermissionType String
derive instance newtypeClientPermissionType :: Newtype ClientPermissionType _
derive instance repGenericClientPermissionType :: Generic ClientPermissionType _
instance showClientPermissionType :: Show ClientPermissionType where show = genericShow
instance decodeClientPermissionType :: Decode ClientPermissionType where decode = genericDecode options
instance encodeClientPermissionType :: Encode ClientPermissionType where encode = genericEncode options



newtype ClientSecretType = ClientSecretType String
derive instance newtypeClientSecretType :: Newtype ClientSecretType _
derive instance repGenericClientSecretType :: Generic ClientSecretType _
instance showClientSecretType :: Show ClientSecretType where show = genericShow
instance decodeClientSecretType :: Decode ClientSecretType where decode = genericDecode options
instance encodeClientSecretType :: Encode ClientSecretType where encode = genericEncode options



newtype CodeDeliveryDetailsListType = CodeDeliveryDetailsListType (Array CodeDeliveryDetailsType)
derive instance newtypeCodeDeliveryDetailsListType :: Newtype CodeDeliveryDetailsListType _
derive instance repGenericCodeDeliveryDetailsListType :: Generic CodeDeliveryDetailsListType _
instance showCodeDeliveryDetailsListType :: Show CodeDeliveryDetailsListType where show = genericShow
instance decodeCodeDeliveryDetailsListType :: Decode CodeDeliveryDetailsListType where decode = genericDecode options
instance encodeCodeDeliveryDetailsListType :: Encode CodeDeliveryDetailsListType where encode = genericEncode options



-- | <p>The code delivery details being returned from the server.</p>
newtype CodeDeliveryDetailsType = CodeDeliveryDetailsType 
  { "Destination" :: Maybe (StringType)
  , "DeliveryMedium" :: Maybe (DeliveryMediumType)
  , "AttributeName" :: Maybe (AttributeNameType)
  }
derive instance newtypeCodeDeliveryDetailsType :: Newtype CodeDeliveryDetailsType _
derive instance repGenericCodeDeliveryDetailsType :: Generic CodeDeliveryDetailsType _
instance showCodeDeliveryDetailsType :: Show CodeDeliveryDetailsType where show = genericShow
instance decodeCodeDeliveryDetailsType :: Decode CodeDeliveryDetailsType where decode = genericDecode options
instance encodeCodeDeliveryDetailsType :: Encode CodeDeliveryDetailsType where encode = genericEncode options

-- | Constructs CodeDeliveryDetailsType from required parameters
newCodeDeliveryDetailsType :: CodeDeliveryDetailsType
newCodeDeliveryDetailsType  = CodeDeliveryDetailsType { "AttributeName": Nothing, "DeliveryMedium": Nothing, "Destination": Nothing }

-- | Constructs CodeDeliveryDetailsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeDeliveryDetailsType' :: ( { "Destination" :: Maybe (StringType) , "DeliveryMedium" :: Maybe (DeliveryMediumType) , "AttributeName" :: Maybe (AttributeNameType) } -> {"Destination" :: Maybe (StringType) , "DeliveryMedium" :: Maybe (DeliveryMediumType) , "AttributeName" :: Maybe (AttributeNameType) } ) -> CodeDeliveryDetailsType
newCodeDeliveryDetailsType'  customize = (CodeDeliveryDetailsType <<< customize) { "AttributeName": Nothing, "DeliveryMedium": Nothing, "Destination": Nothing }



-- | <p>This exception is thrown when a verification code fails to deliver successfully.</p>
newtype CodeDeliveryFailureException = CodeDeliveryFailureException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeCodeDeliveryFailureException :: Newtype CodeDeliveryFailureException _
derive instance repGenericCodeDeliveryFailureException :: Generic CodeDeliveryFailureException _
instance showCodeDeliveryFailureException :: Show CodeDeliveryFailureException where show = genericShow
instance decodeCodeDeliveryFailureException :: Decode CodeDeliveryFailureException where decode = genericDecode options
instance encodeCodeDeliveryFailureException :: Encode CodeDeliveryFailureException where encode = genericEncode options

-- | Constructs CodeDeliveryFailureException from required parameters
newCodeDeliveryFailureException :: CodeDeliveryFailureException
newCodeDeliveryFailureException  = CodeDeliveryFailureException { "message": Nothing }

-- | Constructs CodeDeliveryFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeDeliveryFailureException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> CodeDeliveryFailureException
newCodeDeliveryFailureException'  customize = (CodeDeliveryFailureException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown if the provided code does not match what the server was expecting.</p>
newtype CodeMismatchException = CodeMismatchException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeCodeMismatchException :: Newtype CodeMismatchException _
derive instance repGenericCodeMismatchException :: Generic CodeMismatchException _
instance showCodeMismatchException :: Show CodeMismatchException where show = genericShow
instance decodeCodeMismatchException :: Decode CodeMismatchException where decode = genericDecode options
instance encodeCodeMismatchException :: Encode CodeMismatchException where encode = genericEncode options

-- | Constructs CodeMismatchException from required parameters
newCodeMismatchException :: CodeMismatchException
newCodeMismatchException  = CodeMismatchException { "message": Nothing }

-- | Constructs CodeMismatchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeMismatchException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> CodeMismatchException
newCodeMismatchException'  customize = (CodeMismatchException <<< customize) { "message": Nothing }



newtype CompletionMessageType = CompletionMessageType String
derive instance newtypeCompletionMessageType :: Newtype CompletionMessageType _
derive instance repGenericCompletionMessageType :: Generic CompletionMessageType _
instance showCompletionMessageType :: Show CompletionMessageType where show = genericShow
instance decodeCompletionMessageType :: Decode CompletionMessageType where decode = genericDecode options
instance encodeCompletionMessageType :: Encode CompletionMessageType where encode = genericEncode options



-- | <p>The compromised credentials actions type</p>
newtype CompromisedCredentialsActionsType = CompromisedCredentialsActionsType 
  { "EventAction" :: (CompromisedCredentialsEventActionType)
  }
derive instance newtypeCompromisedCredentialsActionsType :: Newtype CompromisedCredentialsActionsType _
derive instance repGenericCompromisedCredentialsActionsType :: Generic CompromisedCredentialsActionsType _
instance showCompromisedCredentialsActionsType :: Show CompromisedCredentialsActionsType where show = genericShow
instance decodeCompromisedCredentialsActionsType :: Decode CompromisedCredentialsActionsType where decode = genericDecode options
instance encodeCompromisedCredentialsActionsType :: Encode CompromisedCredentialsActionsType where encode = genericEncode options

-- | Constructs CompromisedCredentialsActionsType from required parameters
newCompromisedCredentialsActionsType :: CompromisedCredentialsEventActionType -> CompromisedCredentialsActionsType
newCompromisedCredentialsActionsType _EventAction = CompromisedCredentialsActionsType { "EventAction": _EventAction }

-- | Constructs CompromisedCredentialsActionsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompromisedCredentialsActionsType' :: CompromisedCredentialsEventActionType -> ( { "EventAction" :: (CompromisedCredentialsEventActionType) } -> {"EventAction" :: (CompromisedCredentialsEventActionType) } ) -> CompromisedCredentialsActionsType
newCompromisedCredentialsActionsType' _EventAction customize = (CompromisedCredentialsActionsType <<< customize) { "EventAction": _EventAction }



newtype CompromisedCredentialsEventActionType = CompromisedCredentialsEventActionType String
derive instance newtypeCompromisedCredentialsEventActionType :: Newtype CompromisedCredentialsEventActionType _
derive instance repGenericCompromisedCredentialsEventActionType :: Generic CompromisedCredentialsEventActionType _
instance showCompromisedCredentialsEventActionType :: Show CompromisedCredentialsEventActionType where show = genericShow
instance decodeCompromisedCredentialsEventActionType :: Decode CompromisedCredentialsEventActionType where decode = genericDecode options
instance encodeCompromisedCredentialsEventActionType :: Encode CompromisedCredentialsEventActionType where encode = genericEncode options



-- | <p>The compromised credentials risk configuration type.</p>
newtype CompromisedCredentialsRiskConfigurationType = CompromisedCredentialsRiskConfigurationType 
  { "EventFilter" :: Maybe (EventFiltersType)
  , "Actions" :: (CompromisedCredentialsActionsType)
  }
derive instance newtypeCompromisedCredentialsRiskConfigurationType :: Newtype CompromisedCredentialsRiskConfigurationType _
derive instance repGenericCompromisedCredentialsRiskConfigurationType :: Generic CompromisedCredentialsRiskConfigurationType _
instance showCompromisedCredentialsRiskConfigurationType :: Show CompromisedCredentialsRiskConfigurationType where show = genericShow
instance decodeCompromisedCredentialsRiskConfigurationType :: Decode CompromisedCredentialsRiskConfigurationType where decode = genericDecode options
instance encodeCompromisedCredentialsRiskConfigurationType :: Encode CompromisedCredentialsRiskConfigurationType where encode = genericEncode options

-- | Constructs CompromisedCredentialsRiskConfigurationType from required parameters
newCompromisedCredentialsRiskConfigurationType :: CompromisedCredentialsActionsType -> CompromisedCredentialsRiskConfigurationType
newCompromisedCredentialsRiskConfigurationType _Actions = CompromisedCredentialsRiskConfigurationType { "Actions": _Actions, "EventFilter": Nothing }

-- | Constructs CompromisedCredentialsRiskConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompromisedCredentialsRiskConfigurationType' :: CompromisedCredentialsActionsType -> ( { "EventFilter" :: Maybe (EventFiltersType) , "Actions" :: (CompromisedCredentialsActionsType) } -> {"EventFilter" :: Maybe (EventFiltersType) , "Actions" :: (CompromisedCredentialsActionsType) } ) -> CompromisedCredentialsRiskConfigurationType
newCompromisedCredentialsRiskConfigurationType' _Actions customize = (CompromisedCredentialsRiskConfigurationType <<< customize) { "Actions": _Actions, "EventFilter": Nothing }



-- | <p>This exception is thrown if two or more modifications are happening concurrently.</p>
newtype ConcurrentModificationException = ConcurrentModificationException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeConcurrentModificationException :: Newtype ConcurrentModificationException _
derive instance repGenericConcurrentModificationException :: Generic ConcurrentModificationException _
instance showConcurrentModificationException :: Show ConcurrentModificationException where show = genericShow
instance decodeConcurrentModificationException :: Decode ConcurrentModificationException where decode = genericDecode options
instance encodeConcurrentModificationException :: Encode ConcurrentModificationException where encode = genericEncode options

-- | Constructs ConcurrentModificationException from required parameters
newConcurrentModificationException :: ConcurrentModificationException
newConcurrentModificationException  = ConcurrentModificationException { "message": Nothing }

-- | Constructs ConcurrentModificationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModificationException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> ConcurrentModificationException
newConcurrentModificationException'  customize = (ConcurrentModificationException <<< customize) { "message": Nothing }



-- | <p>Confirms the device request.</p>
newtype ConfirmDeviceRequest = ConfirmDeviceRequest 
  { "AccessToken" :: (TokenModelType)
  , "DeviceKey" :: (DeviceKeyType)
  , "DeviceSecretVerifierConfig" :: Maybe (DeviceSecretVerifierConfigType)
  , "DeviceName" :: Maybe (DeviceNameType)
  }
derive instance newtypeConfirmDeviceRequest :: Newtype ConfirmDeviceRequest _
derive instance repGenericConfirmDeviceRequest :: Generic ConfirmDeviceRequest _
instance showConfirmDeviceRequest :: Show ConfirmDeviceRequest where show = genericShow
instance decodeConfirmDeviceRequest :: Decode ConfirmDeviceRequest where decode = genericDecode options
instance encodeConfirmDeviceRequest :: Encode ConfirmDeviceRequest where encode = genericEncode options

-- | Constructs ConfirmDeviceRequest from required parameters
newConfirmDeviceRequest :: TokenModelType -> DeviceKeyType -> ConfirmDeviceRequest
newConfirmDeviceRequest _AccessToken _DeviceKey = ConfirmDeviceRequest { "AccessToken": _AccessToken, "DeviceKey": _DeviceKey, "DeviceName": Nothing, "DeviceSecretVerifierConfig": Nothing }

-- | Constructs ConfirmDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmDeviceRequest' :: TokenModelType -> DeviceKeyType -> ( { "AccessToken" :: (TokenModelType) , "DeviceKey" :: (DeviceKeyType) , "DeviceSecretVerifierConfig" :: Maybe (DeviceSecretVerifierConfigType) , "DeviceName" :: Maybe (DeviceNameType) } -> {"AccessToken" :: (TokenModelType) , "DeviceKey" :: (DeviceKeyType) , "DeviceSecretVerifierConfig" :: Maybe (DeviceSecretVerifierConfigType) , "DeviceName" :: Maybe (DeviceNameType) } ) -> ConfirmDeviceRequest
newConfirmDeviceRequest' _AccessToken _DeviceKey customize = (ConfirmDeviceRequest <<< customize) { "AccessToken": _AccessToken, "DeviceKey": _DeviceKey, "DeviceName": Nothing, "DeviceSecretVerifierConfig": Nothing }



-- | <p>Confirms the device response.</p>
newtype ConfirmDeviceResponse = ConfirmDeviceResponse 
  { "UserConfirmationNecessary" :: Maybe (BooleanType)
  }
derive instance newtypeConfirmDeviceResponse :: Newtype ConfirmDeviceResponse _
derive instance repGenericConfirmDeviceResponse :: Generic ConfirmDeviceResponse _
instance showConfirmDeviceResponse :: Show ConfirmDeviceResponse where show = genericShow
instance decodeConfirmDeviceResponse :: Decode ConfirmDeviceResponse where decode = genericDecode options
instance encodeConfirmDeviceResponse :: Encode ConfirmDeviceResponse where encode = genericEncode options

-- | Constructs ConfirmDeviceResponse from required parameters
newConfirmDeviceResponse :: ConfirmDeviceResponse
newConfirmDeviceResponse  = ConfirmDeviceResponse { "UserConfirmationNecessary": Nothing }

-- | Constructs ConfirmDeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmDeviceResponse' :: ( { "UserConfirmationNecessary" :: Maybe (BooleanType) } -> {"UserConfirmationNecessary" :: Maybe (BooleanType) } ) -> ConfirmDeviceResponse
newConfirmDeviceResponse'  customize = (ConfirmDeviceResponse <<< customize) { "UserConfirmationNecessary": Nothing }



-- | <p>The request representing the confirmation for a password reset.</p>
newtype ConfirmForgotPasswordRequest = ConfirmForgotPasswordRequest 
  { "ClientId" :: (ClientIdType)
  , "SecretHash" :: Maybe (SecretHashType)
  , "Username" :: (UsernameType)
  , "ConfirmationCode" :: (ConfirmationCodeType)
  , "Password" :: (PasswordType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "UserContextData" :: Maybe (UserContextDataType)
  }
derive instance newtypeConfirmForgotPasswordRequest :: Newtype ConfirmForgotPasswordRequest _
derive instance repGenericConfirmForgotPasswordRequest :: Generic ConfirmForgotPasswordRequest _
instance showConfirmForgotPasswordRequest :: Show ConfirmForgotPasswordRequest where show = genericShow
instance decodeConfirmForgotPasswordRequest :: Decode ConfirmForgotPasswordRequest where decode = genericDecode options
instance encodeConfirmForgotPasswordRequest :: Encode ConfirmForgotPasswordRequest where encode = genericEncode options

-- | Constructs ConfirmForgotPasswordRequest from required parameters
newConfirmForgotPasswordRequest :: ClientIdType -> ConfirmationCodeType -> PasswordType -> UsernameType -> ConfirmForgotPasswordRequest
newConfirmForgotPasswordRequest _ClientId _ConfirmationCode _Password _Username = ConfirmForgotPasswordRequest { "ClientId": _ClientId, "ConfirmationCode": _ConfirmationCode, "Password": _Password, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }

-- | Constructs ConfirmForgotPasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmForgotPasswordRequest' :: ClientIdType -> ConfirmationCodeType -> PasswordType -> UsernameType -> ( { "ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "ConfirmationCode" :: (ConfirmationCodeType) , "Password" :: (PasswordType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } -> {"ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "ConfirmationCode" :: (ConfirmationCodeType) , "Password" :: (PasswordType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } ) -> ConfirmForgotPasswordRequest
newConfirmForgotPasswordRequest' _ClientId _ConfirmationCode _Password _Username customize = (ConfirmForgotPasswordRequest <<< customize) { "ClientId": _ClientId, "ConfirmationCode": _ConfirmationCode, "Password": _Password, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }



-- | <p>The response from the server that results from a user's request to retrieve a forgotten password.</p>
newtype ConfirmForgotPasswordResponse = ConfirmForgotPasswordResponse Types.NoArguments
derive instance newtypeConfirmForgotPasswordResponse :: Newtype ConfirmForgotPasswordResponse _
derive instance repGenericConfirmForgotPasswordResponse :: Generic ConfirmForgotPasswordResponse _
instance showConfirmForgotPasswordResponse :: Show ConfirmForgotPasswordResponse where show = genericShow
instance decodeConfirmForgotPasswordResponse :: Decode ConfirmForgotPasswordResponse where decode = genericDecode options
instance encodeConfirmForgotPasswordResponse :: Encode ConfirmForgotPasswordResponse where encode = genericEncode options



-- | <p>Represents the request to confirm registration of a user.</p>
newtype ConfirmSignUpRequest = ConfirmSignUpRequest 
  { "ClientId" :: (ClientIdType)
  , "SecretHash" :: Maybe (SecretHashType)
  , "Username" :: (UsernameType)
  , "ConfirmationCode" :: (ConfirmationCodeType)
  , "ForceAliasCreation" :: Maybe (ForceAliasCreation)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "UserContextData" :: Maybe (UserContextDataType)
  }
derive instance newtypeConfirmSignUpRequest :: Newtype ConfirmSignUpRequest _
derive instance repGenericConfirmSignUpRequest :: Generic ConfirmSignUpRequest _
instance showConfirmSignUpRequest :: Show ConfirmSignUpRequest where show = genericShow
instance decodeConfirmSignUpRequest :: Decode ConfirmSignUpRequest where decode = genericDecode options
instance encodeConfirmSignUpRequest :: Encode ConfirmSignUpRequest where encode = genericEncode options

-- | Constructs ConfirmSignUpRequest from required parameters
newConfirmSignUpRequest :: ClientIdType -> ConfirmationCodeType -> UsernameType -> ConfirmSignUpRequest
newConfirmSignUpRequest _ClientId _ConfirmationCode _Username = ConfirmSignUpRequest { "ClientId": _ClientId, "ConfirmationCode": _ConfirmationCode, "Username": _Username, "AnalyticsMetadata": Nothing, "ForceAliasCreation": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }

-- | Constructs ConfirmSignUpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmSignUpRequest' :: ClientIdType -> ConfirmationCodeType -> UsernameType -> ( { "ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "ConfirmationCode" :: (ConfirmationCodeType) , "ForceAliasCreation" :: Maybe (ForceAliasCreation) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } -> {"ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "ConfirmationCode" :: (ConfirmationCodeType) , "ForceAliasCreation" :: Maybe (ForceAliasCreation) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } ) -> ConfirmSignUpRequest
newConfirmSignUpRequest' _ClientId _ConfirmationCode _Username customize = (ConfirmSignUpRequest <<< customize) { "ClientId": _ClientId, "ConfirmationCode": _ConfirmationCode, "Username": _Username, "AnalyticsMetadata": Nothing, "ForceAliasCreation": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }



-- | <p>Represents the response from the server for the registration confirmation.</p>
newtype ConfirmSignUpResponse = ConfirmSignUpResponse Types.NoArguments
derive instance newtypeConfirmSignUpResponse :: Newtype ConfirmSignUpResponse _
derive instance repGenericConfirmSignUpResponse :: Generic ConfirmSignUpResponse _
instance showConfirmSignUpResponse :: Show ConfirmSignUpResponse where show = genericShow
instance decodeConfirmSignUpResponse :: Decode ConfirmSignUpResponse where decode = genericDecode options
instance encodeConfirmSignUpResponse :: Encode ConfirmSignUpResponse where encode = genericEncode options



newtype ConfirmationCodeType = ConfirmationCodeType String
derive instance newtypeConfirmationCodeType :: Newtype ConfirmationCodeType _
derive instance repGenericConfirmationCodeType :: Generic ConfirmationCodeType _
instance showConfirmationCodeType :: Show ConfirmationCodeType where show = genericShow
instance decodeConfirmationCodeType :: Decode ConfirmationCodeType where decode = genericDecode options
instance encodeConfirmationCodeType :: Encode ConfirmationCodeType where encode = genericEncode options



-- | <p>Contextual user data type used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
newtype ContextDataType = ContextDataType 
  { "IpAddress" :: (StringType)
  , "ServerName" :: (StringType)
  , "ServerPath" :: (StringType)
  , "HttpHeaders" :: (HttpHeaderList)
  , "EncodedData" :: Maybe (StringType)
  }
derive instance newtypeContextDataType :: Newtype ContextDataType _
derive instance repGenericContextDataType :: Generic ContextDataType _
instance showContextDataType :: Show ContextDataType where show = genericShow
instance decodeContextDataType :: Decode ContextDataType where decode = genericDecode options
instance encodeContextDataType :: Encode ContextDataType where encode = genericEncode options

-- | Constructs ContextDataType from required parameters
newContextDataType :: HttpHeaderList -> StringType -> StringType -> StringType -> ContextDataType
newContextDataType _HttpHeaders _IpAddress _ServerName _ServerPath = ContextDataType { "HttpHeaders": _HttpHeaders, "IpAddress": _IpAddress, "ServerName": _ServerName, "ServerPath": _ServerPath, "EncodedData": Nothing }

-- | Constructs ContextDataType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContextDataType' :: HttpHeaderList -> StringType -> StringType -> StringType -> ( { "IpAddress" :: (StringType) , "ServerName" :: (StringType) , "ServerPath" :: (StringType) , "HttpHeaders" :: (HttpHeaderList) , "EncodedData" :: Maybe (StringType) } -> {"IpAddress" :: (StringType) , "ServerName" :: (StringType) , "ServerPath" :: (StringType) , "HttpHeaders" :: (HttpHeaderList) , "EncodedData" :: Maybe (StringType) } ) -> ContextDataType
newContextDataType' _HttpHeaders _IpAddress _ServerName _ServerPath customize = (ContextDataType <<< customize) { "HttpHeaders": _HttpHeaders, "IpAddress": _IpAddress, "ServerName": _ServerName, "ServerPath": _ServerPath, "EncodedData": Nothing }



newtype CreateGroupRequest = CreateGroupRequest 
  { "GroupName" :: (GroupNameType)
  , "UserPoolId" :: (UserPoolIdType)
  , "Description" :: Maybe (DescriptionType)
  , "RoleArn" :: Maybe (ArnType)
  , "Precedence" :: Maybe (PrecedenceType)
  }
derive instance newtypeCreateGroupRequest :: Newtype CreateGroupRequest _
derive instance repGenericCreateGroupRequest :: Generic CreateGroupRequest _
instance showCreateGroupRequest :: Show CreateGroupRequest where show = genericShow
instance decodeCreateGroupRequest :: Decode CreateGroupRequest where decode = genericDecode options
instance encodeCreateGroupRequest :: Encode CreateGroupRequest where encode = genericEncode options

-- | Constructs CreateGroupRequest from required parameters
newCreateGroupRequest :: GroupNameType -> UserPoolIdType -> CreateGroupRequest
newCreateGroupRequest _GroupName _UserPoolId = CreateGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Description": Nothing, "Precedence": Nothing, "RoleArn": Nothing }

-- | Constructs CreateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupRequest' :: GroupNameType -> UserPoolIdType -> ( { "GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) } -> {"GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) } ) -> CreateGroupRequest
newCreateGroupRequest' _GroupName _UserPoolId customize = (CreateGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Description": Nothing, "Precedence": Nothing, "RoleArn": Nothing }



newtype CreateGroupResponse = CreateGroupResponse 
  { "Group" :: Maybe (GroupType)
  }
derive instance newtypeCreateGroupResponse :: Newtype CreateGroupResponse _
derive instance repGenericCreateGroupResponse :: Generic CreateGroupResponse _
instance showCreateGroupResponse :: Show CreateGroupResponse where show = genericShow
instance decodeCreateGroupResponse :: Decode CreateGroupResponse where decode = genericDecode options
instance encodeCreateGroupResponse :: Encode CreateGroupResponse where encode = genericEncode options

-- | Constructs CreateGroupResponse from required parameters
newCreateGroupResponse :: CreateGroupResponse
newCreateGroupResponse  = CreateGroupResponse { "Group": Nothing }

-- | Constructs CreateGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupResponse' :: ( { "Group" :: Maybe (GroupType) } -> {"Group" :: Maybe (GroupType) } ) -> CreateGroupResponse
newCreateGroupResponse'  customize = (CreateGroupResponse <<< customize) { "Group": Nothing }



newtype CreateIdentityProviderRequest = CreateIdentityProviderRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ProviderName" :: (ProviderNameTypeV1)
  , "ProviderType" :: (IdentityProviderTypeType)
  , "ProviderDetails" :: (ProviderDetailsType)
  , "AttributeMapping" :: Maybe (AttributeMappingType)
  , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType)
  }
derive instance newtypeCreateIdentityProviderRequest :: Newtype CreateIdentityProviderRequest _
derive instance repGenericCreateIdentityProviderRequest :: Generic CreateIdentityProviderRequest _
instance showCreateIdentityProviderRequest :: Show CreateIdentityProviderRequest where show = genericShow
instance decodeCreateIdentityProviderRequest :: Decode CreateIdentityProviderRequest where decode = genericDecode options
instance encodeCreateIdentityProviderRequest :: Encode CreateIdentityProviderRequest where encode = genericEncode options

-- | Constructs CreateIdentityProviderRequest from required parameters
newCreateIdentityProviderRequest :: ProviderDetailsType -> ProviderNameTypeV1 -> IdentityProviderTypeType -> UserPoolIdType -> CreateIdentityProviderRequest
newCreateIdentityProviderRequest _ProviderDetails _ProviderName _ProviderType _UserPoolId = CreateIdentityProviderRequest { "ProviderDetails": _ProviderDetails, "ProviderName": _ProviderName, "ProviderType": _ProviderType, "UserPoolId": _UserPoolId, "AttributeMapping": Nothing, "IdpIdentifiers": Nothing }

-- | Constructs CreateIdentityProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIdentityProviderRequest' :: ProviderDetailsType -> ProviderNameTypeV1 -> IdentityProviderTypeType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameTypeV1) , "ProviderType" :: (IdentityProviderTypeType) , "ProviderDetails" :: (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) } -> {"UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameTypeV1) , "ProviderType" :: (IdentityProviderTypeType) , "ProviderDetails" :: (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) } ) -> CreateIdentityProviderRequest
newCreateIdentityProviderRequest' _ProviderDetails _ProviderName _ProviderType _UserPoolId customize = (CreateIdentityProviderRequest <<< customize) { "ProviderDetails": _ProviderDetails, "ProviderName": _ProviderName, "ProviderType": _ProviderType, "UserPoolId": _UserPoolId, "AttributeMapping": Nothing, "IdpIdentifiers": Nothing }



newtype CreateIdentityProviderResponse = CreateIdentityProviderResponse 
  { "IdentityProvider" :: (IdentityProviderType)
  }
derive instance newtypeCreateIdentityProviderResponse :: Newtype CreateIdentityProviderResponse _
derive instance repGenericCreateIdentityProviderResponse :: Generic CreateIdentityProviderResponse _
instance showCreateIdentityProviderResponse :: Show CreateIdentityProviderResponse where show = genericShow
instance decodeCreateIdentityProviderResponse :: Decode CreateIdentityProviderResponse where decode = genericDecode options
instance encodeCreateIdentityProviderResponse :: Encode CreateIdentityProviderResponse where encode = genericEncode options

-- | Constructs CreateIdentityProviderResponse from required parameters
newCreateIdentityProviderResponse :: IdentityProviderType -> CreateIdentityProviderResponse
newCreateIdentityProviderResponse _IdentityProvider = CreateIdentityProviderResponse { "IdentityProvider": _IdentityProvider }

-- | Constructs CreateIdentityProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIdentityProviderResponse' :: IdentityProviderType -> ( { "IdentityProvider" :: (IdentityProviderType) } -> {"IdentityProvider" :: (IdentityProviderType) } ) -> CreateIdentityProviderResponse
newCreateIdentityProviderResponse' _IdentityProvider customize = (CreateIdentityProviderResponse <<< customize) { "IdentityProvider": _IdentityProvider }



newtype CreateResourceServerRequest = CreateResourceServerRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Identifier" :: (ResourceServerIdentifierType)
  , "Name" :: (ResourceServerNameType)
  , "Scopes" :: Maybe (ResourceServerScopeListType)
  }
derive instance newtypeCreateResourceServerRequest :: Newtype CreateResourceServerRequest _
derive instance repGenericCreateResourceServerRequest :: Generic CreateResourceServerRequest _
instance showCreateResourceServerRequest :: Show CreateResourceServerRequest where show = genericShow
instance decodeCreateResourceServerRequest :: Decode CreateResourceServerRequest where decode = genericDecode options
instance encodeCreateResourceServerRequest :: Encode CreateResourceServerRequest where encode = genericEncode options

-- | Constructs CreateResourceServerRequest from required parameters
newCreateResourceServerRequest :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> CreateResourceServerRequest
newCreateResourceServerRequest _Identifier _Name _UserPoolId = CreateResourceServerRequest { "Identifier": _Identifier, "Name": _Name, "UserPoolId": _UserPoolId, "Scopes": Nothing }

-- | Constructs CreateResourceServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateResourceServerRequest' :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) , "Name" :: (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) , "Name" :: (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } ) -> CreateResourceServerRequest
newCreateResourceServerRequest' _Identifier _Name _UserPoolId customize = (CreateResourceServerRequest <<< customize) { "Identifier": _Identifier, "Name": _Name, "UserPoolId": _UserPoolId, "Scopes": Nothing }



newtype CreateResourceServerResponse = CreateResourceServerResponse 
  { "ResourceServer" :: (ResourceServerType)
  }
derive instance newtypeCreateResourceServerResponse :: Newtype CreateResourceServerResponse _
derive instance repGenericCreateResourceServerResponse :: Generic CreateResourceServerResponse _
instance showCreateResourceServerResponse :: Show CreateResourceServerResponse where show = genericShow
instance decodeCreateResourceServerResponse :: Decode CreateResourceServerResponse where decode = genericDecode options
instance encodeCreateResourceServerResponse :: Encode CreateResourceServerResponse where encode = genericEncode options

-- | Constructs CreateResourceServerResponse from required parameters
newCreateResourceServerResponse :: ResourceServerType -> CreateResourceServerResponse
newCreateResourceServerResponse _ResourceServer = CreateResourceServerResponse { "ResourceServer": _ResourceServer }

-- | Constructs CreateResourceServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateResourceServerResponse' :: ResourceServerType -> ( { "ResourceServer" :: (ResourceServerType) } -> {"ResourceServer" :: (ResourceServerType) } ) -> CreateResourceServerResponse
newCreateResourceServerResponse' _ResourceServer customize = (CreateResourceServerResponse <<< customize) { "ResourceServer": _ResourceServer }



-- | <p>Represents the request to create the user import job.</p>
newtype CreateUserImportJobRequest = CreateUserImportJobRequest 
  { "JobName" :: (UserImportJobNameType)
  , "UserPoolId" :: (UserPoolIdType)
  , "CloudWatchLogsRoleArn" :: (ArnType)
  }
derive instance newtypeCreateUserImportJobRequest :: Newtype CreateUserImportJobRequest _
derive instance repGenericCreateUserImportJobRequest :: Generic CreateUserImportJobRequest _
instance showCreateUserImportJobRequest :: Show CreateUserImportJobRequest where show = genericShow
instance decodeCreateUserImportJobRequest :: Decode CreateUserImportJobRequest where decode = genericDecode options
instance encodeCreateUserImportJobRequest :: Encode CreateUserImportJobRequest where encode = genericEncode options

-- | Constructs CreateUserImportJobRequest from required parameters
newCreateUserImportJobRequest :: ArnType -> UserImportJobNameType -> UserPoolIdType -> CreateUserImportJobRequest
newCreateUserImportJobRequest _CloudWatchLogsRoleArn _JobName _UserPoolId = CreateUserImportJobRequest { "CloudWatchLogsRoleArn": _CloudWatchLogsRoleArn, "JobName": _JobName, "UserPoolId": _UserPoolId }

-- | Constructs CreateUserImportJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserImportJobRequest' :: ArnType -> UserImportJobNameType -> UserPoolIdType -> ( { "JobName" :: (UserImportJobNameType) , "UserPoolId" :: (UserPoolIdType) , "CloudWatchLogsRoleArn" :: (ArnType) } -> {"JobName" :: (UserImportJobNameType) , "UserPoolId" :: (UserPoolIdType) , "CloudWatchLogsRoleArn" :: (ArnType) } ) -> CreateUserImportJobRequest
newCreateUserImportJobRequest' _CloudWatchLogsRoleArn _JobName _UserPoolId customize = (CreateUserImportJobRequest <<< customize) { "CloudWatchLogsRoleArn": _CloudWatchLogsRoleArn, "JobName": _JobName, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server to the request to create the user import job.</p>
newtype CreateUserImportJobResponse = CreateUserImportJobResponse 
  { "UserImportJob" :: Maybe (UserImportJobType)
  }
derive instance newtypeCreateUserImportJobResponse :: Newtype CreateUserImportJobResponse _
derive instance repGenericCreateUserImportJobResponse :: Generic CreateUserImportJobResponse _
instance showCreateUserImportJobResponse :: Show CreateUserImportJobResponse where show = genericShow
instance decodeCreateUserImportJobResponse :: Decode CreateUserImportJobResponse where decode = genericDecode options
instance encodeCreateUserImportJobResponse :: Encode CreateUserImportJobResponse where encode = genericEncode options

-- | Constructs CreateUserImportJobResponse from required parameters
newCreateUserImportJobResponse :: CreateUserImportJobResponse
newCreateUserImportJobResponse  = CreateUserImportJobResponse { "UserImportJob": Nothing }

-- | Constructs CreateUserImportJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserImportJobResponse' :: ( { "UserImportJob" :: Maybe (UserImportJobType) } -> {"UserImportJob" :: Maybe (UserImportJobType) } ) -> CreateUserImportJobResponse
newCreateUserImportJobResponse'  customize = (CreateUserImportJobResponse <<< customize) { "UserImportJob": Nothing }



-- | <p>Represents the request to create a user pool client.</p>
newtype CreateUserPoolClientRequest = CreateUserPoolClientRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientName" :: (ClientNameType)
  , "GenerateSecret" :: Maybe (GenerateSecret)
  , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType)
  , "ReadAttributes" :: Maybe (ClientPermissionListType)
  , "WriteAttributes" :: Maybe (ClientPermissionListType)
  , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType)
  , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType)
  , "CallbackURLs" :: Maybe (CallbackURLsListType)
  , "LogoutURLs" :: Maybe (LogoutURLsListType)
  , "DefaultRedirectURI" :: Maybe (RedirectUrlType)
  , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType)
  , "AllowedOAuthScopes" :: Maybe (ScopeListType)
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType)
  , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType)
  }
derive instance newtypeCreateUserPoolClientRequest :: Newtype CreateUserPoolClientRequest _
derive instance repGenericCreateUserPoolClientRequest :: Generic CreateUserPoolClientRequest _
instance showCreateUserPoolClientRequest :: Show CreateUserPoolClientRequest where show = genericShow
instance decodeCreateUserPoolClientRequest :: Decode CreateUserPoolClientRequest where decode = genericDecode options
instance encodeCreateUserPoolClientRequest :: Encode CreateUserPoolClientRequest where encode = genericEncode options

-- | Constructs CreateUserPoolClientRequest from required parameters
newCreateUserPoolClientRequest :: ClientNameType -> UserPoolIdType -> CreateUserPoolClientRequest
newCreateUserPoolClientRequest _ClientName _UserPoolId = CreateUserPoolClientRequest { "ClientName": _ClientName, "UserPoolId": _UserPoolId, "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "GenerateSecret": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "WriteAttributes": Nothing }

-- | Constructs CreateUserPoolClientRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserPoolClientRequest' :: ClientNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientName" :: (ClientNameType) , "GenerateSecret" :: Maybe (GenerateSecret) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientName" :: (ClientNameType) , "GenerateSecret" :: Maybe (GenerateSecret) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } ) -> CreateUserPoolClientRequest
newCreateUserPoolClientRequest' _ClientName _UserPoolId customize = (CreateUserPoolClientRequest <<< customize) { "ClientName": _ClientName, "UserPoolId": _UserPoolId, "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "GenerateSecret": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "WriteAttributes": Nothing }



-- | <p>Represents the response from the server to create a user pool client.</p>
newtype CreateUserPoolClientResponse = CreateUserPoolClientResponse 
  { "UserPoolClient" :: Maybe (UserPoolClientType)
  }
derive instance newtypeCreateUserPoolClientResponse :: Newtype CreateUserPoolClientResponse _
derive instance repGenericCreateUserPoolClientResponse :: Generic CreateUserPoolClientResponse _
instance showCreateUserPoolClientResponse :: Show CreateUserPoolClientResponse where show = genericShow
instance decodeCreateUserPoolClientResponse :: Decode CreateUserPoolClientResponse where decode = genericDecode options
instance encodeCreateUserPoolClientResponse :: Encode CreateUserPoolClientResponse where encode = genericEncode options

-- | Constructs CreateUserPoolClientResponse from required parameters
newCreateUserPoolClientResponse :: CreateUserPoolClientResponse
newCreateUserPoolClientResponse  = CreateUserPoolClientResponse { "UserPoolClient": Nothing }

-- | Constructs CreateUserPoolClientResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserPoolClientResponse' :: ( { "UserPoolClient" :: Maybe (UserPoolClientType) } -> {"UserPoolClient" :: Maybe (UserPoolClientType) } ) -> CreateUserPoolClientResponse
newCreateUserPoolClientResponse'  customize = (CreateUserPoolClientResponse <<< customize) { "UserPoolClient": Nothing }



newtype CreateUserPoolDomainRequest = CreateUserPoolDomainRequest 
  { "Domain" :: (DomainType)
  , "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeCreateUserPoolDomainRequest :: Newtype CreateUserPoolDomainRequest _
derive instance repGenericCreateUserPoolDomainRequest :: Generic CreateUserPoolDomainRequest _
instance showCreateUserPoolDomainRequest :: Show CreateUserPoolDomainRequest where show = genericShow
instance decodeCreateUserPoolDomainRequest :: Decode CreateUserPoolDomainRequest where decode = genericDecode options
instance encodeCreateUserPoolDomainRequest :: Encode CreateUserPoolDomainRequest where encode = genericEncode options

-- | Constructs CreateUserPoolDomainRequest from required parameters
newCreateUserPoolDomainRequest :: DomainType -> UserPoolIdType -> CreateUserPoolDomainRequest
newCreateUserPoolDomainRequest _Domain _UserPoolId = CreateUserPoolDomainRequest { "Domain": _Domain, "UserPoolId": _UserPoolId }

-- | Constructs CreateUserPoolDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserPoolDomainRequest' :: DomainType -> UserPoolIdType -> ( { "Domain" :: (DomainType) , "UserPoolId" :: (UserPoolIdType) } -> {"Domain" :: (DomainType) , "UserPoolId" :: (UserPoolIdType) } ) -> CreateUserPoolDomainRequest
newCreateUserPoolDomainRequest' _Domain _UserPoolId customize = (CreateUserPoolDomainRequest <<< customize) { "Domain": _Domain, "UserPoolId": _UserPoolId }



newtype CreateUserPoolDomainResponse = CreateUserPoolDomainResponse Types.NoArguments
derive instance newtypeCreateUserPoolDomainResponse :: Newtype CreateUserPoolDomainResponse _
derive instance repGenericCreateUserPoolDomainResponse :: Generic CreateUserPoolDomainResponse _
instance showCreateUserPoolDomainResponse :: Show CreateUserPoolDomainResponse where show = genericShow
instance decodeCreateUserPoolDomainResponse :: Decode CreateUserPoolDomainResponse where decode = genericDecode options
instance encodeCreateUserPoolDomainResponse :: Encode CreateUserPoolDomainResponse where encode = genericEncode options



-- | <p>Represents the request to create a user pool.</p>
newtype CreateUserPoolRequest = CreateUserPoolRequest 
  { "PoolName" :: (UserPoolNameType)
  , "Policies" :: Maybe (UserPoolPolicyType)
  , "LambdaConfig" :: Maybe (LambdaConfigType)
  , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType)
  , "AliasAttributes" :: Maybe (AliasAttributesListType)
  , "UsernameAttributes" :: Maybe (UsernameAttributesListType)
  , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType)
  , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType)
  , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType)
  , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType)
  , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  , "DeviceConfiguration" :: Maybe (DeviceConfigurationType)
  , "EmailConfiguration" :: Maybe (EmailConfigurationType)
  , "SmsConfiguration" :: Maybe (SmsConfigurationType)
  , "UserPoolTags" :: Maybe (UserPoolTagsType)
  , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType)
  , "Schema" :: Maybe (SchemaAttributesListType)
  , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType)
  }
derive instance newtypeCreateUserPoolRequest :: Newtype CreateUserPoolRequest _
derive instance repGenericCreateUserPoolRequest :: Generic CreateUserPoolRequest _
instance showCreateUserPoolRequest :: Show CreateUserPoolRequest where show = genericShow
instance decodeCreateUserPoolRequest :: Decode CreateUserPoolRequest where decode = genericDecode options
instance encodeCreateUserPoolRequest :: Encode CreateUserPoolRequest where encode = genericEncode options

-- | Constructs CreateUserPoolRequest from required parameters
newCreateUserPoolRequest :: UserPoolNameType -> CreateUserPoolRequest
newCreateUserPoolRequest _PoolName = CreateUserPoolRequest { "PoolName": _PoolName, "AdminCreateUserConfig": Nothing, "AliasAttributes": Nothing, "AutoVerifiedAttributes": Nothing, "DeviceConfiguration": Nothing, "EmailConfiguration": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "LambdaConfig": Nothing, "MfaConfiguration": Nothing, "Policies": Nothing, "Schema": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsVerificationMessage": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "UsernameAttributes": Nothing, "VerificationMessageTemplate": Nothing }

-- | Constructs CreateUserPoolRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserPoolRequest' :: UserPoolNameType -> ( { "PoolName" :: (UserPoolNameType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "AliasAttributes" :: Maybe (AliasAttributesListType) , "UsernameAttributes" :: Maybe (UsernameAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "Schema" :: Maybe (SchemaAttributesListType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } -> {"PoolName" :: (UserPoolNameType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "AliasAttributes" :: Maybe (AliasAttributesListType) , "UsernameAttributes" :: Maybe (UsernameAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "Schema" :: Maybe (SchemaAttributesListType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } ) -> CreateUserPoolRequest
newCreateUserPoolRequest' _PoolName customize = (CreateUserPoolRequest <<< customize) { "PoolName": _PoolName, "AdminCreateUserConfig": Nothing, "AliasAttributes": Nothing, "AutoVerifiedAttributes": Nothing, "DeviceConfiguration": Nothing, "EmailConfiguration": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "LambdaConfig": Nothing, "MfaConfiguration": Nothing, "Policies": Nothing, "Schema": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsVerificationMessage": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "UsernameAttributes": Nothing, "VerificationMessageTemplate": Nothing }



-- | <p>Represents the response from the server for the request to create a user pool.</p>
newtype CreateUserPoolResponse = CreateUserPoolResponse 
  { "UserPool" :: Maybe (UserPoolType)
  }
derive instance newtypeCreateUserPoolResponse :: Newtype CreateUserPoolResponse _
derive instance repGenericCreateUserPoolResponse :: Generic CreateUserPoolResponse _
instance showCreateUserPoolResponse :: Show CreateUserPoolResponse where show = genericShow
instance decodeCreateUserPoolResponse :: Decode CreateUserPoolResponse where decode = genericDecode options
instance encodeCreateUserPoolResponse :: Encode CreateUserPoolResponse where encode = genericEncode options

-- | Constructs CreateUserPoolResponse from required parameters
newCreateUserPoolResponse :: CreateUserPoolResponse
newCreateUserPoolResponse  = CreateUserPoolResponse { "UserPool": Nothing }

-- | Constructs CreateUserPoolResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserPoolResponse' :: ( { "UserPool" :: Maybe (UserPoolType) } -> {"UserPool" :: Maybe (UserPoolType) } ) -> CreateUserPoolResponse
newCreateUserPoolResponse'  customize = (CreateUserPoolResponse <<< customize) { "UserPool": Nothing }



newtype CustomAttributeNameType = CustomAttributeNameType String
derive instance newtypeCustomAttributeNameType :: Newtype CustomAttributeNameType _
derive instance repGenericCustomAttributeNameType :: Generic CustomAttributeNameType _
instance showCustomAttributeNameType :: Show CustomAttributeNameType where show = genericShow
instance decodeCustomAttributeNameType :: Decode CustomAttributeNameType where decode = genericDecode options
instance encodeCustomAttributeNameType :: Encode CustomAttributeNameType where encode = genericEncode options



newtype CustomAttributesListType = CustomAttributesListType (Array SchemaAttributeType)
derive instance newtypeCustomAttributesListType :: Newtype CustomAttributesListType _
derive instance repGenericCustomAttributesListType :: Generic CustomAttributesListType _
instance showCustomAttributesListType :: Show CustomAttributesListType where show = genericShow
instance decodeCustomAttributesListType :: Decode CustomAttributesListType where decode = genericDecode options
instance encodeCustomAttributesListType :: Encode CustomAttributesListType where encode = genericEncode options



newtype DateType = DateType Types.Timestamp
derive instance newtypeDateType :: Newtype DateType _
derive instance repGenericDateType :: Generic DateType _
instance showDateType :: Show DateType where show = genericShow
instance decodeDateType :: Decode DateType where decode = genericDecode options
instance encodeDateType :: Encode DateType where encode = genericEncode options



newtype DefaultEmailOptionType = DefaultEmailOptionType String
derive instance newtypeDefaultEmailOptionType :: Newtype DefaultEmailOptionType _
derive instance repGenericDefaultEmailOptionType :: Generic DefaultEmailOptionType _
instance showDefaultEmailOptionType :: Show DefaultEmailOptionType where show = genericShow
instance decodeDefaultEmailOptionType :: Decode DefaultEmailOptionType where decode = genericDecode options
instance encodeDefaultEmailOptionType :: Encode DefaultEmailOptionType where encode = genericEncode options



newtype DeleteGroupRequest = DeleteGroupRequest 
  { "GroupName" :: (GroupNameType)
  , "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeDeleteGroupRequest :: Newtype DeleteGroupRequest _
derive instance repGenericDeleteGroupRequest :: Generic DeleteGroupRequest _
instance showDeleteGroupRequest :: Show DeleteGroupRequest where show = genericShow
instance decodeDeleteGroupRequest :: Decode DeleteGroupRequest where decode = genericDecode options
instance encodeDeleteGroupRequest :: Encode DeleteGroupRequest where encode = genericEncode options

-- | Constructs DeleteGroupRequest from required parameters
newDeleteGroupRequest :: GroupNameType -> UserPoolIdType -> DeleteGroupRequest
newDeleteGroupRequest _GroupName _UserPoolId = DeleteGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId }

-- | Constructs DeleteGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupRequest' :: GroupNameType -> UserPoolIdType -> ( { "GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) } -> {"GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) } ) -> DeleteGroupRequest
newDeleteGroupRequest' _GroupName _UserPoolId customize = (DeleteGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId }



newtype DeleteIdentityProviderRequest = DeleteIdentityProviderRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ProviderName" :: (ProviderNameType)
  }
derive instance newtypeDeleteIdentityProviderRequest :: Newtype DeleteIdentityProviderRequest _
derive instance repGenericDeleteIdentityProviderRequest :: Generic DeleteIdentityProviderRequest _
instance showDeleteIdentityProviderRequest :: Show DeleteIdentityProviderRequest where show = genericShow
instance decodeDeleteIdentityProviderRequest :: Decode DeleteIdentityProviderRequest where decode = genericDecode options
instance encodeDeleteIdentityProviderRequest :: Encode DeleteIdentityProviderRequest where encode = genericEncode options

-- | Constructs DeleteIdentityProviderRequest from required parameters
newDeleteIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> DeleteIdentityProviderRequest
newDeleteIdentityProviderRequest _ProviderName _UserPoolId = DeleteIdentityProviderRequest { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId }

-- | Constructs DeleteIdentityProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) } -> {"UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) } ) -> DeleteIdentityProviderRequest
newDeleteIdentityProviderRequest' _ProviderName _UserPoolId customize = (DeleteIdentityProviderRequest <<< customize) { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId }



newtype DeleteResourceServerRequest = DeleteResourceServerRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Identifier" :: (ResourceServerIdentifierType)
  }
derive instance newtypeDeleteResourceServerRequest :: Newtype DeleteResourceServerRequest _
derive instance repGenericDeleteResourceServerRequest :: Generic DeleteResourceServerRequest _
instance showDeleteResourceServerRequest :: Show DeleteResourceServerRequest where show = genericShow
instance decodeDeleteResourceServerRequest :: Decode DeleteResourceServerRequest where decode = genericDecode options
instance encodeDeleteResourceServerRequest :: Encode DeleteResourceServerRequest where encode = genericEncode options

-- | Constructs DeleteResourceServerRequest from required parameters
newDeleteResourceServerRequest :: ResourceServerIdentifierType -> UserPoolIdType -> DeleteResourceServerRequest
newDeleteResourceServerRequest _Identifier _UserPoolId = DeleteResourceServerRequest { "Identifier": _Identifier, "UserPoolId": _UserPoolId }

-- | Constructs DeleteResourceServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteResourceServerRequest' :: ResourceServerIdentifierType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) } -> {"UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) } ) -> DeleteResourceServerRequest
newDeleteResourceServerRequest' _Identifier _UserPoolId customize = (DeleteResourceServerRequest <<< customize) { "Identifier": _Identifier, "UserPoolId": _UserPoolId }



-- | <p>Represents the request to delete user attributes.</p>
newtype DeleteUserAttributesRequest = DeleteUserAttributesRequest 
  { "UserAttributeNames" :: (AttributeNameListType)
  , "AccessToken" :: (TokenModelType)
  }
derive instance newtypeDeleteUserAttributesRequest :: Newtype DeleteUserAttributesRequest _
derive instance repGenericDeleteUserAttributesRequest :: Generic DeleteUserAttributesRequest _
instance showDeleteUserAttributesRequest :: Show DeleteUserAttributesRequest where show = genericShow
instance decodeDeleteUserAttributesRequest :: Decode DeleteUserAttributesRequest where decode = genericDecode options
instance encodeDeleteUserAttributesRequest :: Encode DeleteUserAttributesRequest where encode = genericEncode options

-- | Constructs DeleteUserAttributesRequest from required parameters
newDeleteUserAttributesRequest :: TokenModelType -> AttributeNameListType -> DeleteUserAttributesRequest
newDeleteUserAttributesRequest _AccessToken _UserAttributeNames = DeleteUserAttributesRequest { "AccessToken": _AccessToken, "UserAttributeNames": _UserAttributeNames }

-- | Constructs DeleteUserAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserAttributesRequest' :: TokenModelType -> AttributeNameListType -> ( { "UserAttributeNames" :: (AttributeNameListType) , "AccessToken" :: (TokenModelType) } -> {"UserAttributeNames" :: (AttributeNameListType) , "AccessToken" :: (TokenModelType) } ) -> DeleteUserAttributesRequest
newDeleteUserAttributesRequest' _AccessToken _UserAttributeNames customize = (DeleteUserAttributesRequest <<< customize) { "AccessToken": _AccessToken, "UserAttributeNames": _UserAttributeNames }



-- | <p>Represents the response from the server to delete user attributes.</p>
newtype DeleteUserAttributesResponse = DeleteUserAttributesResponse Types.NoArguments
derive instance newtypeDeleteUserAttributesResponse :: Newtype DeleteUserAttributesResponse _
derive instance repGenericDeleteUserAttributesResponse :: Generic DeleteUserAttributesResponse _
instance showDeleteUserAttributesResponse :: Show DeleteUserAttributesResponse where show = genericShow
instance decodeDeleteUserAttributesResponse :: Decode DeleteUserAttributesResponse where decode = genericDecode options
instance encodeDeleteUserAttributesResponse :: Encode DeleteUserAttributesResponse where encode = genericEncode options



-- | <p>Represents the request to delete a user pool client.</p>
newtype DeleteUserPoolClientRequest = DeleteUserPoolClientRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: (ClientIdType)
  }
derive instance newtypeDeleteUserPoolClientRequest :: Newtype DeleteUserPoolClientRequest _
derive instance repGenericDeleteUserPoolClientRequest :: Generic DeleteUserPoolClientRequest _
instance showDeleteUserPoolClientRequest :: Show DeleteUserPoolClientRequest where show = genericShow
instance decodeDeleteUserPoolClientRequest :: Decode DeleteUserPoolClientRequest where decode = genericDecode options
instance encodeDeleteUserPoolClientRequest :: Encode DeleteUserPoolClientRequest where encode = genericEncode options

-- | Constructs DeleteUserPoolClientRequest from required parameters
newDeleteUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> DeleteUserPoolClientRequest
newDeleteUserPoolClientRequest _ClientId _UserPoolId = DeleteUserPoolClientRequest { "ClientId": _ClientId, "UserPoolId": _UserPoolId }

-- | Constructs DeleteUserPoolClientRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) } ) -> DeleteUserPoolClientRequest
newDeleteUserPoolClientRequest' _ClientId _UserPoolId customize = (DeleteUserPoolClientRequest <<< customize) { "ClientId": _ClientId, "UserPoolId": _UserPoolId }



newtype DeleteUserPoolDomainRequest = DeleteUserPoolDomainRequest 
  { "Domain" :: (DomainType)
  , "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeDeleteUserPoolDomainRequest :: Newtype DeleteUserPoolDomainRequest _
derive instance repGenericDeleteUserPoolDomainRequest :: Generic DeleteUserPoolDomainRequest _
instance showDeleteUserPoolDomainRequest :: Show DeleteUserPoolDomainRequest where show = genericShow
instance decodeDeleteUserPoolDomainRequest :: Decode DeleteUserPoolDomainRequest where decode = genericDecode options
instance encodeDeleteUserPoolDomainRequest :: Encode DeleteUserPoolDomainRequest where encode = genericEncode options

-- | Constructs DeleteUserPoolDomainRequest from required parameters
newDeleteUserPoolDomainRequest :: DomainType -> UserPoolIdType -> DeleteUserPoolDomainRequest
newDeleteUserPoolDomainRequest _Domain _UserPoolId = DeleteUserPoolDomainRequest { "Domain": _Domain, "UserPoolId": _UserPoolId }

-- | Constructs DeleteUserPoolDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserPoolDomainRequest' :: DomainType -> UserPoolIdType -> ( { "Domain" :: (DomainType) , "UserPoolId" :: (UserPoolIdType) } -> {"Domain" :: (DomainType) , "UserPoolId" :: (UserPoolIdType) } ) -> DeleteUserPoolDomainRequest
newDeleteUserPoolDomainRequest' _Domain _UserPoolId customize = (DeleteUserPoolDomainRequest <<< customize) { "Domain": _Domain, "UserPoolId": _UserPoolId }



newtype DeleteUserPoolDomainResponse = DeleteUserPoolDomainResponse Types.NoArguments
derive instance newtypeDeleteUserPoolDomainResponse :: Newtype DeleteUserPoolDomainResponse _
derive instance repGenericDeleteUserPoolDomainResponse :: Generic DeleteUserPoolDomainResponse _
instance showDeleteUserPoolDomainResponse :: Show DeleteUserPoolDomainResponse where show = genericShow
instance decodeDeleteUserPoolDomainResponse :: Decode DeleteUserPoolDomainResponse where decode = genericDecode options
instance encodeDeleteUserPoolDomainResponse :: Encode DeleteUserPoolDomainResponse where encode = genericEncode options



-- | <p>Represents the request to delete a user pool.</p>
newtype DeleteUserPoolRequest = DeleteUserPoolRequest 
  { "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeDeleteUserPoolRequest :: Newtype DeleteUserPoolRequest _
derive instance repGenericDeleteUserPoolRequest :: Generic DeleteUserPoolRequest _
instance showDeleteUserPoolRequest :: Show DeleteUserPoolRequest where show = genericShow
instance decodeDeleteUserPoolRequest :: Decode DeleteUserPoolRequest where decode = genericDecode options
instance encodeDeleteUserPoolRequest :: Encode DeleteUserPoolRequest where encode = genericEncode options

-- | Constructs DeleteUserPoolRequest from required parameters
newDeleteUserPoolRequest :: UserPoolIdType -> DeleteUserPoolRequest
newDeleteUserPoolRequest _UserPoolId = DeleteUserPoolRequest { "UserPoolId": _UserPoolId }

-- | Constructs DeleteUserPoolRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserPoolRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) } -> {"UserPoolId" :: (UserPoolIdType) } ) -> DeleteUserPoolRequest
newDeleteUserPoolRequest' _UserPoolId customize = (DeleteUserPoolRequest <<< customize) { "UserPoolId": _UserPoolId }



-- | <p>Represents the request to delete a user.</p>
newtype DeleteUserRequest = DeleteUserRequest 
  { "AccessToken" :: (TokenModelType)
  }
derive instance newtypeDeleteUserRequest :: Newtype DeleteUserRequest _
derive instance repGenericDeleteUserRequest :: Generic DeleteUserRequest _
instance showDeleteUserRequest :: Show DeleteUserRequest where show = genericShow
instance decodeDeleteUserRequest :: Decode DeleteUserRequest where decode = genericDecode options
instance encodeDeleteUserRequest :: Encode DeleteUserRequest where encode = genericEncode options

-- | Constructs DeleteUserRequest from required parameters
newDeleteUserRequest :: TokenModelType -> DeleteUserRequest
newDeleteUserRequest _AccessToken = DeleteUserRequest { "AccessToken": _AccessToken }

-- | Constructs DeleteUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserRequest' :: TokenModelType -> ( { "AccessToken" :: (TokenModelType) } -> {"AccessToken" :: (TokenModelType) } ) -> DeleteUserRequest
newDeleteUserRequest' _AccessToken customize = (DeleteUserRequest <<< customize) { "AccessToken": _AccessToken }



newtype DeliveryMediumListType = DeliveryMediumListType (Array DeliveryMediumType)
derive instance newtypeDeliveryMediumListType :: Newtype DeliveryMediumListType _
derive instance repGenericDeliveryMediumListType :: Generic DeliveryMediumListType _
instance showDeliveryMediumListType :: Show DeliveryMediumListType where show = genericShow
instance decodeDeliveryMediumListType :: Decode DeliveryMediumListType where decode = genericDecode options
instance encodeDeliveryMediumListType :: Encode DeliveryMediumListType where encode = genericEncode options



newtype DeliveryMediumType = DeliveryMediumType String
derive instance newtypeDeliveryMediumType :: Newtype DeliveryMediumType _
derive instance repGenericDeliveryMediumType :: Generic DeliveryMediumType _
instance showDeliveryMediumType :: Show DeliveryMediumType where show = genericShow
instance decodeDeliveryMediumType :: Decode DeliveryMediumType where decode = genericDecode options
instance encodeDeliveryMediumType :: Encode DeliveryMediumType where encode = genericEncode options



newtype DescribeIdentityProviderRequest = DescribeIdentityProviderRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ProviderName" :: (ProviderNameType)
  }
derive instance newtypeDescribeIdentityProviderRequest :: Newtype DescribeIdentityProviderRequest _
derive instance repGenericDescribeIdentityProviderRequest :: Generic DescribeIdentityProviderRequest _
instance showDescribeIdentityProviderRequest :: Show DescribeIdentityProviderRequest where show = genericShow
instance decodeDescribeIdentityProviderRequest :: Decode DescribeIdentityProviderRequest where decode = genericDecode options
instance encodeDescribeIdentityProviderRequest :: Encode DescribeIdentityProviderRequest where encode = genericEncode options

-- | Constructs DescribeIdentityProviderRequest from required parameters
newDescribeIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> DescribeIdentityProviderRequest
newDescribeIdentityProviderRequest _ProviderName _UserPoolId = DescribeIdentityProviderRequest { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId }

-- | Constructs DescribeIdentityProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) } -> {"UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) } ) -> DescribeIdentityProviderRequest
newDescribeIdentityProviderRequest' _ProviderName _UserPoolId customize = (DescribeIdentityProviderRequest <<< customize) { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId }



newtype DescribeIdentityProviderResponse = DescribeIdentityProviderResponse 
  { "IdentityProvider" :: (IdentityProviderType)
  }
derive instance newtypeDescribeIdentityProviderResponse :: Newtype DescribeIdentityProviderResponse _
derive instance repGenericDescribeIdentityProviderResponse :: Generic DescribeIdentityProviderResponse _
instance showDescribeIdentityProviderResponse :: Show DescribeIdentityProviderResponse where show = genericShow
instance decodeDescribeIdentityProviderResponse :: Decode DescribeIdentityProviderResponse where decode = genericDecode options
instance encodeDescribeIdentityProviderResponse :: Encode DescribeIdentityProviderResponse where encode = genericEncode options

-- | Constructs DescribeIdentityProviderResponse from required parameters
newDescribeIdentityProviderResponse :: IdentityProviderType -> DescribeIdentityProviderResponse
newDescribeIdentityProviderResponse _IdentityProvider = DescribeIdentityProviderResponse { "IdentityProvider": _IdentityProvider }

-- | Constructs DescribeIdentityProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityProviderResponse' :: IdentityProviderType -> ( { "IdentityProvider" :: (IdentityProviderType) } -> {"IdentityProvider" :: (IdentityProviderType) } ) -> DescribeIdentityProviderResponse
newDescribeIdentityProviderResponse' _IdentityProvider customize = (DescribeIdentityProviderResponse <<< customize) { "IdentityProvider": _IdentityProvider }



newtype DescribeResourceServerRequest = DescribeResourceServerRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Identifier" :: (ResourceServerIdentifierType)
  }
derive instance newtypeDescribeResourceServerRequest :: Newtype DescribeResourceServerRequest _
derive instance repGenericDescribeResourceServerRequest :: Generic DescribeResourceServerRequest _
instance showDescribeResourceServerRequest :: Show DescribeResourceServerRequest where show = genericShow
instance decodeDescribeResourceServerRequest :: Decode DescribeResourceServerRequest where decode = genericDecode options
instance encodeDescribeResourceServerRequest :: Encode DescribeResourceServerRequest where encode = genericEncode options

-- | Constructs DescribeResourceServerRequest from required parameters
newDescribeResourceServerRequest :: ResourceServerIdentifierType -> UserPoolIdType -> DescribeResourceServerRequest
newDescribeResourceServerRequest _Identifier _UserPoolId = DescribeResourceServerRequest { "Identifier": _Identifier, "UserPoolId": _UserPoolId }

-- | Constructs DescribeResourceServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourceServerRequest' :: ResourceServerIdentifierType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) } -> {"UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) } ) -> DescribeResourceServerRequest
newDescribeResourceServerRequest' _Identifier _UserPoolId customize = (DescribeResourceServerRequest <<< customize) { "Identifier": _Identifier, "UserPoolId": _UserPoolId }



newtype DescribeResourceServerResponse = DescribeResourceServerResponse 
  { "ResourceServer" :: (ResourceServerType)
  }
derive instance newtypeDescribeResourceServerResponse :: Newtype DescribeResourceServerResponse _
derive instance repGenericDescribeResourceServerResponse :: Generic DescribeResourceServerResponse _
instance showDescribeResourceServerResponse :: Show DescribeResourceServerResponse where show = genericShow
instance decodeDescribeResourceServerResponse :: Decode DescribeResourceServerResponse where decode = genericDecode options
instance encodeDescribeResourceServerResponse :: Encode DescribeResourceServerResponse where encode = genericEncode options

-- | Constructs DescribeResourceServerResponse from required parameters
newDescribeResourceServerResponse :: ResourceServerType -> DescribeResourceServerResponse
newDescribeResourceServerResponse _ResourceServer = DescribeResourceServerResponse { "ResourceServer": _ResourceServer }

-- | Constructs DescribeResourceServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourceServerResponse' :: ResourceServerType -> ( { "ResourceServer" :: (ResourceServerType) } -> {"ResourceServer" :: (ResourceServerType) } ) -> DescribeResourceServerResponse
newDescribeResourceServerResponse' _ResourceServer customize = (DescribeResourceServerResponse <<< customize) { "ResourceServer": _ResourceServer }



newtype DescribeRiskConfigurationRequest = DescribeRiskConfigurationRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  }
derive instance newtypeDescribeRiskConfigurationRequest :: Newtype DescribeRiskConfigurationRequest _
derive instance repGenericDescribeRiskConfigurationRequest :: Generic DescribeRiskConfigurationRequest _
instance showDescribeRiskConfigurationRequest :: Show DescribeRiskConfigurationRequest where show = genericShow
instance decodeDescribeRiskConfigurationRequest :: Decode DescribeRiskConfigurationRequest where decode = genericDecode options
instance encodeDescribeRiskConfigurationRequest :: Encode DescribeRiskConfigurationRequest where encode = genericEncode options

-- | Constructs DescribeRiskConfigurationRequest from required parameters
newDescribeRiskConfigurationRequest :: UserPoolIdType -> DescribeRiskConfigurationRequest
newDescribeRiskConfigurationRequest _UserPoolId = DescribeRiskConfigurationRequest { "UserPoolId": _UserPoolId, "ClientId": Nothing }

-- | Constructs DescribeRiskConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRiskConfigurationRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) } ) -> DescribeRiskConfigurationRequest
newDescribeRiskConfigurationRequest' _UserPoolId customize = (DescribeRiskConfigurationRequest <<< customize) { "UserPoolId": _UserPoolId, "ClientId": Nothing }



newtype DescribeRiskConfigurationResponse = DescribeRiskConfigurationResponse 
  { "RiskConfiguration" :: (RiskConfigurationType)
  }
derive instance newtypeDescribeRiskConfigurationResponse :: Newtype DescribeRiskConfigurationResponse _
derive instance repGenericDescribeRiskConfigurationResponse :: Generic DescribeRiskConfigurationResponse _
instance showDescribeRiskConfigurationResponse :: Show DescribeRiskConfigurationResponse where show = genericShow
instance decodeDescribeRiskConfigurationResponse :: Decode DescribeRiskConfigurationResponse where decode = genericDecode options
instance encodeDescribeRiskConfigurationResponse :: Encode DescribeRiskConfigurationResponse where encode = genericEncode options

-- | Constructs DescribeRiskConfigurationResponse from required parameters
newDescribeRiskConfigurationResponse :: RiskConfigurationType -> DescribeRiskConfigurationResponse
newDescribeRiskConfigurationResponse _RiskConfiguration = DescribeRiskConfigurationResponse { "RiskConfiguration": _RiskConfiguration }

-- | Constructs DescribeRiskConfigurationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRiskConfigurationResponse' :: RiskConfigurationType -> ( { "RiskConfiguration" :: (RiskConfigurationType) } -> {"RiskConfiguration" :: (RiskConfigurationType) } ) -> DescribeRiskConfigurationResponse
newDescribeRiskConfigurationResponse' _RiskConfiguration customize = (DescribeRiskConfigurationResponse <<< customize) { "RiskConfiguration": _RiskConfiguration }



-- | <p>Represents the request to describe the user import job.</p>
newtype DescribeUserImportJobRequest = DescribeUserImportJobRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "JobId" :: (UserImportJobIdType)
  }
derive instance newtypeDescribeUserImportJobRequest :: Newtype DescribeUserImportJobRequest _
derive instance repGenericDescribeUserImportJobRequest :: Generic DescribeUserImportJobRequest _
instance showDescribeUserImportJobRequest :: Show DescribeUserImportJobRequest where show = genericShow
instance decodeDescribeUserImportJobRequest :: Decode DescribeUserImportJobRequest where decode = genericDecode options
instance encodeDescribeUserImportJobRequest :: Encode DescribeUserImportJobRequest where encode = genericEncode options

-- | Constructs DescribeUserImportJobRequest from required parameters
newDescribeUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> DescribeUserImportJobRequest
newDescribeUserImportJobRequest _JobId _UserPoolId = DescribeUserImportJobRequest { "JobId": _JobId, "UserPoolId": _UserPoolId }

-- | Constructs DescribeUserImportJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } ) -> DescribeUserImportJobRequest
newDescribeUserImportJobRequest' _JobId _UserPoolId customize = (DescribeUserImportJobRequest <<< customize) { "JobId": _JobId, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server to the request to describe the user import job.</p>
newtype DescribeUserImportJobResponse = DescribeUserImportJobResponse 
  { "UserImportJob" :: Maybe (UserImportJobType)
  }
derive instance newtypeDescribeUserImportJobResponse :: Newtype DescribeUserImportJobResponse _
derive instance repGenericDescribeUserImportJobResponse :: Generic DescribeUserImportJobResponse _
instance showDescribeUserImportJobResponse :: Show DescribeUserImportJobResponse where show = genericShow
instance decodeDescribeUserImportJobResponse :: Decode DescribeUserImportJobResponse where decode = genericDecode options
instance encodeDescribeUserImportJobResponse :: Encode DescribeUserImportJobResponse where encode = genericEncode options

-- | Constructs DescribeUserImportJobResponse from required parameters
newDescribeUserImportJobResponse :: DescribeUserImportJobResponse
newDescribeUserImportJobResponse  = DescribeUserImportJobResponse { "UserImportJob": Nothing }

-- | Constructs DescribeUserImportJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserImportJobResponse' :: ( { "UserImportJob" :: Maybe (UserImportJobType) } -> {"UserImportJob" :: Maybe (UserImportJobType) } ) -> DescribeUserImportJobResponse
newDescribeUserImportJobResponse'  customize = (DescribeUserImportJobResponse <<< customize) { "UserImportJob": Nothing }



-- | <p>Represents the request to describe a user pool client.</p>
newtype DescribeUserPoolClientRequest = DescribeUserPoolClientRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: (ClientIdType)
  }
derive instance newtypeDescribeUserPoolClientRequest :: Newtype DescribeUserPoolClientRequest _
derive instance repGenericDescribeUserPoolClientRequest :: Generic DescribeUserPoolClientRequest _
instance showDescribeUserPoolClientRequest :: Show DescribeUserPoolClientRequest where show = genericShow
instance decodeDescribeUserPoolClientRequest :: Decode DescribeUserPoolClientRequest where decode = genericDecode options
instance encodeDescribeUserPoolClientRequest :: Encode DescribeUserPoolClientRequest where encode = genericEncode options

-- | Constructs DescribeUserPoolClientRequest from required parameters
newDescribeUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> DescribeUserPoolClientRequest
newDescribeUserPoolClientRequest _ClientId _UserPoolId = DescribeUserPoolClientRequest { "ClientId": _ClientId, "UserPoolId": _UserPoolId }

-- | Constructs DescribeUserPoolClientRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) } ) -> DescribeUserPoolClientRequest
newDescribeUserPoolClientRequest' _ClientId _UserPoolId customize = (DescribeUserPoolClientRequest <<< customize) { "ClientId": _ClientId, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server from a request to describe the user pool client.</p>
newtype DescribeUserPoolClientResponse = DescribeUserPoolClientResponse 
  { "UserPoolClient" :: Maybe (UserPoolClientType)
  }
derive instance newtypeDescribeUserPoolClientResponse :: Newtype DescribeUserPoolClientResponse _
derive instance repGenericDescribeUserPoolClientResponse :: Generic DescribeUserPoolClientResponse _
instance showDescribeUserPoolClientResponse :: Show DescribeUserPoolClientResponse where show = genericShow
instance decodeDescribeUserPoolClientResponse :: Decode DescribeUserPoolClientResponse where decode = genericDecode options
instance encodeDescribeUserPoolClientResponse :: Encode DescribeUserPoolClientResponse where encode = genericEncode options

-- | Constructs DescribeUserPoolClientResponse from required parameters
newDescribeUserPoolClientResponse :: DescribeUserPoolClientResponse
newDescribeUserPoolClientResponse  = DescribeUserPoolClientResponse { "UserPoolClient": Nothing }

-- | Constructs DescribeUserPoolClientResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolClientResponse' :: ( { "UserPoolClient" :: Maybe (UserPoolClientType) } -> {"UserPoolClient" :: Maybe (UserPoolClientType) } ) -> DescribeUserPoolClientResponse
newDescribeUserPoolClientResponse'  customize = (DescribeUserPoolClientResponse <<< customize) { "UserPoolClient": Nothing }



newtype DescribeUserPoolDomainRequest = DescribeUserPoolDomainRequest 
  { "Domain" :: (DomainType)
  }
derive instance newtypeDescribeUserPoolDomainRequest :: Newtype DescribeUserPoolDomainRequest _
derive instance repGenericDescribeUserPoolDomainRequest :: Generic DescribeUserPoolDomainRequest _
instance showDescribeUserPoolDomainRequest :: Show DescribeUserPoolDomainRequest where show = genericShow
instance decodeDescribeUserPoolDomainRequest :: Decode DescribeUserPoolDomainRequest where decode = genericDecode options
instance encodeDescribeUserPoolDomainRequest :: Encode DescribeUserPoolDomainRequest where encode = genericEncode options

-- | Constructs DescribeUserPoolDomainRequest from required parameters
newDescribeUserPoolDomainRequest :: DomainType -> DescribeUserPoolDomainRequest
newDescribeUserPoolDomainRequest _Domain = DescribeUserPoolDomainRequest { "Domain": _Domain }

-- | Constructs DescribeUserPoolDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolDomainRequest' :: DomainType -> ( { "Domain" :: (DomainType) } -> {"Domain" :: (DomainType) } ) -> DescribeUserPoolDomainRequest
newDescribeUserPoolDomainRequest' _Domain customize = (DescribeUserPoolDomainRequest <<< customize) { "Domain": _Domain }



newtype DescribeUserPoolDomainResponse = DescribeUserPoolDomainResponse 
  { "DomainDescription" :: Maybe (DomainDescriptionType)
  }
derive instance newtypeDescribeUserPoolDomainResponse :: Newtype DescribeUserPoolDomainResponse _
derive instance repGenericDescribeUserPoolDomainResponse :: Generic DescribeUserPoolDomainResponse _
instance showDescribeUserPoolDomainResponse :: Show DescribeUserPoolDomainResponse where show = genericShow
instance decodeDescribeUserPoolDomainResponse :: Decode DescribeUserPoolDomainResponse where decode = genericDecode options
instance encodeDescribeUserPoolDomainResponse :: Encode DescribeUserPoolDomainResponse where encode = genericEncode options

-- | Constructs DescribeUserPoolDomainResponse from required parameters
newDescribeUserPoolDomainResponse :: DescribeUserPoolDomainResponse
newDescribeUserPoolDomainResponse  = DescribeUserPoolDomainResponse { "DomainDescription": Nothing }

-- | Constructs DescribeUserPoolDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolDomainResponse' :: ( { "DomainDescription" :: Maybe (DomainDescriptionType) } -> {"DomainDescription" :: Maybe (DomainDescriptionType) } ) -> DescribeUserPoolDomainResponse
newDescribeUserPoolDomainResponse'  customize = (DescribeUserPoolDomainResponse <<< customize) { "DomainDescription": Nothing }



-- | <p>Represents the request to describe the user pool.</p>
newtype DescribeUserPoolRequest = DescribeUserPoolRequest 
  { "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeDescribeUserPoolRequest :: Newtype DescribeUserPoolRequest _
derive instance repGenericDescribeUserPoolRequest :: Generic DescribeUserPoolRequest _
instance showDescribeUserPoolRequest :: Show DescribeUserPoolRequest where show = genericShow
instance decodeDescribeUserPoolRequest :: Decode DescribeUserPoolRequest where decode = genericDecode options
instance encodeDescribeUserPoolRequest :: Encode DescribeUserPoolRequest where encode = genericEncode options

-- | Constructs DescribeUserPoolRequest from required parameters
newDescribeUserPoolRequest :: UserPoolIdType -> DescribeUserPoolRequest
newDescribeUserPoolRequest _UserPoolId = DescribeUserPoolRequest { "UserPoolId": _UserPoolId }

-- | Constructs DescribeUserPoolRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) } -> {"UserPoolId" :: (UserPoolIdType) } ) -> DescribeUserPoolRequest
newDescribeUserPoolRequest' _UserPoolId customize = (DescribeUserPoolRequest <<< customize) { "UserPoolId": _UserPoolId }



-- | <p>Represents the response to describe the user pool.</p>
newtype DescribeUserPoolResponse = DescribeUserPoolResponse 
  { "UserPool" :: Maybe (UserPoolType)
  }
derive instance newtypeDescribeUserPoolResponse :: Newtype DescribeUserPoolResponse _
derive instance repGenericDescribeUserPoolResponse :: Generic DescribeUserPoolResponse _
instance showDescribeUserPoolResponse :: Show DescribeUserPoolResponse where show = genericShow
instance decodeDescribeUserPoolResponse :: Decode DescribeUserPoolResponse where decode = genericDecode options
instance encodeDescribeUserPoolResponse :: Encode DescribeUserPoolResponse where encode = genericEncode options

-- | Constructs DescribeUserPoolResponse from required parameters
newDescribeUserPoolResponse :: DescribeUserPoolResponse
newDescribeUserPoolResponse  = DescribeUserPoolResponse { "UserPool": Nothing }

-- | Constructs DescribeUserPoolResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserPoolResponse' :: ( { "UserPool" :: Maybe (UserPoolType) } -> {"UserPool" :: Maybe (UserPoolType) } ) -> DescribeUserPoolResponse
newDescribeUserPoolResponse'  customize = (DescribeUserPoolResponse <<< customize) { "UserPool": Nothing }



newtype DescriptionType = DescriptionType String
derive instance newtypeDescriptionType :: Newtype DescriptionType _
derive instance repGenericDescriptionType :: Generic DescriptionType _
instance showDescriptionType :: Show DescriptionType where show = genericShow
instance decodeDescriptionType :: Decode DescriptionType where decode = genericDecode options
instance encodeDescriptionType :: Encode DescriptionType where encode = genericEncode options



-- | <p>The configuration for the user pool's device tracking.</p>
newtype DeviceConfigurationType = DeviceConfigurationType 
  { "ChallengeRequiredOnNewDevice" :: Maybe (BooleanType)
  , "DeviceOnlyRememberedOnUserPrompt" :: Maybe (BooleanType)
  }
derive instance newtypeDeviceConfigurationType :: Newtype DeviceConfigurationType _
derive instance repGenericDeviceConfigurationType :: Generic DeviceConfigurationType _
instance showDeviceConfigurationType :: Show DeviceConfigurationType where show = genericShow
instance decodeDeviceConfigurationType :: Decode DeviceConfigurationType where decode = genericDecode options
instance encodeDeviceConfigurationType :: Encode DeviceConfigurationType where encode = genericEncode options

-- | Constructs DeviceConfigurationType from required parameters
newDeviceConfigurationType :: DeviceConfigurationType
newDeviceConfigurationType  = DeviceConfigurationType { "ChallengeRequiredOnNewDevice": Nothing, "DeviceOnlyRememberedOnUserPrompt": Nothing }

-- | Constructs DeviceConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeviceConfigurationType' :: ( { "ChallengeRequiredOnNewDevice" :: Maybe (BooleanType) , "DeviceOnlyRememberedOnUserPrompt" :: Maybe (BooleanType) } -> {"ChallengeRequiredOnNewDevice" :: Maybe (BooleanType) , "DeviceOnlyRememberedOnUserPrompt" :: Maybe (BooleanType) } ) -> DeviceConfigurationType
newDeviceConfigurationType'  customize = (DeviceConfigurationType <<< customize) { "ChallengeRequiredOnNewDevice": Nothing, "DeviceOnlyRememberedOnUserPrompt": Nothing }



newtype DeviceKeyType = DeviceKeyType String
derive instance newtypeDeviceKeyType :: Newtype DeviceKeyType _
derive instance repGenericDeviceKeyType :: Generic DeviceKeyType _
instance showDeviceKeyType :: Show DeviceKeyType where show = genericShow
instance decodeDeviceKeyType :: Decode DeviceKeyType where decode = genericDecode options
instance encodeDeviceKeyType :: Encode DeviceKeyType where encode = genericEncode options



newtype DeviceListType = DeviceListType (Array DeviceType)
derive instance newtypeDeviceListType :: Newtype DeviceListType _
derive instance repGenericDeviceListType :: Generic DeviceListType _
instance showDeviceListType :: Show DeviceListType where show = genericShow
instance decodeDeviceListType :: Decode DeviceListType where decode = genericDecode options
instance encodeDeviceListType :: Encode DeviceListType where encode = genericEncode options



newtype DeviceNameType = DeviceNameType String
derive instance newtypeDeviceNameType :: Newtype DeviceNameType _
derive instance repGenericDeviceNameType :: Generic DeviceNameType _
instance showDeviceNameType :: Show DeviceNameType where show = genericShow
instance decodeDeviceNameType :: Decode DeviceNameType where decode = genericDecode options
instance encodeDeviceNameType :: Encode DeviceNameType where encode = genericEncode options



newtype DeviceRememberedStatusType = DeviceRememberedStatusType String
derive instance newtypeDeviceRememberedStatusType :: Newtype DeviceRememberedStatusType _
derive instance repGenericDeviceRememberedStatusType :: Generic DeviceRememberedStatusType _
instance showDeviceRememberedStatusType :: Show DeviceRememberedStatusType where show = genericShow
instance decodeDeviceRememberedStatusType :: Decode DeviceRememberedStatusType where decode = genericDecode options
instance encodeDeviceRememberedStatusType :: Encode DeviceRememberedStatusType where encode = genericEncode options



-- | <p>The device verifier against which it will be authenticated.</p>
newtype DeviceSecretVerifierConfigType = DeviceSecretVerifierConfigType 
  { "PasswordVerifier" :: Maybe (StringType)
  , "Salt" :: Maybe (StringType)
  }
derive instance newtypeDeviceSecretVerifierConfigType :: Newtype DeviceSecretVerifierConfigType _
derive instance repGenericDeviceSecretVerifierConfigType :: Generic DeviceSecretVerifierConfigType _
instance showDeviceSecretVerifierConfigType :: Show DeviceSecretVerifierConfigType where show = genericShow
instance decodeDeviceSecretVerifierConfigType :: Decode DeviceSecretVerifierConfigType where decode = genericDecode options
instance encodeDeviceSecretVerifierConfigType :: Encode DeviceSecretVerifierConfigType where encode = genericEncode options

-- | Constructs DeviceSecretVerifierConfigType from required parameters
newDeviceSecretVerifierConfigType :: DeviceSecretVerifierConfigType
newDeviceSecretVerifierConfigType  = DeviceSecretVerifierConfigType { "PasswordVerifier": Nothing, "Salt": Nothing }

-- | Constructs DeviceSecretVerifierConfigType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeviceSecretVerifierConfigType' :: ( { "PasswordVerifier" :: Maybe (StringType) , "Salt" :: Maybe (StringType) } -> {"PasswordVerifier" :: Maybe (StringType) , "Salt" :: Maybe (StringType) } ) -> DeviceSecretVerifierConfigType
newDeviceSecretVerifierConfigType'  customize = (DeviceSecretVerifierConfigType <<< customize) { "PasswordVerifier": Nothing, "Salt": Nothing }



-- | <p>The device type.</p>
newtype DeviceType = DeviceType 
  { "DeviceKey" :: Maybe (DeviceKeyType)
  , "DeviceAttributes" :: Maybe (AttributeListType)
  , "DeviceCreateDate" :: Maybe (DateType)
  , "DeviceLastModifiedDate" :: Maybe (DateType)
  , "DeviceLastAuthenticatedDate" :: Maybe (DateType)
  }
derive instance newtypeDeviceType :: Newtype DeviceType _
derive instance repGenericDeviceType :: Generic DeviceType _
instance showDeviceType :: Show DeviceType where show = genericShow
instance decodeDeviceType :: Decode DeviceType where decode = genericDecode options
instance encodeDeviceType :: Encode DeviceType where encode = genericEncode options

-- | Constructs DeviceType from required parameters
newDeviceType :: DeviceType
newDeviceType  = DeviceType { "DeviceAttributes": Nothing, "DeviceCreateDate": Nothing, "DeviceKey": Nothing, "DeviceLastAuthenticatedDate": Nothing, "DeviceLastModifiedDate": Nothing }

-- | Constructs DeviceType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeviceType' :: ( { "DeviceKey" :: Maybe (DeviceKeyType) , "DeviceAttributes" :: Maybe (AttributeListType) , "DeviceCreateDate" :: Maybe (DateType) , "DeviceLastModifiedDate" :: Maybe (DateType) , "DeviceLastAuthenticatedDate" :: Maybe (DateType) } -> {"DeviceKey" :: Maybe (DeviceKeyType) , "DeviceAttributes" :: Maybe (AttributeListType) , "DeviceCreateDate" :: Maybe (DateType) , "DeviceLastModifiedDate" :: Maybe (DateType) , "DeviceLastAuthenticatedDate" :: Maybe (DateType) } ) -> DeviceType
newDeviceType'  customize = (DeviceType <<< customize) { "DeviceAttributes": Nothing, "DeviceCreateDate": Nothing, "DeviceKey": Nothing, "DeviceLastAuthenticatedDate": Nothing, "DeviceLastModifiedDate": Nothing }



-- | <p>A container for information about a domain.</p>
newtype DomainDescriptionType = DomainDescriptionType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "AWSAccountId" :: Maybe (AWSAccountIdType)
  , "Domain" :: Maybe (DomainType)
  , "S3Bucket" :: Maybe (S3BucketType)
  , "CloudFrontDistribution" :: Maybe (ArnType)
  , "Version" :: Maybe (DomainVersionType)
  , "Status" :: Maybe (DomainStatusType)
  }
derive instance newtypeDomainDescriptionType :: Newtype DomainDescriptionType _
derive instance repGenericDomainDescriptionType :: Generic DomainDescriptionType _
instance showDomainDescriptionType :: Show DomainDescriptionType where show = genericShow
instance decodeDomainDescriptionType :: Decode DomainDescriptionType where decode = genericDecode options
instance encodeDomainDescriptionType :: Encode DomainDescriptionType where encode = genericEncode options

-- | Constructs DomainDescriptionType from required parameters
newDomainDescriptionType :: DomainDescriptionType
newDomainDescriptionType  = DomainDescriptionType { "AWSAccountId": Nothing, "CloudFrontDistribution": Nothing, "Domain": Nothing, "S3Bucket": Nothing, "Status": Nothing, "UserPoolId": Nothing, "Version": Nothing }

-- | Constructs DomainDescriptionType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainDescriptionType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "AWSAccountId" :: Maybe (AWSAccountIdType) , "Domain" :: Maybe (DomainType) , "S3Bucket" :: Maybe (S3BucketType) , "CloudFrontDistribution" :: Maybe (ArnType) , "Version" :: Maybe (DomainVersionType) , "Status" :: Maybe (DomainStatusType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "AWSAccountId" :: Maybe (AWSAccountIdType) , "Domain" :: Maybe (DomainType) , "S3Bucket" :: Maybe (S3BucketType) , "CloudFrontDistribution" :: Maybe (ArnType) , "Version" :: Maybe (DomainVersionType) , "Status" :: Maybe (DomainStatusType) } ) -> DomainDescriptionType
newDomainDescriptionType'  customize = (DomainDescriptionType <<< customize) { "AWSAccountId": Nothing, "CloudFrontDistribution": Nothing, "Domain": Nothing, "S3Bucket": Nothing, "Status": Nothing, "UserPoolId": Nothing, "Version": Nothing }



newtype DomainStatusType = DomainStatusType String
derive instance newtypeDomainStatusType :: Newtype DomainStatusType _
derive instance repGenericDomainStatusType :: Generic DomainStatusType _
instance showDomainStatusType :: Show DomainStatusType where show = genericShow
instance decodeDomainStatusType :: Decode DomainStatusType where decode = genericDecode options
instance encodeDomainStatusType :: Encode DomainStatusType where encode = genericEncode options



newtype DomainType = DomainType String
derive instance newtypeDomainType :: Newtype DomainType _
derive instance repGenericDomainType :: Generic DomainType _
instance showDomainType :: Show DomainType where show = genericShow
instance decodeDomainType :: Decode DomainType where decode = genericDecode options
instance encodeDomainType :: Encode DomainType where encode = genericEncode options



newtype DomainVersionType = DomainVersionType String
derive instance newtypeDomainVersionType :: Newtype DomainVersionType _
derive instance repGenericDomainVersionType :: Generic DomainVersionType _
instance showDomainVersionType :: Show DomainVersionType where show = genericShow
instance decodeDomainVersionType :: Decode DomainVersionType where decode = genericDecode options
instance encodeDomainVersionType :: Encode DomainVersionType where encode = genericEncode options



-- | <p>This exception is thrown when the provider is already supported by the user pool.</p>
newtype DuplicateProviderException = DuplicateProviderException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeDuplicateProviderException :: Newtype DuplicateProviderException _
derive instance repGenericDuplicateProviderException :: Generic DuplicateProviderException _
instance showDuplicateProviderException :: Show DuplicateProviderException where show = genericShow
instance decodeDuplicateProviderException :: Decode DuplicateProviderException where decode = genericDecode options
instance encodeDuplicateProviderException :: Encode DuplicateProviderException where encode = genericEncode options

-- | Constructs DuplicateProviderException from required parameters
newDuplicateProviderException :: DuplicateProviderException
newDuplicateProviderException  = DuplicateProviderException { "message": Nothing }

-- | Constructs DuplicateProviderException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateProviderException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> DuplicateProviderException
newDuplicateProviderException'  customize = (DuplicateProviderException <<< customize) { "message": Nothing }



newtype EmailAddressType = EmailAddressType String
derive instance newtypeEmailAddressType :: Newtype EmailAddressType _
derive instance repGenericEmailAddressType :: Generic EmailAddressType _
instance showEmailAddressType :: Show EmailAddressType where show = genericShow
instance decodeEmailAddressType :: Decode EmailAddressType where decode = genericDecode options
instance encodeEmailAddressType :: Encode EmailAddressType where encode = genericEncode options



-- | <p>The email configuration type.</p>
newtype EmailConfigurationType = EmailConfigurationType 
  { "SourceArn" :: Maybe (ArnType)
  , "ReplyToEmailAddress" :: Maybe (EmailAddressType)
  }
derive instance newtypeEmailConfigurationType :: Newtype EmailConfigurationType _
derive instance repGenericEmailConfigurationType :: Generic EmailConfigurationType _
instance showEmailConfigurationType :: Show EmailConfigurationType where show = genericShow
instance decodeEmailConfigurationType :: Decode EmailConfigurationType where decode = genericDecode options
instance encodeEmailConfigurationType :: Encode EmailConfigurationType where encode = genericEncode options

-- | Constructs EmailConfigurationType from required parameters
newEmailConfigurationType :: EmailConfigurationType
newEmailConfigurationType  = EmailConfigurationType { "ReplyToEmailAddress": Nothing, "SourceArn": Nothing }

-- | Constructs EmailConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEmailConfigurationType' :: ( { "SourceArn" :: Maybe (ArnType) , "ReplyToEmailAddress" :: Maybe (EmailAddressType) } -> {"SourceArn" :: Maybe (ArnType) , "ReplyToEmailAddress" :: Maybe (EmailAddressType) } ) -> EmailConfigurationType
newEmailConfigurationType'  customize = (EmailConfigurationType <<< customize) { "ReplyToEmailAddress": Nothing, "SourceArn": Nothing }



newtype EmailNotificationBodyType = EmailNotificationBodyType String
derive instance newtypeEmailNotificationBodyType :: Newtype EmailNotificationBodyType _
derive instance repGenericEmailNotificationBodyType :: Generic EmailNotificationBodyType _
instance showEmailNotificationBodyType :: Show EmailNotificationBodyType where show = genericShow
instance decodeEmailNotificationBodyType :: Decode EmailNotificationBodyType where decode = genericDecode options
instance encodeEmailNotificationBodyType :: Encode EmailNotificationBodyType where encode = genericEncode options



newtype EmailNotificationSubjectType = EmailNotificationSubjectType String
derive instance newtypeEmailNotificationSubjectType :: Newtype EmailNotificationSubjectType _
derive instance repGenericEmailNotificationSubjectType :: Generic EmailNotificationSubjectType _
instance showEmailNotificationSubjectType :: Show EmailNotificationSubjectType where show = genericShow
instance decodeEmailNotificationSubjectType :: Decode EmailNotificationSubjectType where decode = genericDecode options
instance encodeEmailNotificationSubjectType :: Encode EmailNotificationSubjectType where encode = genericEncode options



newtype EmailVerificationMessageByLinkType = EmailVerificationMessageByLinkType String
derive instance newtypeEmailVerificationMessageByLinkType :: Newtype EmailVerificationMessageByLinkType _
derive instance repGenericEmailVerificationMessageByLinkType :: Generic EmailVerificationMessageByLinkType _
instance showEmailVerificationMessageByLinkType :: Show EmailVerificationMessageByLinkType where show = genericShow
instance decodeEmailVerificationMessageByLinkType :: Decode EmailVerificationMessageByLinkType where decode = genericDecode options
instance encodeEmailVerificationMessageByLinkType :: Encode EmailVerificationMessageByLinkType where encode = genericEncode options



newtype EmailVerificationMessageType = EmailVerificationMessageType String
derive instance newtypeEmailVerificationMessageType :: Newtype EmailVerificationMessageType _
derive instance repGenericEmailVerificationMessageType :: Generic EmailVerificationMessageType _
instance showEmailVerificationMessageType :: Show EmailVerificationMessageType where show = genericShow
instance decodeEmailVerificationMessageType :: Decode EmailVerificationMessageType where decode = genericDecode options
instance encodeEmailVerificationMessageType :: Encode EmailVerificationMessageType where encode = genericEncode options



newtype EmailVerificationSubjectByLinkType = EmailVerificationSubjectByLinkType String
derive instance newtypeEmailVerificationSubjectByLinkType :: Newtype EmailVerificationSubjectByLinkType _
derive instance repGenericEmailVerificationSubjectByLinkType :: Generic EmailVerificationSubjectByLinkType _
instance showEmailVerificationSubjectByLinkType :: Show EmailVerificationSubjectByLinkType where show = genericShow
instance decodeEmailVerificationSubjectByLinkType :: Decode EmailVerificationSubjectByLinkType where decode = genericDecode options
instance encodeEmailVerificationSubjectByLinkType :: Encode EmailVerificationSubjectByLinkType where encode = genericEncode options



newtype EmailVerificationSubjectType = EmailVerificationSubjectType String
derive instance newtypeEmailVerificationSubjectType :: Newtype EmailVerificationSubjectType _
derive instance repGenericEmailVerificationSubjectType :: Generic EmailVerificationSubjectType _
instance showEmailVerificationSubjectType :: Show EmailVerificationSubjectType where show = genericShow
instance decodeEmailVerificationSubjectType :: Decode EmailVerificationSubjectType where decode = genericDecode options
instance encodeEmailVerificationSubjectType :: Encode EmailVerificationSubjectType where encode = genericEncode options



-- | <p>This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).</p>
newtype EnableSoftwareTokenMFAException = EnableSoftwareTokenMFAException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeEnableSoftwareTokenMFAException :: Newtype EnableSoftwareTokenMFAException _
derive instance repGenericEnableSoftwareTokenMFAException :: Generic EnableSoftwareTokenMFAException _
instance showEnableSoftwareTokenMFAException :: Show EnableSoftwareTokenMFAException where show = genericShow
instance decodeEnableSoftwareTokenMFAException :: Decode EnableSoftwareTokenMFAException where decode = genericDecode options
instance encodeEnableSoftwareTokenMFAException :: Encode EnableSoftwareTokenMFAException where encode = genericEncode options

-- | Constructs EnableSoftwareTokenMFAException from required parameters
newEnableSoftwareTokenMFAException :: EnableSoftwareTokenMFAException
newEnableSoftwareTokenMFAException  = EnableSoftwareTokenMFAException { "message": Nothing }

-- | Constructs EnableSoftwareTokenMFAException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableSoftwareTokenMFAException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> EnableSoftwareTokenMFAException
newEnableSoftwareTokenMFAException'  customize = (EnableSoftwareTokenMFAException <<< customize) { "message": Nothing }



-- | <p>Specifies the user context data captured at the time of an event request.</p>
newtype EventContextDataType = EventContextDataType 
  { "IpAddress" :: Maybe (StringType)
  , "DeviceName" :: Maybe (StringType)
  , "Timezone" :: Maybe (StringType)
  , "City" :: Maybe (StringType)
  , "Country" :: Maybe (StringType)
  }
derive instance newtypeEventContextDataType :: Newtype EventContextDataType _
derive instance repGenericEventContextDataType :: Generic EventContextDataType _
instance showEventContextDataType :: Show EventContextDataType where show = genericShow
instance decodeEventContextDataType :: Decode EventContextDataType where decode = genericDecode options
instance encodeEventContextDataType :: Encode EventContextDataType where encode = genericEncode options

-- | Constructs EventContextDataType from required parameters
newEventContextDataType :: EventContextDataType
newEventContextDataType  = EventContextDataType { "City": Nothing, "Country": Nothing, "DeviceName": Nothing, "IpAddress": Nothing, "Timezone": Nothing }

-- | Constructs EventContextDataType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventContextDataType' :: ( { "IpAddress" :: Maybe (StringType) , "DeviceName" :: Maybe (StringType) , "Timezone" :: Maybe (StringType) , "City" :: Maybe (StringType) , "Country" :: Maybe (StringType) } -> {"IpAddress" :: Maybe (StringType) , "DeviceName" :: Maybe (StringType) , "Timezone" :: Maybe (StringType) , "City" :: Maybe (StringType) , "Country" :: Maybe (StringType) } ) -> EventContextDataType
newEventContextDataType'  customize = (EventContextDataType <<< customize) { "City": Nothing, "Country": Nothing, "DeviceName": Nothing, "IpAddress": Nothing, "Timezone": Nothing }



-- | <p>Specifies the event feedback type.</p>
newtype EventFeedbackType = EventFeedbackType 
  { "FeedbackValue" :: (FeedbackValueType)
  , "Provider" :: (StringType)
  , "FeedbackDate" :: Maybe (DateType)
  }
derive instance newtypeEventFeedbackType :: Newtype EventFeedbackType _
derive instance repGenericEventFeedbackType :: Generic EventFeedbackType _
instance showEventFeedbackType :: Show EventFeedbackType where show = genericShow
instance decodeEventFeedbackType :: Decode EventFeedbackType where decode = genericDecode options
instance encodeEventFeedbackType :: Encode EventFeedbackType where encode = genericEncode options

-- | Constructs EventFeedbackType from required parameters
newEventFeedbackType :: FeedbackValueType -> StringType -> EventFeedbackType
newEventFeedbackType _FeedbackValue _Provider = EventFeedbackType { "FeedbackValue": _FeedbackValue, "Provider": _Provider, "FeedbackDate": Nothing }

-- | Constructs EventFeedbackType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventFeedbackType' :: FeedbackValueType -> StringType -> ( { "FeedbackValue" :: (FeedbackValueType) , "Provider" :: (StringType) , "FeedbackDate" :: Maybe (DateType) } -> {"FeedbackValue" :: (FeedbackValueType) , "Provider" :: (StringType) , "FeedbackDate" :: Maybe (DateType) } ) -> EventFeedbackType
newEventFeedbackType' _FeedbackValue _Provider customize = (EventFeedbackType <<< customize) { "FeedbackValue": _FeedbackValue, "Provider": _Provider, "FeedbackDate": Nothing }



newtype EventFilterType = EventFilterType String
derive instance newtypeEventFilterType :: Newtype EventFilterType _
derive instance repGenericEventFilterType :: Generic EventFilterType _
instance showEventFilterType :: Show EventFilterType where show = genericShow
instance decodeEventFilterType :: Decode EventFilterType where decode = genericDecode options
instance encodeEventFilterType :: Encode EventFilterType where encode = genericEncode options



newtype EventFiltersType = EventFiltersType (Array EventFilterType)
derive instance newtypeEventFiltersType :: Newtype EventFiltersType _
derive instance repGenericEventFiltersType :: Generic EventFiltersType _
instance showEventFiltersType :: Show EventFiltersType where show = genericShow
instance decodeEventFiltersType :: Decode EventFiltersType where decode = genericDecode options
instance encodeEventFiltersType :: Encode EventFiltersType where encode = genericEncode options



newtype EventIdType = EventIdType String
derive instance newtypeEventIdType :: Newtype EventIdType _
derive instance repGenericEventIdType :: Generic EventIdType _
instance showEventIdType :: Show EventIdType where show = genericShow
instance decodeEventIdType :: Decode EventIdType where decode = genericDecode options
instance encodeEventIdType :: Encode EventIdType where encode = genericEncode options



newtype EventResponseType = EventResponseType String
derive instance newtypeEventResponseType :: Newtype EventResponseType _
derive instance repGenericEventResponseType :: Generic EventResponseType _
instance showEventResponseType :: Show EventResponseType where show = genericShow
instance decodeEventResponseType :: Decode EventResponseType where decode = genericDecode options
instance encodeEventResponseType :: Encode EventResponseType where encode = genericEncode options



-- | <p>The event risk type.</p>
newtype EventRiskType = EventRiskType 
  { "RiskDecision" :: Maybe (RiskDecisionType)
  , "RiskLevel" :: Maybe (RiskLevelType)
  }
derive instance newtypeEventRiskType :: Newtype EventRiskType _
derive instance repGenericEventRiskType :: Generic EventRiskType _
instance showEventRiskType :: Show EventRiskType where show = genericShow
instance decodeEventRiskType :: Decode EventRiskType where decode = genericDecode options
instance encodeEventRiskType :: Encode EventRiskType where encode = genericEncode options

-- | Constructs EventRiskType from required parameters
newEventRiskType :: EventRiskType
newEventRiskType  = EventRiskType { "RiskDecision": Nothing, "RiskLevel": Nothing }

-- | Constructs EventRiskType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventRiskType' :: ( { "RiskDecision" :: Maybe (RiskDecisionType) , "RiskLevel" :: Maybe (RiskLevelType) } -> {"RiskDecision" :: Maybe (RiskDecisionType) , "RiskLevel" :: Maybe (RiskLevelType) } ) -> EventRiskType
newEventRiskType'  customize = (EventRiskType <<< customize) { "RiskDecision": Nothing, "RiskLevel": Nothing }



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



-- | <p>This exception is thrown if a code has expired.</p>
newtype ExpiredCodeException = ExpiredCodeException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeExpiredCodeException :: Newtype ExpiredCodeException _
derive instance repGenericExpiredCodeException :: Generic ExpiredCodeException _
instance showExpiredCodeException :: Show ExpiredCodeException where show = genericShow
instance decodeExpiredCodeException :: Decode ExpiredCodeException where decode = genericDecode options
instance encodeExpiredCodeException :: Encode ExpiredCodeException where encode = genericEncode options

-- | Constructs ExpiredCodeException from required parameters
newExpiredCodeException :: ExpiredCodeException
newExpiredCodeException  = ExpiredCodeException { "message": Nothing }

-- | Constructs ExpiredCodeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredCodeException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> ExpiredCodeException
newExpiredCodeException'  customize = (ExpiredCodeException <<< customize) { "message": Nothing }



newtype ExplicitAuthFlowsListType = ExplicitAuthFlowsListType (Array ExplicitAuthFlowsType)
derive instance newtypeExplicitAuthFlowsListType :: Newtype ExplicitAuthFlowsListType _
derive instance repGenericExplicitAuthFlowsListType :: Generic ExplicitAuthFlowsListType _
instance showExplicitAuthFlowsListType :: Show ExplicitAuthFlowsListType where show = genericShow
instance decodeExplicitAuthFlowsListType :: Decode ExplicitAuthFlowsListType where decode = genericDecode options
instance encodeExplicitAuthFlowsListType :: Encode ExplicitAuthFlowsListType where encode = genericEncode options



newtype ExplicitAuthFlowsType = ExplicitAuthFlowsType String
derive instance newtypeExplicitAuthFlowsType :: Newtype ExplicitAuthFlowsType _
derive instance repGenericExplicitAuthFlowsType :: Generic ExplicitAuthFlowsType _
instance showExplicitAuthFlowsType :: Show ExplicitAuthFlowsType where show = genericShow
instance decodeExplicitAuthFlowsType :: Decode ExplicitAuthFlowsType where decode = genericDecode options
instance encodeExplicitAuthFlowsType :: Encode ExplicitAuthFlowsType where encode = genericEncode options



newtype FeedbackValueType = FeedbackValueType String
derive instance newtypeFeedbackValueType :: Newtype FeedbackValueType _
derive instance repGenericFeedbackValueType :: Generic FeedbackValueType _
instance showFeedbackValueType :: Show FeedbackValueType where show = genericShow
instance decodeFeedbackValueType :: Decode FeedbackValueType where decode = genericDecode options
instance encodeFeedbackValueType :: Encode FeedbackValueType where encode = genericEncode options



newtype ForceAliasCreation = ForceAliasCreation Boolean
derive instance newtypeForceAliasCreation :: Newtype ForceAliasCreation _
derive instance repGenericForceAliasCreation :: Generic ForceAliasCreation _
instance showForceAliasCreation :: Show ForceAliasCreation where show = genericShow
instance decodeForceAliasCreation :: Decode ForceAliasCreation where decode = genericDecode options
instance encodeForceAliasCreation :: Encode ForceAliasCreation where encode = genericEncode options



-- | <p>Represents the request to forget the device.</p>
newtype ForgetDeviceRequest = ForgetDeviceRequest 
  { "AccessToken" :: Maybe (TokenModelType)
  , "DeviceKey" :: (DeviceKeyType)
  }
derive instance newtypeForgetDeviceRequest :: Newtype ForgetDeviceRequest _
derive instance repGenericForgetDeviceRequest :: Generic ForgetDeviceRequest _
instance showForgetDeviceRequest :: Show ForgetDeviceRequest where show = genericShow
instance decodeForgetDeviceRequest :: Decode ForgetDeviceRequest where decode = genericDecode options
instance encodeForgetDeviceRequest :: Encode ForgetDeviceRequest where encode = genericEncode options

-- | Constructs ForgetDeviceRequest from required parameters
newForgetDeviceRequest :: DeviceKeyType -> ForgetDeviceRequest
newForgetDeviceRequest _DeviceKey = ForgetDeviceRequest { "DeviceKey": _DeviceKey, "AccessToken": Nothing }

-- | Constructs ForgetDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForgetDeviceRequest' :: DeviceKeyType -> ( { "AccessToken" :: Maybe (TokenModelType) , "DeviceKey" :: (DeviceKeyType) } -> {"AccessToken" :: Maybe (TokenModelType) , "DeviceKey" :: (DeviceKeyType) } ) -> ForgetDeviceRequest
newForgetDeviceRequest' _DeviceKey customize = (ForgetDeviceRequest <<< customize) { "DeviceKey": _DeviceKey, "AccessToken": Nothing }



-- | <p>Represents the request to reset a user's password.</p>
newtype ForgotPasswordRequest = ForgotPasswordRequest 
  { "ClientId" :: (ClientIdType)
  , "SecretHash" :: Maybe (SecretHashType)
  , "UserContextData" :: Maybe (UserContextDataType)
  , "Username" :: (UsernameType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  }
derive instance newtypeForgotPasswordRequest :: Newtype ForgotPasswordRequest _
derive instance repGenericForgotPasswordRequest :: Generic ForgotPasswordRequest _
instance showForgotPasswordRequest :: Show ForgotPasswordRequest where show = genericShow
instance decodeForgotPasswordRequest :: Decode ForgotPasswordRequest where decode = genericDecode options
instance encodeForgotPasswordRequest :: Encode ForgotPasswordRequest where encode = genericEncode options

-- | Constructs ForgotPasswordRequest from required parameters
newForgotPasswordRequest :: ClientIdType -> UsernameType -> ForgotPasswordRequest
newForgotPasswordRequest _ClientId _Username = ForgotPasswordRequest { "ClientId": _ClientId, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }

-- | Constructs ForgotPasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForgotPasswordRequest' :: ClientIdType -> UsernameType -> ( { "ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "UserContextData" :: Maybe (UserContextDataType) , "Username" :: (UsernameType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) } -> {"ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "UserContextData" :: Maybe (UserContextDataType) , "Username" :: (UsernameType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) } ) -> ForgotPasswordRequest
newForgotPasswordRequest' _ClientId _Username customize = (ForgotPasswordRequest <<< customize) { "ClientId": _ClientId, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }



-- | <p>Respresents the response from the server regarding the request to reset a password.</p>
newtype ForgotPasswordResponse = ForgotPasswordResponse 
  { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType)
  }
derive instance newtypeForgotPasswordResponse :: Newtype ForgotPasswordResponse _
derive instance repGenericForgotPasswordResponse :: Generic ForgotPasswordResponse _
instance showForgotPasswordResponse :: Show ForgotPasswordResponse where show = genericShow
instance decodeForgotPasswordResponse :: Decode ForgotPasswordResponse where decode = genericDecode options
instance encodeForgotPasswordResponse :: Encode ForgotPasswordResponse where encode = genericEncode options

-- | Constructs ForgotPasswordResponse from required parameters
newForgotPasswordResponse :: ForgotPasswordResponse
newForgotPasswordResponse  = ForgotPasswordResponse { "CodeDeliveryDetails": Nothing }

-- | Constructs ForgotPasswordResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForgotPasswordResponse' :: ( { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } -> {"CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } ) -> ForgotPasswordResponse
newForgotPasswordResponse'  customize = (ForgotPasswordResponse <<< customize) { "CodeDeliveryDetails": Nothing }



newtype GenerateSecret = GenerateSecret Boolean
derive instance newtypeGenerateSecret :: Newtype GenerateSecret _
derive instance repGenericGenerateSecret :: Generic GenerateSecret _
instance showGenerateSecret :: Show GenerateSecret where show = genericShow
instance decodeGenerateSecret :: Decode GenerateSecret where decode = genericDecode options
instance encodeGenerateSecret :: Encode GenerateSecret where encode = genericEncode options



-- | <p>Represents the request to get the header information for the .csv file for the user import job.</p>
newtype GetCSVHeaderRequest = GetCSVHeaderRequest 
  { "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeGetCSVHeaderRequest :: Newtype GetCSVHeaderRequest _
derive instance repGenericGetCSVHeaderRequest :: Generic GetCSVHeaderRequest _
instance showGetCSVHeaderRequest :: Show GetCSVHeaderRequest where show = genericShow
instance decodeGetCSVHeaderRequest :: Decode GetCSVHeaderRequest where decode = genericDecode options
instance encodeGetCSVHeaderRequest :: Encode GetCSVHeaderRequest where encode = genericEncode options

-- | Constructs GetCSVHeaderRequest from required parameters
newGetCSVHeaderRequest :: UserPoolIdType -> GetCSVHeaderRequest
newGetCSVHeaderRequest _UserPoolId = GetCSVHeaderRequest { "UserPoolId": _UserPoolId }

-- | Constructs GetCSVHeaderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCSVHeaderRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) } -> {"UserPoolId" :: (UserPoolIdType) } ) -> GetCSVHeaderRequest
newGetCSVHeaderRequest' _UserPoolId customize = (GetCSVHeaderRequest <<< customize) { "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server to the request to get the header information for the .csv file for the user import job.</p>
newtype GetCSVHeaderResponse = GetCSVHeaderResponse 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "CSVHeader" :: Maybe (ListOfStringTypes)
  }
derive instance newtypeGetCSVHeaderResponse :: Newtype GetCSVHeaderResponse _
derive instance repGenericGetCSVHeaderResponse :: Generic GetCSVHeaderResponse _
instance showGetCSVHeaderResponse :: Show GetCSVHeaderResponse where show = genericShow
instance decodeGetCSVHeaderResponse :: Decode GetCSVHeaderResponse where decode = genericDecode options
instance encodeGetCSVHeaderResponse :: Encode GetCSVHeaderResponse where encode = genericEncode options

-- | Constructs GetCSVHeaderResponse from required parameters
newGetCSVHeaderResponse :: GetCSVHeaderResponse
newGetCSVHeaderResponse  = GetCSVHeaderResponse { "CSVHeader": Nothing, "UserPoolId": Nothing }

-- | Constructs GetCSVHeaderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCSVHeaderResponse' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "CSVHeader" :: Maybe (ListOfStringTypes) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "CSVHeader" :: Maybe (ListOfStringTypes) } ) -> GetCSVHeaderResponse
newGetCSVHeaderResponse'  customize = (GetCSVHeaderResponse <<< customize) { "CSVHeader": Nothing, "UserPoolId": Nothing }



-- | <p>Represents the request to get the device.</p>
newtype GetDeviceRequest = GetDeviceRequest 
  { "DeviceKey" :: (DeviceKeyType)
  , "AccessToken" :: Maybe (TokenModelType)
  }
derive instance newtypeGetDeviceRequest :: Newtype GetDeviceRequest _
derive instance repGenericGetDeviceRequest :: Generic GetDeviceRequest _
instance showGetDeviceRequest :: Show GetDeviceRequest where show = genericShow
instance decodeGetDeviceRequest :: Decode GetDeviceRequest where decode = genericDecode options
instance encodeGetDeviceRequest :: Encode GetDeviceRequest where encode = genericEncode options

-- | Constructs GetDeviceRequest from required parameters
newGetDeviceRequest :: DeviceKeyType -> GetDeviceRequest
newGetDeviceRequest _DeviceKey = GetDeviceRequest { "DeviceKey": _DeviceKey, "AccessToken": Nothing }

-- | Constructs GetDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDeviceRequest' :: DeviceKeyType -> ( { "DeviceKey" :: (DeviceKeyType) , "AccessToken" :: Maybe (TokenModelType) } -> {"DeviceKey" :: (DeviceKeyType) , "AccessToken" :: Maybe (TokenModelType) } ) -> GetDeviceRequest
newGetDeviceRequest' _DeviceKey customize = (GetDeviceRequest <<< customize) { "DeviceKey": _DeviceKey, "AccessToken": Nothing }



-- | <p>Gets the device response.</p>
newtype GetDeviceResponse = GetDeviceResponse 
  { "Device" :: (DeviceType)
  }
derive instance newtypeGetDeviceResponse :: Newtype GetDeviceResponse _
derive instance repGenericGetDeviceResponse :: Generic GetDeviceResponse _
instance showGetDeviceResponse :: Show GetDeviceResponse where show = genericShow
instance decodeGetDeviceResponse :: Decode GetDeviceResponse where decode = genericDecode options
instance encodeGetDeviceResponse :: Encode GetDeviceResponse where encode = genericEncode options

-- | Constructs GetDeviceResponse from required parameters
newGetDeviceResponse :: DeviceType -> GetDeviceResponse
newGetDeviceResponse _Device = GetDeviceResponse { "Device": _Device }

-- | Constructs GetDeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDeviceResponse' :: DeviceType -> ( { "Device" :: (DeviceType) } -> {"Device" :: (DeviceType) } ) -> GetDeviceResponse
newGetDeviceResponse' _Device customize = (GetDeviceResponse <<< customize) { "Device": _Device }



newtype GetGroupRequest = GetGroupRequest 
  { "GroupName" :: (GroupNameType)
  , "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeGetGroupRequest :: Newtype GetGroupRequest _
derive instance repGenericGetGroupRequest :: Generic GetGroupRequest _
instance showGetGroupRequest :: Show GetGroupRequest where show = genericShow
instance decodeGetGroupRequest :: Decode GetGroupRequest where decode = genericDecode options
instance encodeGetGroupRequest :: Encode GetGroupRequest where encode = genericEncode options

-- | Constructs GetGroupRequest from required parameters
newGetGroupRequest :: GroupNameType -> UserPoolIdType -> GetGroupRequest
newGetGroupRequest _GroupName _UserPoolId = GetGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId }

-- | Constructs GetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupRequest' :: GroupNameType -> UserPoolIdType -> ( { "GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) } -> {"GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) } ) -> GetGroupRequest
newGetGroupRequest' _GroupName _UserPoolId customize = (GetGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId }



newtype GetGroupResponse = GetGroupResponse 
  { "Group" :: Maybe (GroupType)
  }
derive instance newtypeGetGroupResponse :: Newtype GetGroupResponse _
derive instance repGenericGetGroupResponse :: Generic GetGroupResponse _
instance showGetGroupResponse :: Show GetGroupResponse where show = genericShow
instance decodeGetGroupResponse :: Decode GetGroupResponse where decode = genericDecode options
instance encodeGetGroupResponse :: Encode GetGroupResponse where encode = genericEncode options

-- | Constructs GetGroupResponse from required parameters
newGetGroupResponse :: GetGroupResponse
newGetGroupResponse  = GetGroupResponse { "Group": Nothing }

-- | Constructs GetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupResponse' :: ( { "Group" :: Maybe (GroupType) } -> {"Group" :: Maybe (GroupType) } ) -> GetGroupResponse
newGetGroupResponse'  customize = (GetGroupResponse <<< customize) { "Group": Nothing }



newtype GetIdentityProviderByIdentifierRequest = GetIdentityProviderByIdentifierRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "IdpIdentifier" :: (IdpIdentifierType)
  }
derive instance newtypeGetIdentityProviderByIdentifierRequest :: Newtype GetIdentityProviderByIdentifierRequest _
derive instance repGenericGetIdentityProviderByIdentifierRequest :: Generic GetIdentityProviderByIdentifierRequest _
instance showGetIdentityProviderByIdentifierRequest :: Show GetIdentityProviderByIdentifierRequest where show = genericShow
instance decodeGetIdentityProviderByIdentifierRequest :: Decode GetIdentityProviderByIdentifierRequest where decode = genericDecode options
instance encodeGetIdentityProviderByIdentifierRequest :: Encode GetIdentityProviderByIdentifierRequest where encode = genericEncode options

-- | Constructs GetIdentityProviderByIdentifierRequest from required parameters
newGetIdentityProviderByIdentifierRequest :: IdpIdentifierType -> UserPoolIdType -> GetIdentityProviderByIdentifierRequest
newGetIdentityProviderByIdentifierRequest _IdpIdentifier _UserPoolId = GetIdentityProviderByIdentifierRequest { "IdpIdentifier": _IdpIdentifier, "UserPoolId": _UserPoolId }

-- | Constructs GetIdentityProviderByIdentifierRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityProviderByIdentifierRequest' :: IdpIdentifierType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "IdpIdentifier" :: (IdpIdentifierType) } -> {"UserPoolId" :: (UserPoolIdType) , "IdpIdentifier" :: (IdpIdentifierType) } ) -> GetIdentityProviderByIdentifierRequest
newGetIdentityProviderByIdentifierRequest' _IdpIdentifier _UserPoolId customize = (GetIdentityProviderByIdentifierRequest <<< customize) { "IdpIdentifier": _IdpIdentifier, "UserPoolId": _UserPoolId }



newtype GetIdentityProviderByIdentifierResponse = GetIdentityProviderByIdentifierResponse 
  { "IdentityProvider" :: (IdentityProviderType)
  }
derive instance newtypeGetIdentityProviderByIdentifierResponse :: Newtype GetIdentityProviderByIdentifierResponse _
derive instance repGenericGetIdentityProviderByIdentifierResponse :: Generic GetIdentityProviderByIdentifierResponse _
instance showGetIdentityProviderByIdentifierResponse :: Show GetIdentityProviderByIdentifierResponse where show = genericShow
instance decodeGetIdentityProviderByIdentifierResponse :: Decode GetIdentityProviderByIdentifierResponse where decode = genericDecode options
instance encodeGetIdentityProviderByIdentifierResponse :: Encode GetIdentityProviderByIdentifierResponse where encode = genericEncode options

-- | Constructs GetIdentityProviderByIdentifierResponse from required parameters
newGetIdentityProviderByIdentifierResponse :: IdentityProviderType -> GetIdentityProviderByIdentifierResponse
newGetIdentityProviderByIdentifierResponse _IdentityProvider = GetIdentityProviderByIdentifierResponse { "IdentityProvider": _IdentityProvider }

-- | Constructs GetIdentityProviderByIdentifierResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityProviderByIdentifierResponse' :: IdentityProviderType -> ( { "IdentityProvider" :: (IdentityProviderType) } -> {"IdentityProvider" :: (IdentityProviderType) } ) -> GetIdentityProviderByIdentifierResponse
newGetIdentityProviderByIdentifierResponse' _IdentityProvider customize = (GetIdentityProviderByIdentifierResponse <<< customize) { "IdentityProvider": _IdentityProvider }



-- | <p>Request to get a signing certificate from Cognito.</p>
newtype GetSigningCertificateRequest = GetSigningCertificateRequest 
  { "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeGetSigningCertificateRequest :: Newtype GetSigningCertificateRequest _
derive instance repGenericGetSigningCertificateRequest :: Generic GetSigningCertificateRequest _
instance showGetSigningCertificateRequest :: Show GetSigningCertificateRequest where show = genericShow
instance decodeGetSigningCertificateRequest :: Decode GetSigningCertificateRequest where decode = genericDecode options
instance encodeGetSigningCertificateRequest :: Encode GetSigningCertificateRequest where encode = genericEncode options

-- | Constructs GetSigningCertificateRequest from required parameters
newGetSigningCertificateRequest :: UserPoolIdType -> GetSigningCertificateRequest
newGetSigningCertificateRequest _UserPoolId = GetSigningCertificateRequest { "UserPoolId": _UserPoolId }

-- | Constructs GetSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSigningCertificateRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) } -> {"UserPoolId" :: (UserPoolIdType) } ) -> GetSigningCertificateRequest
newGetSigningCertificateRequest' _UserPoolId customize = (GetSigningCertificateRequest <<< customize) { "UserPoolId": _UserPoolId }



-- | <p>Response from Cognito for a signing certificate request.</p>
newtype GetSigningCertificateResponse = GetSigningCertificateResponse 
  { "Certificate" :: Maybe (StringType)
  }
derive instance newtypeGetSigningCertificateResponse :: Newtype GetSigningCertificateResponse _
derive instance repGenericGetSigningCertificateResponse :: Generic GetSigningCertificateResponse _
instance showGetSigningCertificateResponse :: Show GetSigningCertificateResponse where show = genericShow
instance decodeGetSigningCertificateResponse :: Decode GetSigningCertificateResponse where decode = genericDecode options
instance encodeGetSigningCertificateResponse :: Encode GetSigningCertificateResponse where encode = genericEncode options

-- | Constructs GetSigningCertificateResponse from required parameters
newGetSigningCertificateResponse :: GetSigningCertificateResponse
newGetSigningCertificateResponse  = GetSigningCertificateResponse { "Certificate": Nothing }

-- | Constructs GetSigningCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSigningCertificateResponse' :: ( { "Certificate" :: Maybe (StringType) } -> {"Certificate" :: Maybe (StringType) } ) -> GetSigningCertificateResponse
newGetSigningCertificateResponse'  customize = (GetSigningCertificateResponse <<< customize) { "Certificate": Nothing }



newtype GetUICustomizationRequest = GetUICustomizationRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  }
derive instance newtypeGetUICustomizationRequest :: Newtype GetUICustomizationRequest _
derive instance repGenericGetUICustomizationRequest :: Generic GetUICustomizationRequest _
instance showGetUICustomizationRequest :: Show GetUICustomizationRequest where show = genericShow
instance decodeGetUICustomizationRequest :: Decode GetUICustomizationRequest where decode = genericDecode options
instance encodeGetUICustomizationRequest :: Encode GetUICustomizationRequest where encode = genericEncode options

-- | Constructs GetUICustomizationRequest from required parameters
newGetUICustomizationRequest :: UserPoolIdType -> GetUICustomizationRequest
newGetUICustomizationRequest _UserPoolId = GetUICustomizationRequest { "UserPoolId": _UserPoolId, "ClientId": Nothing }

-- | Constructs GetUICustomizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUICustomizationRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) } ) -> GetUICustomizationRequest
newGetUICustomizationRequest' _UserPoolId customize = (GetUICustomizationRequest <<< customize) { "UserPoolId": _UserPoolId, "ClientId": Nothing }



newtype GetUICustomizationResponse = GetUICustomizationResponse 
  { "UICustomization" :: (UICustomizationType)
  }
derive instance newtypeGetUICustomizationResponse :: Newtype GetUICustomizationResponse _
derive instance repGenericGetUICustomizationResponse :: Generic GetUICustomizationResponse _
instance showGetUICustomizationResponse :: Show GetUICustomizationResponse where show = genericShow
instance decodeGetUICustomizationResponse :: Decode GetUICustomizationResponse where decode = genericDecode options
instance encodeGetUICustomizationResponse :: Encode GetUICustomizationResponse where encode = genericEncode options

-- | Constructs GetUICustomizationResponse from required parameters
newGetUICustomizationResponse :: UICustomizationType -> GetUICustomizationResponse
newGetUICustomizationResponse _UICustomization = GetUICustomizationResponse { "UICustomization": _UICustomization }

-- | Constructs GetUICustomizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUICustomizationResponse' :: UICustomizationType -> ( { "UICustomization" :: (UICustomizationType) } -> {"UICustomization" :: (UICustomizationType) } ) -> GetUICustomizationResponse
newGetUICustomizationResponse' _UICustomization customize = (GetUICustomizationResponse <<< customize) { "UICustomization": _UICustomization }



-- | <p>Represents the request to get user attribute verification.</p>
newtype GetUserAttributeVerificationCodeRequest = GetUserAttributeVerificationCodeRequest 
  { "AccessToken" :: (TokenModelType)
  , "AttributeName" :: (AttributeNameType)
  }
derive instance newtypeGetUserAttributeVerificationCodeRequest :: Newtype GetUserAttributeVerificationCodeRequest _
derive instance repGenericGetUserAttributeVerificationCodeRequest :: Generic GetUserAttributeVerificationCodeRequest _
instance showGetUserAttributeVerificationCodeRequest :: Show GetUserAttributeVerificationCodeRequest where show = genericShow
instance decodeGetUserAttributeVerificationCodeRequest :: Decode GetUserAttributeVerificationCodeRequest where decode = genericDecode options
instance encodeGetUserAttributeVerificationCodeRequest :: Encode GetUserAttributeVerificationCodeRequest where encode = genericEncode options

-- | Constructs GetUserAttributeVerificationCodeRequest from required parameters
newGetUserAttributeVerificationCodeRequest :: TokenModelType -> AttributeNameType -> GetUserAttributeVerificationCodeRequest
newGetUserAttributeVerificationCodeRequest _AccessToken _AttributeName = GetUserAttributeVerificationCodeRequest { "AccessToken": _AccessToken, "AttributeName": _AttributeName }

-- | Constructs GetUserAttributeVerificationCodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserAttributeVerificationCodeRequest' :: TokenModelType -> AttributeNameType -> ( { "AccessToken" :: (TokenModelType) , "AttributeName" :: (AttributeNameType) } -> {"AccessToken" :: (TokenModelType) , "AttributeName" :: (AttributeNameType) } ) -> GetUserAttributeVerificationCodeRequest
newGetUserAttributeVerificationCodeRequest' _AccessToken _AttributeName customize = (GetUserAttributeVerificationCodeRequest <<< customize) { "AccessToken": _AccessToken, "AttributeName": _AttributeName }



-- | <p>The verification code response returned by the server response to get the user attribute verification code.</p>
newtype GetUserAttributeVerificationCodeResponse = GetUserAttributeVerificationCodeResponse 
  { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType)
  }
derive instance newtypeGetUserAttributeVerificationCodeResponse :: Newtype GetUserAttributeVerificationCodeResponse _
derive instance repGenericGetUserAttributeVerificationCodeResponse :: Generic GetUserAttributeVerificationCodeResponse _
instance showGetUserAttributeVerificationCodeResponse :: Show GetUserAttributeVerificationCodeResponse where show = genericShow
instance decodeGetUserAttributeVerificationCodeResponse :: Decode GetUserAttributeVerificationCodeResponse where decode = genericDecode options
instance encodeGetUserAttributeVerificationCodeResponse :: Encode GetUserAttributeVerificationCodeResponse where encode = genericEncode options

-- | Constructs GetUserAttributeVerificationCodeResponse from required parameters
newGetUserAttributeVerificationCodeResponse :: GetUserAttributeVerificationCodeResponse
newGetUserAttributeVerificationCodeResponse  = GetUserAttributeVerificationCodeResponse { "CodeDeliveryDetails": Nothing }

-- | Constructs GetUserAttributeVerificationCodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserAttributeVerificationCodeResponse' :: ( { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } -> {"CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } ) -> GetUserAttributeVerificationCodeResponse
newGetUserAttributeVerificationCodeResponse'  customize = (GetUserAttributeVerificationCodeResponse <<< customize) { "CodeDeliveryDetails": Nothing }



newtype GetUserPoolMfaConfigRequest = GetUserPoolMfaConfigRequest 
  { "UserPoolId" :: (UserPoolIdType)
  }
derive instance newtypeGetUserPoolMfaConfigRequest :: Newtype GetUserPoolMfaConfigRequest _
derive instance repGenericGetUserPoolMfaConfigRequest :: Generic GetUserPoolMfaConfigRequest _
instance showGetUserPoolMfaConfigRequest :: Show GetUserPoolMfaConfigRequest where show = genericShow
instance decodeGetUserPoolMfaConfigRequest :: Decode GetUserPoolMfaConfigRequest where decode = genericDecode options
instance encodeGetUserPoolMfaConfigRequest :: Encode GetUserPoolMfaConfigRequest where encode = genericEncode options

-- | Constructs GetUserPoolMfaConfigRequest from required parameters
newGetUserPoolMfaConfigRequest :: UserPoolIdType -> GetUserPoolMfaConfigRequest
newGetUserPoolMfaConfigRequest _UserPoolId = GetUserPoolMfaConfigRequest { "UserPoolId": _UserPoolId }

-- | Constructs GetUserPoolMfaConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPoolMfaConfigRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) } -> {"UserPoolId" :: (UserPoolIdType) } ) -> GetUserPoolMfaConfigRequest
newGetUserPoolMfaConfigRequest' _UserPoolId customize = (GetUserPoolMfaConfigRequest <<< customize) { "UserPoolId": _UserPoolId }



newtype GetUserPoolMfaConfigResponse = GetUserPoolMfaConfigResponse 
  { "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType)
  , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  }
derive instance newtypeGetUserPoolMfaConfigResponse :: Newtype GetUserPoolMfaConfigResponse _
derive instance repGenericGetUserPoolMfaConfigResponse :: Generic GetUserPoolMfaConfigResponse _
instance showGetUserPoolMfaConfigResponse :: Show GetUserPoolMfaConfigResponse where show = genericShow
instance decodeGetUserPoolMfaConfigResponse :: Decode GetUserPoolMfaConfigResponse where decode = genericDecode options
instance encodeGetUserPoolMfaConfigResponse :: Encode GetUserPoolMfaConfigResponse where encode = genericEncode options

-- | Constructs GetUserPoolMfaConfigResponse from required parameters
newGetUserPoolMfaConfigResponse :: GetUserPoolMfaConfigResponse
newGetUserPoolMfaConfigResponse  = GetUserPoolMfaConfigResponse { "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }

-- | Constructs GetUserPoolMfaConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPoolMfaConfigResponse' :: ( { "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } -> {"SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } ) -> GetUserPoolMfaConfigResponse
newGetUserPoolMfaConfigResponse'  customize = (GetUserPoolMfaConfigResponse <<< customize) { "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }



-- | <p>Represents the request to get information about the user.</p>
newtype GetUserRequest = GetUserRequest 
  { "AccessToken" :: (TokenModelType)
  }
derive instance newtypeGetUserRequest :: Newtype GetUserRequest _
derive instance repGenericGetUserRequest :: Generic GetUserRequest _
instance showGetUserRequest :: Show GetUserRequest where show = genericShow
instance decodeGetUserRequest :: Decode GetUserRequest where decode = genericDecode options
instance encodeGetUserRequest :: Encode GetUserRequest where encode = genericEncode options

-- | Constructs GetUserRequest from required parameters
newGetUserRequest :: TokenModelType -> GetUserRequest
newGetUserRequest _AccessToken = GetUserRequest { "AccessToken": _AccessToken }

-- | Constructs GetUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserRequest' :: TokenModelType -> ( { "AccessToken" :: (TokenModelType) } -> {"AccessToken" :: (TokenModelType) } ) -> GetUserRequest
newGetUserRequest' _AccessToken customize = (GetUserRequest <<< customize) { "AccessToken": _AccessToken }



-- | <p>Represents the response from the server from the request to get information about the user.</p>
newtype GetUserResponse = GetUserResponse 
  { "Username" :: (UsernameType)
  , "UserAttributes" :: (AttributeListType)
  , "MFAOptions" :: Maybe (MFAOptionListType)
  , "PreferredMfaSetting" :: Maybe (StringType)
  , "UserMFASettingList" :: Maybe (UserMFASettingListType)
  }
derive instance newtypeGetUserResponse :: Newtype GetUserResponse _
derive instance repGenericGetUserResponse :: Generic GetUserResponse _
instance showGetUserResponse :: Show GetUserResponse where show = genericShow
instance decodeGetUserResponse :: Decode GetUserResponse where decode = genericDecode options
instance encodeGetUserResponse :: Encode GetUserResponse where encode = genericEncode options

-- | Constructs GetUserResponse from required parameters
newGetUserResponse :: AttributeListType -> UsernameType -> GetUserResponse
newGetUserResponse _UserAttributes _Username = GetUserResponse { "UserAttributes": _UserAttributes, "Username": _Username, "MFAOptions": Nothing, "PreferredMfaSetting": Nothing, "UserMFASettingList": Nothing }

-- | Constructs GetUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserResponse' :: AttributeListType -> UsernameType -> ( { "Username" :: (UsernameType) , "UserAttributes" :: (AttributeListType) , "MFAOptions" :: Maybe (MFAOptionListType) , "PreferredMfaSetting" :: Maybe (StringType) , "UserMFASettingList" :: Maybe (UserMFASettingListType) } -> {"Username" :: (UsernameType) , "UserAttributes" :: (AttributeListType) , "MFAOptions" :: Maybe (MFAOptionListType) , "PreferredMfaSetting" :: Maybe (StringType) , "UserMFASettingList" :: Maybe (UserMFASettingListType) } ) -> GetUserResponse
newGetUserResponse' _UserAttributes _Username customize = (GetUserResponse <<< customize) { "UserAttributes": _UserAttributes, "Username": _Username, "MFAOptions": Nothing, "PreferredMfaSetting": Nothing, "UserMFASettingList": Nothing }



-- | <p>Represents the request to sign out all devices.</p>
newtype GlobalSignOutRequest = GlobalSignOutRequest 
  { "AccessToken" :: (TokenModelType)
  }
derive instance newtypeGlobalSignOutRequest :: Newtype GlobalSignOutRequest _
derive instance repGenericGlobalSignOutRequest :: Generic GlobalSignOutRequest _
instance showGlobalSignOutRequest :: Show GlobalSignOutRequest where show = genericShow
instance decodeGlobalSignOutRequest :: Decode GlobalSignOutRequest where decode = genericDecode options
instance encodeGlobalSignOutRequest :: Encode GlobalSignOutRequest where encode = genericEncode options

-- | Constructs GlobalSignOutRequest from required parameters
newGlobalSignOutRequest :: TokenModelType -> GlobalSignOutRequest
newGlobalSignOutRequest _AccessToken = GlobalSignOutRequest { "AccessToken": _AccessToken }

-- | Constructs GlobalSignOutRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGlobalSignOutRequest' :: TokenModelType -> ( { "AccessToken" :: (TokenModelType) } -> {"AccessToken" :: (TokenModelType) } ) -> GlobalSignOutRequest
newGlobalSignOutRequest' _AccessToken customize = (GlobalSignOutRequest <<< customize) { "AccessToken": _AccessToken }



-- | <p>The response to the request to sign out all devices.</p>
newtype GlobalSignOutResponse = GlobalSignOutResponse Types.NoArguments
derive instance newtypeGlobalSignOutResponse :: Newtype GlobalSignOutResponse _
derive instance repGenericGlobalSignOutResponse :: Generic GlobalSignOutResponse _
instance showGlobalSignOutResponse :: Show GlobalSignOutResponse where show = genericShow
instance decodeGlobalSignOutResponse :: Decode GlobalSignOutResponse where decode = genericDecode options
instance encodeGlobalSignOutResponse :: Encode GlobalSignOutResponse where encode = genericEncode options



-- | <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>
newtype GroupExistsException = GroupExistsException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeGroupExistsException :: Newtype GroupExistsException _
derive instance repGenericGroupExistsException :: Generic GroupExistsException _
instance showGroupExistsException :: Show GroupExistsException where show = genericShow
instance decodeGroupExistsException :: Decode GroupExistsException where decode = genericDecode options
instance encodeGroupExistsException :: Encode GroupExistsException where encode = genericEncode options

-- | Constructs GroupExistsException from required parameters
newGroupExistsException :: GroupExistsException
newGroupExistsException  = GroupExistsException { "message": Nothing }

-- | Constructs GroupExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupExistsException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> GroupExistsException
newGroupExistsException'  customize = (GroupExistsException <<< customize) { "message": Nothing }



newtype GroupListType = GroupListType (Array GroupType)
derive instance newtypeGroupListType :: Newtype GroupListType _
derive instance repGenericGroupListType :: Generic GroupListType _
instance showGroupListType :: Show GroupListType where show = genericShow
instance decodeGroupListType :: Decode GroupListType where decode = genericDecode options
instance encodeGroupListType :: Encode GroupListType where encode = genericEncode options



newtype GroupNameType = GroupNameType String
derive instance newtypeGroupNameType :: Newtype GroupNameType _
derive instance repGenericGroupNameType :: Generic GroupNameType _
instance showGroupNameType :: Show GroupNameType where show = genericShow
instance decodeGroupNameType :: Decode GroupNameType where decode = genericDecode options
instance encodeGroupNameType :: Encode GroupNameType where encode = genericEncode options



-- | <p>The group type.</p>
newtype GroupType = GroupType 
  { "GroupName" :: Maybe (GroupNameType)
  , "UserPoolId" :: Maybe (UserPoolIdType)
  , "Description" :: Maybe (DescriptionType)
  , "RoleArn" :: Maybe (ArnType)
  , "Precedence" :: Maybe (PrecedenceType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  }
derive instance newtypeGroupType :: Newtype GroupType _
derive instance repGenericGroupType :: Generic GroupType _
instance showGroupType :: Show GroupType where show = genericShow
instance decodeGroupType :: Decode GroupType where decode = genericDecode options
instance encodeGroupType :: Encode GroupType where encode = genericEncode options

-- | Constructs GroupType from required parameters
newGroupType :: GroupType
newGroupType  = GroupType { "CreationDate": Nothing, "Description": Nothing, "GroupName": Nothing, "LastModifiedDate": Nothing, "Precedence": Nothing, "RoleArn": Nothing, "UserPoolId": Nothing }

-- | Constructs GroupType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupType' :: ( { "GroupName" :: Maybe (GroupNameType) , "UserPoolId" :: Maybe (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } -> {"GroupName" :: Maybe (GroupNameType) , "UserPoolId" :: Maybe (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } ) -> GroupType
newGroupType'  customize = (GroupType <<< customize) { "CreationDate": Nothing, "Description": Nothing, "GroupName": Nothing, "LastModifiedDate": Nothing, "Precedence": Nothing, "RoleArn": Nothing, "UserPoolId": Nothing }



newtype HexStringType = HexStringType String
derive instance newtypeHexStringType :: Newtype HexStringType _
derive instance repGenericHexStringType :: Generic HexStringType _
instance showHexStringType :: Show HexStringType where show = genericShow
instance decodeHexStringType :: Decode HexStringType where decode = genericDecode options
instance encodeHexStringType :: Encode HexStringType where encode = genericEncode options



-- | <p>The HTTP header.</p>
newtype HttpHeader = HttpHeader 
  { "headerName" :: Maybe (StringType)
  , "headerValue" :: Maybe (StringType)
  }
derive instance newtypeHttpHeader :: Newtype HttpHeader _
derive instance repGenericHttpHeader :: Generic HttpHeader _
instance showHttpHeader :: Show HttpHeader where show = genericShow
instance decodeHttpHeader :: Decode HttpHeader where decode = genericDecode options
instance encodeHttpHeader :: Encode HttpHeader where encode = genericEncode options

-- | Constructs HttpHeader from required parameters
newHttpHeader :: HttpHeader
newHttpHeader  = HttpHeader { "headerName": Nothing, "headerValue": Nothing }

-- | Constructs HttpHeader's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHttpHeader' :: ( { "headerName" :: Maybe (StringType) , "headerValue" :: Maybe (StringType) } -> {"headerName" :: Maybe (StringType) , "headerValue" :: Maybe (StringType) } ) -> HttpHeader
newHttpHeader'  customize = (HttpHeader <<< customize) { "headerName": Nothing, "headerValue": Nothing }



newtype HttpHeaderList = HttpHeaderList (Array HttpHeader)
derive instance newtypeHttpHeaderList :: Newtype HttpHeaderList _
derive instance repGenericHttpHeaderList :: Generic HttpHeaderList _
instance showHttpHeaderList :: Show HttpHeaderList where show = genericShow
instance decodeHttpHeaderList :: Decode HttpHeaderList where decode = genericDecode options
instance encodeHttpHeaderList :: Encode HttpHeaderList where encode = genericEncode options



-- | <p>A container for information about an identity provider.</p>
newtype IdentityProviderType = IdentityProviderType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "ProviderName" :: Maybe (ProviderNameType)
  , "ProviderType" :: Maybe (IdentityProviderTypeType)
  , "ProviderDetails" :: Maybe (ProviderDetailsType)
  , "AttributeMapping" :: Maybe (AttributeMappingType)
  , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  }
derive instance newtypeIdentityProviderType :: Newtype IdentityProviderType _
derive instance repGenericIdentityProviderType :: Generic IdentityProviderType _
instance showIdentityProviderType :: Show IdentityProviderType where show = genericShow
instance decodeIdentityProviderType :: Decode IdentityProviderType where decode = genericDecode options
instance encodeIdentityProviderType :: Encode IdentityProviderType where encode = genericEncode options

-- | Constructs IdentityProviderType from required parameters
newIdentityProviderType :: IdentityProviderType
newIdentityProviderType  = IdentityProviderType { "AttributeMapping": Nothing, "CreationDate": Nothing, "IdpIdentifiers": Nothing, "LastModifiedDate": Nothing, "ProviderDetails": Nothing, "ProviderName": Nothing, "ProviderType": Nothing, "UserPoolId": Nothing }

-- | Constructs IdentityProviderType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityProviderType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "ProviderName" :: Maybe (ProviderNameType) , "ProviderType" :: Maybe (IdentityProviderTypeType) , "ProviderDetails" :: Maybe (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "ProviderName" :: Maybe (ProviderNameType) , "ProviderType" :: Maybe (IdentityProviderTypeType) , "ProviderDetails" :: Maybe (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } ) -> IdentityProviderType
newIdentityProviderType'  customize = (IdentityProviderType <<< customize) { "AttributeMapping": Nothing, "CreationDate": Nothing, "IdpIdentifiers": Nothing, "LastModifiedDate": Nothing, "ProviderDetails": Nothing, "ProviderName": Nothing, "ProviderType": Nothing, "UserPoolId": Nothing }



newtype IdentityProviderTypeType = IdentityProviderTypeType String
derive instance newtypeIdentityProviderTypeType :: Newtype IdentityProviderTypeType _
derive instance repGenericIdentityProviderTypeType :: Generic IdentityProviderTypeType _
instance showIdentityProviderTypeType :: Show IdentityProviderTypeType where show = genericShow
instance decodeIdentityProviderTypeType :: Decode IdentityProviderTypeType where decode = genericDecode options
instance encodeIdentityProviderTypeType :: Encode IdentityProviderTypeType where encode = genericEncode options



newtype IdpIdentifierType = IdpIdentifierType String
derive instance newtypeIdpIdentifierType :: Newtype IdpIdentifierType _
derive instance repGenericIdpIdentifierType :: Generic IdpIdentifierType _
instance showIdpIdentifierType :: Show IdpIdentifierType where show = genericShow
instance decodeIdpIdentifierType :: Decode IdpIdentifierType where decode = genericDecode options
instance encodeIdpIdentifierType :: Encode IdpIdentifierType where encode = genericEncode options



newtype IdpIdentifiersListType = IdpIdentifiersListType (Array IdpIdentifierType)
derive instance newtypeIdpIdentifiersListType :: Newtype IdpIdentifiersListType _
derive instance repGenericIdpIdentifiersListType :: Generic IdpIdentifiersListType _
instance showIdpIdentifiersListType :: Show IdpIdentifiersListType where show = genericShow
instance decodeIdpIdentifiersListType :: Decode IdpIdentifiersListType where decode = genericDecode options
instance encodeIdpIdentifiersListType :: Encode IdpIdentifiersListType where encode = genericEncode options



newtype ImageFileType = ImageFileType String
derive instance newtypeImageFileType :: Newtype ImageFileType _
derive instance repGenericImageFileType :: Generic ImageFileType _
instance showImageFileType :: Show ImageFileType where show = genericShow
instance decodeImageFileType :: Decode ImageFileType where decode = genericDecode options
instance encodeImageFileType :: Encode ImageFileType where encode = genericEncode options



newtype ImageUrlType = ImageUrlType String
derive instance newtypeImageUrlType :: Newtype ImageUrlType _
derive instance repGenericImageUrlType :: Generic ImageUrlType _
instance showImageUrlType :: Show ImageUrlType where show = genericShow
instance decodeImageUrlType :: Decode ImageUrlType where decode = genericDecode options
instance encodeImageUrlType :: Encode ImageUrlType where encode = genericEncode options



-- | <p>Initiates the authentication request.</p>
newtype InitiateAuthRequest = InitiateAuthRequest 
  { "AuthFlow" :: (AuthFlowType)
  , "AuthParameters" :: Maybe (AuthParametersType)
  , "ClientMetadata" :: Maybe (ClientMetadataType)
  , "ClientId" :: (ClientIdType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "UserContextData" :: Maybe (UserContextDataType)
  }
derive instance newtypeInitiateAuthRequest :: Newtype InitiateAuthRequest _
derive instance repGenericInitiateAuthRequest :: Generic InitiateAuthRequest _
instance showInitiateAuthRequest :: Show InitiateAuthRequest where show = genericShow
instance decodeInitiateAuthRequest :: Decode InitiateAuthRequest where decode = genericDecode options
instance encodeInitiateAuthRequest :: Encode InitiateAuthRequest where encode = genericEncode options

-- | Constructs InitiateAuthRequest from required parameters
newInitiateAuthRequest :: AuthFlowType -> ClientIdType -> InitiateAuthRequest
newInitiateAuthRequest _AuthFlow _ClientId = InitiateAuthRequest { "AuthFlow": _AuthFlow, "ClientId": _ClientId, "AnalyticsMetadata": Nothing, "AuthParameters": Nothing, "ClientMetadata": Nothing, "UserContextData": Nothing }

-- | Constructs InitiateAuthRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateAuthRequest' :: AuthFlowType -> ClientIdType -> ( { "AuthFlow" :: (AuthFlowType) , "AuthParameters" :: Maybe (AuthParametersType) , "ClientMetadata" :: Maybe (ClientMetadataType) , "ClientId" :: (ClientIdType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } -> {"AuthFlow" :: (AuthFlowType) , "AuthParameters" :: Maybe (AuthParametersType) , "ClientMetadata" :: Maybe (ClientMetadataType) , "ClientId" :: (ClientIdType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } ) -> InitiateAuthRequest
newInitiateAuthRequest' _AuthFlow _ClientId customize = (InitiateAuthRequest <<< customize) { "AuthFlow": _AuthFlow, "ClientId": _ClientId, "AnalyticsMetadata": Nothing, "AuthParameters": Nothing, "ClientMetadata": Nothing, "UserContextData": Nothing }



-- | <p>Initiates the authentication response.</p>
newtype InitiateAuthResponse = InitiateAuthResponse 
  { "ChallengeName" :: Maybe (ChallengeNameType)
  , "Session" :: Maybe (SessionType)
  , "ChallengeParameters" :: Maybe (ChallengeParametersType)
  , "AuthenticationResult" :: Maybe (AuthenticationResultType)
  }
derive instance newtypeInitiateAuthResponse :: Newtype InitiateAuthResponse _
derive instance repGenericInitiateAuthResponse :: Generic InitiateAuthResponse _
instance showInitiateAuthResponse :: Show InitiateAuthResponse where show = genericShow
instance decodeInitiateAuthResponse :: Decode InitiateAuthResponse where decode = genericDecode options
instance encodeInitiateAuthResponse :: Encode InitiateAuthResponse where encode = genericEncode options

-- | Constructs InitiateAuthResponse from required parameters
newInitiateAuthResponse :: InitiateAuthResponse
newInitiateAuthResponse  = InitiateAuthResponse { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }

-- | Constructs InitiateAuthResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateAuthResponse' :: ( { "ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } -> {"ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } ) -> InitiateAuthResponse
newInitiateAuthResponse'  customize = (InitiateAuthResponse <<< customize) { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }



newtype IntegerType = IntegerType Int
derive instance newtypeIntegerType :: Newtype IntegerType _
derive instance repGenericIntegerType :: Generic IntegerType _
instance showIntegerType :: Show IntegerType where show = genericShow
instance decodeIntegerType :: Decode IntegerType where decode = genericDecode options
instance encodeIntegerType :: Encode IntegerType where encode = genericEncode options



-- | <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": Nothing }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>
newtype InvalidEmailRoleAccessPolicyException = InvalidEmailRoleAccessPolicyException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidEmailRoleAccessPolicyException :: Newtype InvalidEmailRoleAccessPolicyException _
derive instance repGenericInvalidEmailRoleAccessPolicyException :: Generic InvalidEmailRoleAccessPolicyException _
instance showInvalidEmailRoleAccessPolicyException :: Show InvalidEmailRoleAccessPolicyException where show = genericShow
instance decodeInvalidEmailRoleAccessPolicyException :: Decode InvalidEmailRoleAccessPolicyException where decode = genericDecode options
instance encodeInvalidEmailRoleAccessPolicyException :: Encode InvalidEmailRoleAccessPolicyException where encode = genericEncode options

-- | Constructs InvalidEmailRoleAccessPolicyException from required parameters
newInvalidEmailRoleAccessPolicyException :: InvalidEmailRoleAccessPolicyException
newInvalidEmailRoleAccessPolicyException  = InvalidEmailRoleAccessPolicyException { "message": Nothing }

-- | Constructs InvalidEmailRoleAccessPolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidEmailRoleAccessPolicyException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidEmailRoleAccessPolicyException
newInvalidEmailRoleAccessPolicyException'  customize = (InvalidEmailRoleAccessPolicyException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>
newtype InvalidLambdaResponseException = InvalidLambdaResponseException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidLambdaResponseException :: Newtype InvalidLambdaResponseException _
derive instance repGenericInvalidLambdaResponseException :: Generic InvalidLambdaResponseException _
instance showInvalidLambdaResponseException :: Show InvalidLambdaResponseException where show = genericShow
instance decodeInvalidLambdaResponseException :: Decode InvalidLambdaResponseException where decode = genericDecode options
instance encodeInvalidLambdaResponseException :: Encode InvalidLambdaResponseException where encode = genericEncode options

-- | Constructs InvalidLambdaResponseException from required parameters
newInvalidLambdaResponseException :: InvalidLambdaResponseException
newInvalidLambdaResponseException  = InvalidLambdaResponseException { "message": Nothing }

-- | Constructs InvalidLambdaResponseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLambdaResponseException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidLambdaResponseException
newInvalidLambdaResponseException'  customize = (InvalidLambdaResponseException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the specified OAuth flow is invalid.</p>
newtype InvalidOAuthFlowException = InvalidOAuthFlowException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidOAuthFlowException :: Newtype InvalidOAuthFlowException _
derive instance repGenericInvalidOAuthFlowException :: Generic InvalidOAuthFlowException _
instance showInvalidOAuthFlowException :: Show InvalidOAuthFlowException where show = genericShow
instance decodeInvalidOAuthFlowException :: Decode InvalidOAuthFlowException where decode = genericDecode options
instance encodeInvalidOAuthFlowException :: Encode InvalidOAuthFlowException where encode = genericEncode options

-- | Constructs InvalidOAuthFlowException from required parameters
newInvalidOAuthFlowException :: InvalidOAuthFlowException
newInvalidOAuthFlowException  = InvalidOAuthFlowException { "message": Nothing }

-- | Constructs InvalidOAuthFlowException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOAuthFlowException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidOAuthFlowException
newInvalidOAuthFlowException'  customize = (InvalidOAuthFlowException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>
newtype InvalidPasswordException = InvalidPasswordException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidPasswordException :: Newtype InvalidPasswordException _
derive instance repGenericInvalidPasswordException :: Generic InvalidPasswordException _
instance showInvalidPasswordException :: Show InvalidPasswordException where show = genericShow
instance decodeInvalidPasswordException :: Decode InvalidPasswordException where decode = genericDecode options
instance encodeInvalidPasswordException :: Encode InvalidPasswordException where encode = genericEncode options

-- | Constructs InvalidPasswordException from required parameters
newInvalidPasswordException :: InvalidPasswordException
newInvalidPasswordException  = InvalidPasswordException { "message": Nothing }

-- | Constructs InvalidPasswordException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidPasswordException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidPasswordException
newInvalidPasswordException'  customize = (InvalidPasswordException <<< customize) { "message": Nothing }



-- | <p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>
newtype InvalidSmsRoleAccessPolicyException = InvalidSmsRoleAccessPolicyException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidSmsRoleAccessPolicyException :: Newtype InvalidSmsRoleAccessPolicyException _
derive instance repGenericInvalidSmsRoleAccessPolicyException :: Generic InvalidSmsRoleAccessPolicyException _
instance showInvalidSmsRoleAccessPolicyException :: Show InvalidSmsRoleAccessPolicyException where show = genericShow
instance decodeInvalidSmsRoleAccessPolicyException :: Decode InvalidSmsRoleAccessPolicyException where decode = genericDecode options
instance encodeInvalidSmsRoleAccessPolicyException :: Encode InvalidSmsRoleAccessPolicyException where encode = genericEncode options

-- | Constructs InvalidSmsRoleAccessPolicyException from required parameters
newInvalidSmsRoleAccessPolicyException :: InvalidSmsRoleAccessPolicyException
newInvalidSmsRoleAccessPolicyException  = InvalidSmsRoleAccessPolicyException { "message": Nothing }

-- | Constructs InvalidSmsRoleAccessPolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidSmsRoleAccessPolicyException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidSmsRoleAccessPolicyException
newInvalidSmsRoleAccessPolicyException'  customize = (InvalidSmsRoleAccessPolicyException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>
newtype InvalidSmsRoleTrustRelationshipException = InvalidSmsRoleTrustRelationshipException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidSmsRoleTrustRelationshipException :: Newtype InvalidSmsRoleTrustRelationshipException _
derive instance repGenericInvalidSmsRoleTrustRelationshipException :: Generic InvalidSmsRoleTrustRelationshipException _
instance showInvalidSmsRoleTrustRelationshipException :: Show InvalidSmsRoleTrustRelationshipException where show = genericShow
instance decodeInvalidSmsRoleTrustRelationshipException :: Decode InvalidSmsRoleTrustRelationshipException where decode = genericDecode options
instance encodeInvalidSmsRoleTrustRelationshipException :: Encode InvalidSmsRoleTrustRelationshipException where encode = genericEncode options

-- | Constructs InvalidSmsRoleTrustRelationshipException from required parameters
newInvalidSmsRoleTrustRelationshipException :: InvalidSmsRoleTrustRelationshipException
newInvalidSmsRoleTrustRelationshipException  = InvalidSmsRoleTrustRelationshipException { "message": Nothing }

-- | Constructs InvalidSmsRoleTrustRelationshipException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidSmsRoleTrustRelationshipException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidSmsRoleTrustRelationshipException
newInvalidSmsRoleTrustRelationshipException'  customize = (InvalidSmsRoleTrustRelationshipException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the user pool configuration is invalid.</p>
newtype InvalidUserPoolConfigurationException = InvalidUserPoolConfigurationException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeInvalidUserPoolConfigurationException :: Newtype InvalidUserPoolConfigurationException _
derive instance repGenericInvalidUserPoolConfigurationException :: Generic InvalidUserPoolConfigurationException _
instance showInvalidUserPoolConfigurationException :: Show InvalidUserPoolConfigurationException where show = genericShow
instance decodeInvalidUserPoolConfigurationException :: Decode InvalidUserPoolConfigurationException where decode = genericDecode options
instance encodeInvalidUserPoolConfigurationException :: Encode InvalidUserPoolConfigurationException where encode = genericEncode options

-- | Constructs InvalidUserPoolConfigurationException from required parameters
newInvalidUserPoolConfigurationException :: InvalidUserPoolConfigurationException
newInvalidUserPoolConfigurationException  = InvalidUserPoolConfigurationException { "message": Nothing }

-- | Constructs InvalidUserPoolConfigurationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidUserPoolConfigurationException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> InvalidUserPoolConfigurationException
newInvalidUserPoolConfigurationException'  customize = (InvalidUserPoolConfigurationException <<< customize) { "message": Nothing }



-- | <p>Specifies the configuration for AWS Lambda triggers.</p>
newtype LambdaConfigType = LambdaConfigType 
  { "PreSignUp" :: Maybe (ArnType)
  , "CustomMessage" :: Maybe (ArnType)
  , "PostConfirmation" :: Maybe (ArnType)
  , "PreAuthentication" :: Maybe (ArnType)
  , "PostAuthentication" :: Maybe (ArnType)
  , "DefineAuthChallenge" :: Maybe (ArnType)
  , "CreateAuthChallenge" :: Maybe (ArnType)
  , "VerifyAuthChallengeResponse" :: Maybe (ArnType)
  , "PreTokenGeneration" :: Maybe (ArnType)
  , "UserMigration" :: Maybe (ArnType)
  }
derive instance newtypeLambdaConfigType :: Newtype LambdaConfigType _
derive instance repGenericLambdaConfigType :: Generic LambdaConfigType _
instance showLambdaConfigType :: Show LambdaConfigType where show = genericShow
instance decodeLambdaConfigType :: Decode LambdaConfigType where decode = genericDecode options
instance encodeLambdaConfigType :: Encode LambdaConfigType where encode = genericEncode options

-- | Constructs LambdaConfigType from required parameters
newLambdaConfigType :: LambdaConfigType
newLambdaConfigType  = LambdaConfigType { "CreateAuthChallenge": Nothing, "CustomMessage": Nothing, "DefineAuthChallenge": Nothing, "PostAuthentication": Nothing, "PostConfirmation": Nothing, "PreAuthentication": Nothing, "PreSignUp": Nothing, "PreTokenGeneration": Nothing, "UserMigration": Nothing, "VerifyAuthChallengeResponse": Nothing }

-- | Constructs LambdaConfigType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaConfigType' :: ( { "PreSignUp" :: Maybe (ArnType) , "CustomMessage" :: Maybe (ArnType) , "PostConfirmation" :: Maybe (ArnType) , "PreAuthentication" :: Maybe (ArnType) , "PostAuthentication" :: Maybe (ArnType) , "DefineAuthChallenge" :: Maybe (ArnType) , "CreateAuthChallenge" :: Maybe (ArnType) , "VerifyAuthChallengeResponse" :: Maybe (ArnType) , "PreTokenGeneration" :: Maybe (ArnType) , "UserMigration" :: Maybe (ArnType) } -> {"PreSignUp" :: Maybe (ArnType) , "CustomMessage" :: Maybe (ArnType) , "PostConfirmation" :: Maybe (ArnType) , "PreAuthentication" :: Maybe (ArnType) , "PostAuthentication" :: Maybe (ArnType) , "DefineAuthChallenge" :: Maybe (ArnType) , "CreateAuthChallenge" :: Maybe (ArnType) , "VerifyAuthChallengeResponse" :: Maybe (ArnType) , "PreTokenGeneration" :: Maybe (ArnType) , "UserMigration" :: Maybe (ArnType) } ) -> LambdaConfigType
newLambdaConfigType'  customize = (LambdaConfigType <<< customize) { "CreateAuthChallenge": Nothing, "CustomMessage": Nothing, "DefineAuthChallenge": Nothing, "PostAuthentication": Nothing, "PostConfirmation": Nothing, "PreAuthentication": Nothing, "PreSignUp": Nothing, "PreTokenGeneration": Nothing, "UserMigration": Nothing, "VerifyAuthChallengeResponse": Nothing }



-- | <p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



-- | <p>Represents the request to list the devices.</p>
newtype ListDevicesRequest = ListDevicesRequest 
  { "AccessToken" :: (TokenModelType)
  , "Limit" :: Maybe (QueryLimitType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  }
derive instance newtypeListDevicesRequest :: Newtype ListDevicesRequest _
derive instance repGenericListDevicesRequest :: Generic ListDevicesRequest _
instance showListDevicesRequest :: Show ListDevicesRequest where show = genericShow
instance decodeListDevicesRequest :: Decode ListDevicesRequest where decode = genericDecode options
instance encodeListDevicesRequest :: Encode ListDevicesRequest where encode = genericEncode options

-- | Constructs ListDevicesRequest from required parameters
newListDevicesRequest :: TokenModelType -> ListDevicesRequest
newListDevicesRequest _AccessToken = ListDevicesRequest { "AccessToken": _AccessToken, "Limit": Nothing, "PaginationToken": Nothing }

-- | Constructs ListDevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDevicesRequest' :: TokenModelType -> ( { "AccessToken" :: (TokenModelType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } -> {"AccessToken" :: (TokenModelType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } ) -> ListDevicesRequest
newListDevicesRequest' _AccessToken customize = (ListDevicesRequest <<< customize) { "AccessToken": _AccessToken, "Limit": Nothing, "PaginationToken": Nothing }



-- | <p>Represents the response to list devices.</p>
newtype ListDevicesResponse = ListDevicesResponse 
  { "Devices" :: Maybe (DeviceListType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  }
derive instance newtypeListDevicesResponse :: Newtype ListDevicesResponse _
derive instance repGenericListDevicesResponse :: Generic ListDevicesResponse _
instance showListDevicesResponse :: Show ListDevicesResponse where show = genericShow
instance decodeListDevicesResponse :: Decode ListDevicesResponse where decode = genericDecode options
instance encodeListDevicesResponse :: Encode ListDevicesResponse where encode = genericEncode options

-- | Constructs ListDevicesResponse from required parameters
newListDevicesResponse :: ListDevicesResponse
newListDevicesResponse  = ListDevicesResponse { "Devices": Nothing, "PaginationToken": Nothing }

-- | Constructs ListDevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDevicesResponse' :: ( { "Devices" :: Maybe (DeviceListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } -> {"Devices" :: Maybe (DeviceListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } ) -> ListDevicesResponse
newListDevicesResponse'  customize = (ListDevicesResponse <<< customize) { "Devices": Nothing, "PaginationToken": Nothing }



newtype ListGroupsRequest = ListGroupsRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Limit" :: Maybe (QueryLimitType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListGroupsRequest :: Newtype ListGroupsRequest _
derive instance repGenericListGroupsRequest :: Generic ListGroupsRequest _
instance showListGroupsRequest :: Show ListGroupsRequest where show = genericShow
instance decodeListGroupsRequest :: Decode ListGroupsRequest where decode = genericDecode options
instance encodeListGroupsRequest :: Encode ListGroupsRequest where encode = genericEncode options

-- | Constructs ListGroupsRequest from required parameters
newListGroupsRequest :: UserPoolIdType -> ListGroupsRequest
newListGroupsRequest _UserPoolId = ListGroupsRequest { "UserPoolId": _UserPoolId, "Limit": Nothing, "NextToken": Nothing }

-- | Constructs ListGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } -> {"UserPoolId" :: (UserPoolIdType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } ) -> ListGroupsRequest
newListGroupsRequest' _UserPoolId customize = (ListGroupsRequest <<< customize) { "UserPoolId": _UserPoolId, "Limit": Nothing, "NextToken": Nothing }



newtype ListGroupsResponse = ListGroupsResponse 
  { "Groups" :: Maybe (GroupListType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListGroupsResponse :: Newtype ListGroupsResponse _
derive instance repGenericListGroupsResponse :: Generic ListGroupsResponse _
instance showListGroupsResponse :: Show ListGroupsResponse where show = genericShow
instance decodeListGroupsResponse :: Decode ListGroupsResponse where decode = genericDecode options
instance encodeListGroupsResponse :: Encode ListGroupsResponse where encode = genericEncode options

-- | Constructs ListGroupsResponse from required parameters
newListGroupsResponse :: ListGroupsResponse
newListGroupsResponse  = ListGroupsResponse { "Groups": Nothing, "NextToken": Nothing }

-- | Constructs ListGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsResponse' :: ( { "Groups" :: Maybe (GroupListType) , "NextToken" :: Maybe (PaginationKey) } -> {"Groups" :: Maybe (GroupListType) , "NextToken" :: Maybe (PaginationKey) } ) -> ListGroupsResponse
newListGroupsResponse'  customize = (ListGroupsResponse <<< customize) { "Groups": Nothing, "NextToken": Nothing }



newtype ListIdentityProvidersRequest = ListIdentityProvidersRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "MaxResults" :: Maybe (ListProvidersLimitType)
  , "NextToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListIdentityProvidersRequest :: Newtype ListIdentityProvidersRequest _
derive instance repGenericListIdentityProvidersRequest :: Generic ListIdentityProvidersRequest _
instance showListIdentityProvidersRequest :: Show ListIdentityProvidersRequest where show = genericShow
instance decodeListIdentityProvidersRequest :: Decode ListIdentityProvidersRequest where decode = genericDecode options
instance encodeListIdentityProvidersRequest :: Encode ListIdentityProvidersRequest where encode = genericEncode options

-- | Constructs ListIdentityProvidersRequest from required parameters
newListIdentityProvidersRequest :: UserPoolIdType -> ListIdentityProvidersRequest
newListIdentityProvidersRequest _UserPoolId = ListIdentityProvidersRequest { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentityProvidersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityProvidersRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (ListProvidersLimitType) , "NextToken" :: Maybe (PaginationKeyType) } -> {"UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (ListProvidersLimitType) , "NextToken" :: Maybe (PaginationKeyType) } ) -> ListIdentityProvidersRequest
newListIdentityProvidersRequest' _UserPoolId customize = (ListIdentityProvidersRequest <<< customize) { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListIdentityProvidersResponse = ListIdentityProvidersResponse 
  { "Providers" :: (ProvidersListType)
  , "NextToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListIdentityProvidersResponse :: Newtype ListIdentityProvidersResponse _
derive instance repGenericListIdentityProvidersResponse :: Generic ListIdentityProvidersResponse _
instance showListIdentityProvidersResponse :: Show ListIdentityProvidersResponse where show = genericShow
instance decodeListIdentityProvidersResponse :: Decode ListIdentityProvidersResponse where decode = genericDecode options
instance encodeListIdentityProvidersResponse :: Encode ListIdentityProvidersResponse where encode = genericEncode options

-- | Constructs ListIdentityProvidersResponse from required parameters
newListIdentityProvidersResponse :: ProvidersListType -> ListIdentityProvidersResponse
newListIdentityProvidersResponse _Providers = ListIdentityProvidersResponse { "Providers": _Providers, "NextToken": Nothing }

-- | Constructs ListIdentityProvidersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityProvidersResponse' :: ProvidersListType -> ( { "Providers" :: (ProvidersListType) , "NextToken" :: Maybe (PaginationKeyType) } -> {"Providers" :: (ProvidersListType) , "NextToken" :: Maybe (PaginationKeyType) } ) -> ListIdentityProvidersResponse
newListIdentityProvidersResponse' _Providers customize = (ListIdentityProvidersResponse <<< customize) { "Providers": _Providers, "NextToken": Nothing }



newtype ListOfStringTypes = ListOfStringTypes (Array StringType)
derive instance newtypeListOfStringTypes :: Newtype ListOfStringTypes _
derive instance repGenericListOfStringTypes :: Generic ListOfStringTypes _
instance showListOfStringTypes :: Show ListOfStringTypes where show = genericShow
instance decodeListOfStringTypes :: Decode ListOfStringTypes where decode = genericDecode options
instance encodeListOfStringTypes :: Encode ListOfStringTypes where encode = genericEncode options



newtype ListProvidersLimitType = ListProvidersLimitType Int
derive instance newtypeListProvidersLimitType :: Newtype ListProvidersLimitType _
derive instance repGenericListProvidersLimitType :: Generic ListProvidersLimitType _
instance showListProvidersLimitType :: Show ListProvidersLimitType where show = genericShow
instance decodeListProvidersLimitType :: Decode ListProvidersLimitType where decode = genericDecode options
instance encodeListProvidersLimitType :: Encode ListProvidersLimitType where encode = genericEncode options



newtype ListResourceServersLimitType = ListResourceServersLimitType Int
derive instance newtypeListResourceServersLimitType :: Newtype ListResourceServersLimitType _
derive instance repGenericListResourceServersLimitType :: Generic ListResourceServersLimitType _
instance showListResourceServersLimitType :: Show ListResourceServersLimitType where show = genericShow
instance decodeListResourceServersLimitType :: Decode ListResourceServersLimitType where decode = genericDecode options
instance encodeListResourceServersLimitType :: Encode ListResourceServersLimitType where encode = genericEncode options



newtype ListResourceServersRequest = ListResourceServersRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "MaxResults" :: Maybe (ListResourceServersLimitType)
  , "NextToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListResourceServersRequest :: Newtype ListResourceServersRequest _
derive instance repGenericListResourceServersRequest :: Generic ListResourceServersRequest _
instance showListResourceServersRequest :: Show ListResourceServersRequest where show = genericShow
instance decodeListResourceServersRequest :: Decode ListResourceServersRequest where decode = genericDecode options
instance encodeListResourceServersRequest :: Encode ListResourceServersRequest where encode = genericEncode options

-- | Constructs ListResourceServersRequest from required parameters
newListResourceServersRequest :: UserPoolIdType -> ListResourceServersRequest
newListResourceServersRequest _UserPoolId = ListResourceServersRequest { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListResourceServersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceServersRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (ListResourceServersLimitType) , "NextToken" :: Maybe (PaginationKeyType) } -> {"UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (ListResourceServersLimitType) , "NextToken" :: Maybe (PaginationKeyType) } ) -> ListResourceServersRequest
newListResourceServersRequest' _UserPoolId customize = (ListResourceServersRequest <<< customize) { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListResourceServersResponse = ListResourceServersResponse 
  { "ResourceServers" :: (ResourceServersListType)
  , "NextToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListResourceServersResponse :: Newtype ListResourceServersResponse _
derive instance repGenericListResourceServersResponse :: Generic ListResourceServersResponse _
instance showListResourceServersResponse :: Show ListResourceServersResponse where show = genericShow
instance decodeListResourceServersResponse :: Decode ListResourceServersResponse where decode = genericDecode options
instance encodeListResourceServersResponse :: Encode ListResourceServersResponse where encode = genericEncode options

-- | Constructs ListResourceServersResponse from required parameters
newListResourceServersResponse :: ResourceServersListType -> ListResourceServersResponse
newListResourceServersResponse _ResourceServers = ListResourceServersResponse { "ResourceServers": _ResourceServers, "NextToken": Nothing }

-- | Constructs ListResourceServersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceServersResponse' :: ResourceServersListType -> ( { "ResourceServers" :: (ResourceServersListType) , "NextToken" :: Maybe (PaginationKeyType) } -> {"ResourceServers" :: (ResourceServersListType) , "NextToken" :: Maybe (PaginationKeyType) } ) -> ListResourceServersResponse
newListResourceServersResponse' _ResourceServers customize = (ListResourceServersResponse <<< customize) { "ResourceServers": _ResourceServers, "NextToken": Nothing }



-- | <p>Represents the request to list the user import jobs.</p>
newtype ListUserImportJobsRequest = ListUserImportJobsRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "MaxResults" :: (PoolQueryLimitType)
  , "PaginationToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListUserImportJobsRequest :: Newtype ListUserImportJobsRequest _
derive instance repGenericListUserImportJobsRequest :: Generic ListUserImportJobsRequest _
instance showListUserImportJobsRequest :: Show ListUserImportJobsRequest where show = genericShow
instance decodeListUserImportJobsRequest :: Decode ListUserImportJobsRequest where decode = genericDecode options
instance encodeListUserImportJobsRequest :: Encode ListUserImportJobsRequest where encode = genericEncode options

-- | Constructs ListUserImportJobsRequest from required parameters
newListUserImportJobsRequest :: PoolQueryLimitType -> UserPoolIdType -> ListUserImportJobsRequest
newListUserImportJobsRequest _MaxResults _UserPoolId = ListUserImportJobsRequest { "MaxResults": _MaxResults, "UserPoolId": _UserPoolId, "PaginationToken": Nothing }

-- | Constructs ListUserImportJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserImportJobsRequest' :: PoolQueryLimitType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "MaxResults" :: (PoolQueryLimitType) , "PaginationToken" :: Maybe (PaginationKeyType) } -> {"UserPoolId" :: (UserPoolIdType) , "MaxResults" :: (PoolQueryLimitType) , "PaginationToken" :: Maybe (PaginationKeyType) } ) -> ListUserImportJobsRequest
newListUserImportJobsRequest' _MaxResults _UserPoolId customize = (ListUserImportJobsRequest <<< customize) { "MaxResults": _MaxResults, "UserPoolId": _UserPoolId, "PaginationToken": Nothing }



-- | <p>Represents the response from the server to the request to list the user import jobs.</p>
newtype ListUserImportJobsResponse = ListUserImportJobsResponse 
  { "UserImportJobs" :: Maybe (UserImportJobsListType)
  , "PaginationToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListUserImportJobsResponse :: Newtype ListUserImportJobsResponse _
derive instance repGenericListUserImportJobsResponse :: Generic ListUserImportJobsResponse _
instance showListUserImportJobsResponse :: Show ListUserImportJobsResponse where show = genericShow
instance decodeListUserImportJobsResponse :: Decode ListUserImportJobsResponse where decode = genericDecode options
instance encodeListUserImportJobsResponse :: Encode ListUserImportJobsResponse where encode = genericEncode options

-- | Constructs ListUserImportJobsResponse from required parameters
newListUserImportJobsResponse :: ListUserImportJobsResponse
newListUserImportJobsResponse  = ListUserImportJobsResponse { "PaginationToken": Nothing, "UserImportJobs": Nothing }

-- | Constructs ListUserImportJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserImportJobsResponse' :: ( { "UserImportJobs" :: Maybe (UserImportJobsListType) , "PaginationToken" :: Maybe (PaginationKeyType) } -> {"UserImportJobs" :: Maybe (UserImportJobsListType) , "PaginationToken" :: Maybe (PaginationKeyType) } ) -> ListUserImportJobsResponse
newListUserImportJobsResponse'  customize = (ListUserImportJobsResponse <<< customize) { "PaginationToken": Nothing, "UserImportJobs": Nothing }



-- | <p>Represents the request to list the user pool clients.</p>
newtype ListUserPoolClientsRequest = ListUserPoolClientsRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "MaxResults" :: Maybe (QueryLimit)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListUserPoolClientsRequest :: Newtype ListUserPoolClientsRequest _
derive instance repGenericListUserPoolClientsRequest :: Generic ListUserPoolClientsRequest _
instance showListUserPoolClientsRequest :: Show ListUserPoolClientsRequest where show = genericShow
instance decodeListUserPoolClientsRequest :: Decode ListUserPoolClientsRequest where decode = genericDecode options
instance encodeListUserPoolClientsRequest :: Encode ListUserPoolClientsRequest where encode = genericEncode options

-- | Constructs ListUserPoolClientsRequest from required parameters
newListUserPoolClientsRequest :: UserPoolIdType -> ListUserPoolClientsRequest
newListUserPoolClientsRequest _UserPoolId = ListUserPoolClientsRequest { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListUserPoolClientsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoolClientsRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } -> {"UserPoolId" :: (UserPoolIdType) , "MaxResults" :: Maybe (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } ) -> ListUserPoolClientsRequest
newListUserPoolClientsRequest' _UserPoolId customize = (ListUserPoolClientsRequest <<< customize) { "UserPoolId": _UserPoolId, "MaxResults": Nothing, "NextToken": Nothing }



-- | <p>Represents the response from the server that lists user pool clients.</p>
newtype ListUserPoolClientsResponse = ListUserPoolClientsResponse 
  { "UserPoolClients" :: Maybe (UserPoolClientListType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListUserPoolClientsResponse :: Newtype ListUserPoolClientsResponse _
derive instance repGenericListUserPoolClientsResponse :: Generic ListUserPoolClientsResponse _
instance showListUserPoolClientsResponse :: Show ListUserPoolClientsResponse where show = genericShow
instance decodeListUserPoolClientsResponse :: Decode ListUserPoolClientsResponse where decode = genericDecode options
instance encodeListUserPoolClientsResponse :: Encode ListUserPoolClientsResponse where encode = genericEncode options

-- | Constructs ListUserPoolClientsResponse from required parameters
newListUserPoolClientsResponse :: ListUserPoolClientsResponse
newListUserPoolClientsResponse  = ListUserPoolClientsResponse { "NextToken": Nothing, "UserPoolClients": Nothing }

-- | Constructs ListUserPoolClientsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoolClientsResponse' :: ( { "UserPoolClients" :: Maybe (UserPoolClientListType) , "NextToken" :: Maybe (PaginationKey) } -> {"UserPoolClients" :: Maybe (UserPoolClientListType) , "NextToken" :: Maybe (PaginationKey) } ) -> ListUserPoolClientsResponse
newListUserPoolClientsResponse'  customize = (ListUserPoolClientsResponse <<< customize) { "NextToken": Nothing, "UserPoolClients": Nothing }



-- | <p>Represents the request to list user pools.</p>
newtype ListUserPoolsRequest = ListUserPoolsRequest 
  { "NextToken" :: Maybe (PaginationKeyType)
  , "MaxResults" :: (PoolQueryLimitType)
  }
derive instance newtypeListUserPoolsRequest :: Newtype ListUserPoolsRequest _
derive instance repGenericListUserPoolsRequest :: Generic ListUserPoolsRequest _
instance showListUserPoolsRequest :: Show ListUserPoolsRequest where show = genericShow
instance decodeListUserPoolsRequest :: Decode ListUserPoolsRequest where decode = genericDecode options
instance encodeListUserPoolsRequest :: Encode ListUserPoolsRequest where encode = genericEncode options

-- | Constructs ListUserPoolsRequest from required parameters
newListUserPoolsRequest :: PoolQueryLimitType -> ListUserPoolsRequest
newListUserPoolsRequest _MaxResults = ListUserPoolsRequest { "MaxResults": _MaxResults, "NextToken": Nothing }

-- | Constructs ListUserPoolsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoolsRequest' :: PoolQueryLimitType -> ( { "NextToken" :: Maybe (PaginationKeyType) , "MaxResults" :: (PoolQueryLimitType) } -> {"NextToken" :: Maybe (PaginationKeyType) , "MaxResults" :: (PoolQueryLimitType) } ) -> ListUserPoolsRequest
newListUserPoolsRequest' _MaxResults customize = (ListUserPoolsRequest <<< customize) { "MaxResults": _MaxResults, "NextToken": Nothing }



-- | <p>Represents the response to list user pools.</p>
newtype ListUserPoolsResponse = ListUserPoolsResponse 
  { "UserPools" :: Maybe (UserPoolListType)
  , "NextToken" :: Maybe (PaginationKeyType)
  }
derive instance newtypeListUserPoolsResponse :: Newtype ListUserPoolsResponse _
derive instance repGenericListUserPoolsResponse :: Generic ListUserPoolsResponse _
instance showListUserPoolsResponse :: Show ListUserPoolsResponse where show = genericShow
instance decodeListUserPoolsResponse :: Decode ListUserPoolsResponse where decode = genericDecode options
instance encodeListUserPoolsResponse :: Encode ListUserPoolsResponse where encode = genericEncode options

-- | Constructs ListUserPoolsResponse from required parameters
newListUserPoolsResponse :: ListUserPoolsResponse
newListUserPoolsResponse  = ListUserPoolsResponse { "NextToken": Nothing, "UserPools": Nothing }

-- | Constructs ListUserPoolsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoolsResponse' :: ( { "UserPools" :: Maybe (UserPoolListType) , "NextToken" :: Maybe (PaginationKeyType) } -> {"UserPools" :: Maybe (UserPoolListType) , "NextToken" :: Maybe (PaginationKeyType) } ) -> ListUserPoolsResponse
newListUserPoolsResponse'  customize = (ListUserPoolsResponse <<< customize) { "NextToken": Nothing, "UserPools": Nothing }



newtype ListUsersInGroupRequest = ListUsersInGroupRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "GroupName" :: (GroupNameType)
  , "Limit" :: Maybe (QueryLimitType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListUsersInGroupRequest :: Newtype ListUsersInGroupRequest _
derive instance repGenericListUsersInGroupRequest :: Generic ListUsersInGroupRequest _
instance showListUsersInGroupRequest :: Show ListUsersInGroupRequest where show = genericShow
instance decodeListUsersInGroupRequest :: Decode ListUsersInGroupRequest where decode = genericDecode options
instance encodeListUsersInGroupRequest :: Encode ListUsersInGroupRequest where encode = genericEncode options

-- | Constructs ListUsersInGroupRequest from required parameters
newListUsersInGroupRequest :: GroupNameType -> UserPoolIdType -> ListUsersInGroupRequest
newListUsersInGroupRequest _GroupName _UserPoolId = ListUsersInGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Limit": Nothing, "NextToken": Nothing }

-- | Constructs ListUsersInGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersInGroupRequest' :: GroupNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "GroupName" :: (GroupNameType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } -> {"UserPoolId" :: (UserPoolIdType) , "GroupName" :: (GroupNameType) , "Limit" :: Maybe (QueryLimitType) , "NextToken" :: Maybe (PaginationKey) } ) -> ListUsersInGroupRequest
newListUsersInGroupRequest' _GroupName _UserPoolId customize = (ListUsersInGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Limit": Nothing, "NextToken": Nothing }



newtype ListUsersInGroupResponse = ListUsersInGroupResponse 
  { "Users" :: Maybe (UsersListType)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListUsersInGroupResponse :: Newtype ListUsersInGroupResponse _
derive instance repGenericListUsersInGroupResponse :: Generic ListUsersInGroupResponse _
instance showListUsersInGroupResponse :: Show ListUsersInGroupResponse where show = genericShow
instance decodeListUsersInGroupResponse :: Decode ListUsersInGroupResponse where decode = genericDecode options
instance encodeListUsersInGroupResponse :: Encode ListUsersInGroupResponse where encode = genericEncode options

-- | Constructs ListUsersInGroupResponse from required parameters
newListUsersInGroupResponse :: ListUsersInGroupResponse
newListUsersInGroupResponse  = ListUsersInGroupResponse { "NextToken": Nothing, "Users": Nothing }

-- | Constructs ListUsersInGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersInGroupResponse' :: ( { "Users" :: Maybe (UsersListType) , "NextToken" :: Maybe (PaginationKey) } -> {"Users" :: Maybe (UsersListType) , "NextToken" :: Maybe (PaginationKey) } ) -> ListUsersInGroupResponse
newListUsersInGroupResponse'  customize = (ListUsersInGroupResponse <<< customize) { "NextToken": Nothing, "Users": Nothing }



-- | <p>Represents the request to list users.</p>
newtype ListUsersRequest = ListUsersRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "AttributesToGet" :: Maybe (SearchedAttributeNamesListType)
  , "Limit" :: Maybe (QueryLimitType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  , "Filter" :: Maybe (UserFilterType)
  }
derive instance newtypeListUsersRequest :: Newtype ListUsersRequest _
derive instance repGenericListUsersRequest :: Generic ListUsersRequest _
instance showListUsersRequest :: Show ListUsersRequest where show = genericShow
instance decodeListUsersRequest :: Decode ListUsersRequest where decode = genericDecode options
instance encodeListUsersRequest :: Encode ListUsersRequest where encode = genericEncode options

-- | Constructs ListUsersRequest from required parameters
newListUsersRequest :: UserPoolIdType -> ListUsersRequest
newListUsersRequest _UserPoolId = ListUsersRequest { "UserPoolId": _UserPoolId, "AttributesToGet": Nothing, "Filter": Nothing, "Limit": Nothing, "PaginationToken": Nothing }

-- | Constructs ListUsersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "AttributesToGet" :: Maybe (SearchedAttributeNamesListType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) , "Filter" :: Maybe (UserFilterType) } -> {"UserPoolId" :: (UserPoolIdType) , "AttributesToGet" :: Maybe (SearchedAttributeNamesListType) , "Limit" :: Maybe (QueryLimitType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) , "Filter" :: Maybe (UserFilterType) } ) -> ListUsersRequest
newListUsersRequest' _UserPoolId customize = (ListUsersRequest <<< customize) { "UserPoolId": _UserPoolId, "AttributesToGet": Nothing, "Filter": Nothing, "Limit": Nothing, "PaginationToken": Nothing }



-- | <p>The response from the request to list users.</p>
newtype ListUsersResponse = ListUsersResponse 
  { "Users" :: Maybe (UsersListType)
  , "PaginationToken" :: Maybe (SearchPaginationTokenType)
  }
derive instance newtypeListUsersResponse :: Newtype ListUsersResponse _
derive instance repGenericListUsersResponse :: Generic ListUsersResponse _
instance showListUsersResponse :: Show ListUsersResponse where show = genericShow
instance decodeListUsersResponse :: Decode ListUsersResponse where decode = genericDecode options
instance encodeListUsersResponse :: Encode ListUsersResponse where encode = genericEncode options

-- | Constructs ListUsersResponse from required parameters
newListUsersResponse :: ListUsersResponse
newListUsersResponse  = ListUsersResponse { "PaginationToken": Nothing, "Users": Nothing }

-- | Constructs ListUsersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersResponse' :: ( { "Users" :: Maybe (UsersListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } -> {"Users" :: Maybe (UsersListType) , "PaginationToken" :: Maybe (SearchPaginationTokenType) } ) -> ListUsersResponse
newListUsersResponse'  customize = (ListUsersResponse <<< customize) { "PaginationToken": Nothing, "Users": Nothing }



newtype LogoutURLsListType = LogoutURLsListType (Array RedirectUrlType)
derive instance newtypeLogoutURLsListType :: Newtype LogoutURLsListType _
derive instance repGenericLogoutURLsListType :: Generic LogoutURLsListType _
instance showLogoutURLsListType :: Show LogoutURLsListType where show = genericShow
instance decodeLogoutURLsListType :: Decode LogoutURLsListType where decode = genericDecode options
instance encodeLogoutURLsListType :: Encode LogoutURLsListType where encode = genericEncode options



newtype LongType = LongType Number
derive instance newtypeLongType :: Newtype LongType _
derive instance repGenericLongType :: Generic LongType _
instance showLongType :: Show LongType where show = genericShow
instance decodeLongType :: Decode LongType where decode = genericDecode options
instance encodeLongType :: Encode LongType where encode = genericEncode options



-- | <p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>
newtype MFAMethodNotFoundException = MFAMethodNotFoundException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeMFAMethodNotFoundException :: Newtype MFAMethodNotFoundException _
derive instance repGenericMFAMethodNotFoundException :: Generic MFAMethodNotFoundException _
instance showMFAMethodNotFoundException :: Show MFAMethodNotFoundException where show = genericShow
instance decodeMFAMethodNotFoundException :: Decode MFAMethodNotFoundException where decode = genericDecode options
instance encodeMFAMethodNotFoundException :: Encode MFAMethodNotFoundException where encode = genericEncode options

-- | Constructs MFAMethodNotFoundException from required parameters
newMFAMethodNotFoundException :: MFAMethodNotFoundException
newMFAMethodNotFoundException  = MFAMethodNotFoundException { "message": Nothing }

-- | Constructs MFAMethodNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMFAMethodNotFoundException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> MFAMethodNotFoundException
newMFAMethodNotFoundException'  customize = (MFAMethodNotFoundException <<< customize) { "message": Nothing }



newtype MFAOptionListType = MFAOptionListType (Array MFAOptionType)
derive instance newtypeMFAOptionListType :: Newtype MFAOptionListType _
derive instance repGenericMFAOptionListType :: Generic MFAOptionListType _
instance showMFAOptionListType :: Show MFAOptionListType where show = genericShow
instance decodeMFAOptionListType :: Decode MFAOptionListType where decode = genericDecode options
instance encodeMFAOptionListType :: Encode MFAOptionListType where encode = genericEncode options



-- | <p>Specifies the different settings for multi-factor authentication (MFA).</p>
newtype MFAOptionType = MFAOptionType 
  { "DeliveryMedium" :: Maybe (DeliveryMediumType)
  , "AttributeName" :: Maybe (AttributeNameType)
  }
derive instance newtypeMFAOptionType :: Newtype MFAOptionType _
derive instance repGenericMFAOptionType :: Generic MFAOptionType _
instance showMFAOptionType :: Show MFAOptionType where show = genericShow
instance decodeMFAOptionType :: Decode MFAOptionType where decode = genericDecode options
instance encodeMFAOptionType :: Encode MFAOptionType where encode = genericEncode options

-- | Constructs MFAOptionType from required parameters
newMFAOptionType :: MFAOptionType
newMFAOptionType  = MFAOptionType { "AttributeName": Nothing, "DeliveryMedium": Nothing }

-- | Constructs MFAOptionType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMFAOptionType' :: ( { "DeliveryMedium" :: Maybe (DeliveryMediumType) , "AttributeName" :: Maybe (AttributeNameType) } -> {"DeliveryMedium" :: Maybe (DeliveryMediumType) , "AttributeName" :: Maybe (AttributeNameType) } ) -> MFAOptionType
newMFAOptionType'  customize = (MFAOptionType <<< customize) { "AttributeName": Nothing, "DeliveryMedium": Nothing }



newtype MessageActionType = MessageActionType String
derive instance newtypeMessageActionType :: Newtype MessageActionType _
derive instance repGenericMessageActionType :: Generic MessageActionType _
instance showMessageActionType :: Show MessageActionType where show = genericShow
instance decodeMessageActionType :: Decode MessageActionType where decode = genericDecode options
instance encodeMessageActionType :: Encode MessageActionType where encode = genericEncode options



-- | <p>The message template structure.</p>
newtype MessageTemplateType = MessageTemplateType 
  { "SMSMessage" :: Maybe (SmsVerificationMessageType)
  , "EmailMessage" :: Maybe (EmailVerificationMessageType)
  , "EmailSubject" :: Maybe (EmailVerificationSubjectType)
  }
derive instance newtypeMessageTemplateType :: Newtype MessageTemplateType _
derive instance repGenericMessageTemplateType :: Generic MessageTemplateType _
instance showMessageTemplateType :: Show MessageTemplateType where show = genericShow
instance decodeMessageTemplateType :: Decode MessageTemplateType where decode = genericDecode options
instance encodeMessageTemplateType :: Encode MessageTemplateType where encode = genericEncode options

-- | Constructs MessageTemplateType from required parameters
newMessageTemplateType :: MessageTemplateType
newMessageTemplateType  = MessageTemplateType { "EmailMessage": Nothing, "EmailSubject": Nothing, "SMSMessage": Nothing }

-- | Constructs MessageTemplateType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageTemplateType' :: ( { "SMSMessage" :: Maybe (SmsVerificationMessageType) , "EmailMessage" :: Maybe (EmailVerificationMessageType) , "EmailSubject" :: Maybe (EmailVerificationSubjectType) } -> {"SMSMessage" :: Maybe (SmsVerificationMessageType) , "EmailMessage" :: Maybe (EmailVerificationMessageType) , "EmailSubject" :: Maybe (EmailVerificationSubjectType) } ) -> MessageTemplateType
newMessageTemplateType'  customize = (MessageTemplateType <<< customize) { "EmailMessage": Nothing, "EmailSubject": Nothing, "SMSMessage": Nothing }



newtype MessageType = MessageType String
derive instance newtypeMessageType :: Newtype MessageType _
derive instance repGenericMessageType :: Generic MessageType _
instance showMessageType :: Show MessageType where show = genericShow
instance decodeMessageType :: Decode MessageType where decode = genericDecode options
instance encodeMessageType :: Encode MessageType where encode = genericEncode options



-- | <p>The new device metadata type.</p>
newtype NewDeviceMetadataType = NewDeviceMetadataType 
  { "DeviceKey" :: Maybe (DeviceKeyType)
  , "DeviceGroupKey" :: Maybe (StringType)
  }
derive instance newtypeNewDeviceMetadataType :: Newtype NewDeviceMetadataType _
derive instance repGenericNewDeviceMetadataType :: Generic NewDeviceMetadataType _
instance showNewDeviceMetadataType :: Show NewDeviceMetadataType where show = genericShow
instance decodeNewDeviceMetadataType :: Decode NewDeviceMetadataType where decode = genericDecode options
instance encodeNewDeviceMetadataType :: Encode NewDeviceMetadataType where encode = genericEncode options

-- | Constructs NewDeviceMetadataType from required parameters
newNewDeviceMetadataType :: NewDeviceMetadataType
newNewDeviceMetadataType  = NewDeviceMetadataType { "DeviceGroupKey": Nothing, "DeviceKey": Nothing }

-- | Constructs NewDeviceMetadataType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNewDeviceMetadataType' :: ( { "DeviceKey" :: Maybe (DeviceKeyType) , "DeviceGroupKey" :: Maybe (StringType) } -> {"DeviceKey" :: Maybe (DeviceKeyType) , "DeviceGroupKey" :: Maybe (StringType) } ) -> NewDeviceMetadataType
newNewDeviceMetadataType'  customize = (NewDeviceMetadataType <<< customize) { "DeviceGroupKey": Nothing, "DeviceKey": Nothing }



-- | <p>This exception is thrown when a user is not authorized.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where decode = genericDecode options
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where encode = genericEncode options

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "message": Nothing }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "message": Nothing }



-- | <p>The notify configuration type.</p>
newtype NotifyConfigurationType = NotifyConfigurationType 
  { "From" :: Maybe (StringType)
  , "ReplyTo" :: Maybe (StringType)
  , "SourceArn" :: (ArnType)
  , "BlockEmail" :: Maybe (NotifyEmailType)
  , "NoActionEmail" :: Maybe (NotifyEmailType)
  , "MfaEmail" :: Maybe (NotifyEmailType)
  }
derive instance newtypeNotifyConfigurationType :: Newtype NotifyConfigurationType _
derive instance repGenericNotifyConfigurationType :: Generic NotifyConfigurationType _
instance showNotifyConfigurationType :: Show NotifyConfigurationType where show = genericShow
instance decodeNotifyConfigurationType :: Decode NotifyConfigurationType where decode = genericDecode options
instance encodeNotifyConfigurationType :: Encode NotifyConfigurationType where encode = genericEncode options

-- | Constructs NotifyConfigurationType from required parameters
newNotifyConfigurationType :: ArnType -> NotifyConfigurationType
newNotifyConfigurationType _SourceArn = NotifyConfigurationType { "SourceArn": _SourceArn, "BlockEmail": Nothing, "From": Nothing, "MfaEmail": Nothing, "NoActionEmail": Nothing, "ReplyTo": Nothing }

-- | Constructs NotifyConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyConfigurationType' :: ArnType -> ( { "From" :: Maybe (StringType) , "ReplyTo" :: Maybe (StringType) , "SourceArn" :: (ArnType) , "BlockEmail" :: Maybe (NotifyEmailType) , "NoActionEmail" :: Maybe (NotifyEmailType) , "MfaEmail" :: Maybe (NotifyEmailType) } -> {"From" :: Maybe (StringType) , "ReplyTo" :: Maybe (StringType) , "SourceArn" :: (ArnType) , "BlockEmail" :: Maybe (NotifyEmailType) , "NoActionEmail" :: Maybe (NotifyEmailType) , "MfaEmail" :: Maybe (NotifyEmailType) } ) -> NotifyConfigurationType
newNotifyConfigurationType' _SourceArn customize = (NotifyConfigurationType <<< customize) { "SourceArn": _SourceArn, "BlockEmail": Nothing, "From": Nothing, "MfaEmail": Nothing, "NoActionEmail": Nothing, "ReplyTo": Nothing }



-- | <p>The notify email type.</p>
newtype NotifyEmailType = NotifyEmailType 
  { "Subject" :: (EmailNotificationSubjectType)
  , "HtmlBody" :: Maybe (EmailNotificationBodyType)
  , "TextBody" :: Maybe (EmailNotificationBodyType)
  }
derive instance newtypeNotifyEmailType :: Newtype NotifyEmailType _
derive instance repGenericNotifyEmailType :: Generic NotifyEmailType _
instance showNotifyEmailType :: Show NotifyEmailType where show = genericShow
instance decodeNotifyEmailType :: Decode NotifyEmailType where decode = genericDecode options
instance encodeNotifyEmailType :: Encode NotifyEmailType where encode = genericEncode options

-- | Constructs NotifyEmailType from required parameters
newNotifyEmailType :: EmailNotificationSubjectType -> NotifyEmailType
newNotifyEmailType _Subject = NotifyEmailType { "Subject": _Subject, "HtmlBody": Nothing, "TextBody": Nothing }

-- | Constructs NotifyEmailType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyEmailType' :: EmailNotificationSubjectType -> ( { "Subject" :: (EmailNotificationSubjectType) , "HtmlBody" :: Maybe (EmailNotificationBodyType) , "TextBody" :: Maybe (EmailNotificationBodyType) } -> {"Subject" :: (EmailNotificationSubjectType) , "HtmlBody" :: Maybe (EmailNotificationBodyType) , "TextBody" :: Maybe (EmailNotificationBodyType) } ) -> NotifyEmailType
newNotifyEmailType' _Subject customize = (NotifyEmailType <<< customize) { "Subject": _Subject, "HtmlBody": Nothing, "TextBody": Nothing }



-- | <p>The minimum and maximum value of an attribute that is of the number data type.</p>
newtype NumberAttributeConstraintsType = NumberAttributeConstraintsType 
  { "MinValue" :: Maybe (StringType)
  , "MaxValue" :: Maybe (StringType)
  }
derive instance newtypeNumberAttributeConstraintsType :: Newtype NumberAttributeConstraintsType _
derive instance repGenericNumberAttributeConstraintsType :: Generic NumberAttributeConstraintsType _
instance showNumberAttributeConstraintsType :: Show NumberAttributeConstraintsType where show = genericShow
instance decodeNumberAttributeConstraintsType :: Decode NumberAttributeConstraintsType where decode = genericDecode options
instance encodeNumberAttributeConstraintsType :: Encode NumberAttributeConstraintsType where encode = genericEncode options

-- | Constructs NumberAttributeConstraintsType from required parameters
newNumberAttributeConstraintsType :: NumberAttributeConstraintsType
newNumberAttributeConstraintsType  = NumberAttributeConstraintsType { "MaxValue": Nothing, "MinValue": Nothing }

-- | Constructs NumberAttributeConstraintsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNumberAttributeConstraintsType' :: ( { "MinValue" :: Maybe (StringType) , "MaxValue" :: Maybe (StringType) } -> {"MinValue" :: Maybe (StringType) , "MaxValue" :: Maybe (StringType) } ) -> NumberAttributeConstraintsType
newNumberAttributeConstraintsType'  customize = (NumberAttributeConstraintsType <<< customize) { "MaxValue": Nothing, "MinValue": Nothing }



newtype OAuthFlowType = OAuthFlowType String
derive instance newtypeOAuthFlowType :: Newtype OAuthFlowType _
derive instance repGenericOAuthFlowType :: Generic OAuthFlowType _
instance showOAuthFlowType :: Show OAuthFlowType where show = genericShow
instance decodeOAuthFlowType :: Decode OAuthFlowType where decode = genericDecode options
instance encodeOAuthFlowType :: Encode OAuthFlowType where encode = genericEncode options



newtype OAuthFlowsType = OAuthFlowsType (Array OAuthFlowType)
derive instance newtypeOAuthFlowsType :: Newtype OAuthFlowsType _
derive instance repGenericOAuthFlowsType :: Generic OAuthFlowsType _
instance showOAuthFlowsType :: Show OAuthFlowsType where show = genericShow
instance decodeOAuthFlowsType :: Decode OAuthFlowsType where decode = genericDecode options
instance encodeOAuthFlowsType :: Encode OAuthFlowsType where encode = genericEncode options



newtype PaginationKey = PaginationKey String
derive instance newtypePaginationKey :: Newtype PaginationKey _
derive instance repGenericPaginationKey :: Generic PaginationKey _
instance showPaginationKey :: Show PaginationKey where show = genericShow
instance decodePaginationKey :: Decode PaginationKey where decode = genericDecode options
instance encodePaginationKey :: Encode PaginationKey where encode = genericEncode options



newtype PaginationKeyType = PaginationKeyType String
derive instance newtypePaginationKeyType :: Newtype PaginationKeyType _
derive instance repGenericPaginationKeyType :: Generic PaginationKeyType _
instance showPaginationKeyType :: Show PaginationKeyType where show = genericShow
instance decodePaginationKeyType :: Decode PaginationKeyType where decode = genericDecode options
instance encodePaginationKeyType :: Encode PaginationKeyType where encode = genericEncode options



newtype PasswordPolicyMinLengthType = PasswordPolicyMinLengthType Int
derive instance newtypePasswordPolicyMinLengthType :: Newtype PasswordPolicyMinLengthType _
derive instance repGenericPasswordPolicyMinLengthType :: Generic PasswordPolicyMinLengthType _
instance showPasswordPolicyMinLengthType :: Show PasswordPolicyMinLengthType where show = genericShow
instance decodePasswordPolicyMinLengthType :: Decode PasswordPolicyMinLengthType where decode = genericDecode options
instance encodePasswordPolicyMinLengthType :: Encode PasswordPolicyMinLengthType where encode = genericEncode options



-- | <p>The password policy type.</p>
newtype PasswordPolicyType = PasswordPolicyType 
  { "MinimumLength" :: Maybe (PasswordPolicyMinLengthType)
  , "RequireUppercase" :: Maybe (BooleanType)
  , "RequireLowercase" :: Maybe (BooleanType)
  , "RequireNumbers" :: Maybe (BooleanType)
  , "RequireSymbols" :: Maybe (BooleanType)
  }
derive instance newtypePasswordPolicyType :: Newtype PasswordPolicyType _
derive instance repGenericPasswordPolicyType :: Generic PasswordPolicyType _
instance showPasswordPolicyType :: Show PasswordPolicyType where show = genericShow
instance decodePasswordPolicyType :: Decode PasswordPolicyType where decode = genericDecode options
instance encodePasswordPolicyType :: Encode PasswordPolicyType where encode = genericEncode options

-- | Constructs PasswordPolicyType from required parameters
newPasswordPolicyType :: PasswordPolicyType
newPasswordPolicyType  = PasswordPolicyType { "MinimumLength": Nothing, "RequireLowercase": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercase": Nothing }

-- | Constructs PasswordPolicyType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordPolicyType' :: ( { "MinimumLength" :: Maybe (PasswordPolicyMinLengthType) , "RequireUppercase" :: Maybe (BooleanType) , "RequireLowercase" :: Maybe (BooleanType) , "RequireNumbers" :: Maybe (BooleanType) , "RequireSymbols" :: Maybe (BooleanType) } -> {"MinimumLength" :: Maybe (PasswordPolicyMinLengthType) , "RequireUppercase" :: Maybe (BooleanType) , "RequireLowercase" :: Maybe (BooleanType) , "RequireNumbers" :: Maybe (BooleanType) , "RequireSymbols" :: Maybe (BooleanType) } ) -> PasswordPolicyType
newPasswordPolicyType'  customize = (PasswordPolicyType <<< customize) { "MinimumLength": Nothing, "RequireLowercase": Nothing, "RequireNumbers": Nothing, "RequireSymbols": Nothing, "RequireUppercase": Nothing }



-- | <p>This exception is thrown when a password reset is required.</p>
newtype PasswordResetRequiredException = PasswordResetRequiredException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypePasswordResetRequiredException :: Newtype PasswordResetRequiredException _
derive instance repGenericPasswordResetRequiredException :: Generic PasswordResetRequiredException _
instance showPasswordResetRequiredException :: Show PasswordResetRequiredException where show = genericShow
instance decodePasswordResetRequiredException :: Decode PasswordResetRequiredException where decode = genericDecode options
instance encodePasswordResetRequiredException :: Encode PasswordResetRequiredException where encode = genericEncode options

-- | Constructs PasswordResetRequiredException from required parameters
newPasswordResetRequiredException :: PasswordResetRequiredException
newPasswordResetRequiredException  = PasswordResetRequiredException { "message": Nothing }

-- | Constructs PasswordResetRequiredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordResetRequiredException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> PasswordResetRequiredException
newPasswordResetRequiredException'  customize = (PasswordResetRequiredException <<< customize) { "message": Nothing }



newtype PasswordType = PasswordType String
derive instance newtypePasswordType :: Newtype PasswordType _
derive instance repGenericPasswordType :: Generic PasswordType _
instance showPasswordType :: Show PasswordType where show = genericShow
instance decodePasswordType :: Decode PasswordType where decode = genericDecode options
instance encodePasswordType :: Encode PasswordType where encode = genericEncode options



newtype PoolQueryLimitType = PoolQueryLimitType Int
derive instance newtypePoolQueryLimitType :: Newtype PoolQueryLimitType _
derive instance repGenericPoolQueryLimitType :: Generic PoolQueryLimitType _
instance showPoolQueryLimitType :: Show PoolQueryLimitType where show = genericShow
instance decodePoolQueryLimitType :: Decode PoolQueryLimitType where decode = genericDecode options
instance encodePoolQueryLimitType :: Encode PoolQueryLimitType where encode = genericEncode options



newtype PreSignedUrlType = PreSignedUrlType String
derive instance newtypePreSignedUrlType :: Newtype PreSignedUrlType _
derive instance repGenericPreSignedUrlType :: Generic PreSignedUrlType _
instance showPreSignedUrlType :: Show PreSignedUrlType where show = genericShow
instance decodePreSignedUrlType :: Decode PreSignedUrlType where decode = genericDecode options
instance encodePreSignedUrlType :: Encode PreSignedUrlType where encode = genericEncode options



newtype PrecedenceType = PrecedenceType Int
derive instance newtypePrecedenceType :: Newtype PrecedenceType _
derive instance repGenericPrecedenceType :: Generic PrecedenceType _
instance showPrecedenceType :: Show PrecedenceType where show = genericShow
instance decodePrecedenceType :: Decode PrecedenceType where decode = genericDecode options
instance encodePrecedenceType :: Encode PrecedenceType where encode = genericEncode options



-- | <p>This exception is thrown when a precondition is not met.</p>
newtype PreconditionNotMetException = PreconditionNotMetException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypePreconditionNotMetException :: Newtype PreconditionNotMetException _
derive instance repGenericPreconditionNotMetException :: Generic PreconditionNotMetException _
instance showPreconditionNotMetException :: Show PreconditionNotMetException where show = genericShow
instance decodePreconditionNotMetException :: Decode PreconditionNotMetException where decode = genericDecode options
instance encodePreconditionNotMetException :: Encode PreconditionNotMetException where encode = genericEncode options

-- | Constructs PreconditionNotMetException from required parameters
newPreconditionNotMetException :: PreconditionNotMetException
newPreconditionNotMetException  = PreconditionNotMetException { "message": Nothing }

-- | Constructs PreconditionNotMetException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreconditionNotMetException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> PreconditionNotMetException
newPreconditionNotMetException'  customize = (PreconditionNotMetException <<< customize) { "message": Nothing }



-- | <p>A container for identity provider details.</p>
newtype ProviderDescription = ProviderDescription 
  { "ProviderName" :: Maybe (ProviderNameType)
  , "ProviderType" :: Maybe (IdentityProviderTypeType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  }
derive instance newtypeProviderDescription :: Newtype ProviderDescription _
derive instance repGenericProviderDescription :: Generic ProviderDescription _
instance showProviderDescription :: Show ProviderDescription where show = genericShow
instance decodeProviderDescription :: Decode ProviderDescription where decode = genericDecode options
instance encodeProviderDescription :: Encode ProviderDescription where encode = genericEncode options

-- | Constructs ProviderDescription from required parameters
newProviderDescription :: ProviderDescription
newProviderDescription  = ProviderDescription { "CreationDate": Nothing, "LastModifiedDate": Nothing, "ProviderName": Nothing, "ProviderType": Nothing }

-- | Constructs ProviderDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProviderDescription' :: ( { "ProviderName" :: Maybe (ProviderNameType) , "ProviderType" :: Maybe (IdentityProviderTypeType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } -> {"ProviderName" :: Maybe (ProviderNameType) , "ProviderType" :: Maybe (IdentityProviderTypeType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } ) -> ProviderDescription
newProviderDescription'  customize = (ProviderDescription <<< customize) { "CreationDate": Nothing, "LastModifiedDate": Nothing, "ProviderName": Nothing, "ProviderType": Nothing }



newtype ProviderDetailsType = ProviderDetailsType (StrMap.StrMap StringType)
derive instance newtypeProviderDetailsType :: Newtype ProviderDetailsType _
derive instance repGenericProviderDetailsType :: Generic ProviderDetailsType _
instance showProviderDetailsType :: Show ProviderDetailsType where show = genericShow
instance decodeProviderDetailsType :: Decode ProviderDetailsType where decode = genericDecode options
instance encodeProviderDetailsType :: Encode ProviderDetailsType where encode = genericEncode options



newtype ProviderNameType = ProviderNameType String
derive instance newtypeProviderNameType :: Newtype ProviderNameType _
derive instance repGenericProviderNameType :: Generic ProviderNameType _
instance showProviderNameType :: Show ProviderNameType where show = genericShow
instance decodeProviderNameType :: Decode ProviderNameType where decode = genericDecode options
instance encodeProviderNameType :: Encode ProviderNameType where encode = genericEncode options



newtype ProviderNameTypeV1 = ProviderNameTypeV1 String
derive instance newtypeProviderNameTypeV1 :: Newtype ProviderNameTypeV1 _
derive instance repGenericProviderNameTypeV1 :: Generic ProviderNameTypeV1 _
instance showProviderNameTypeV1 :: Show ProviderNameTypeV1 where show = genericShow
instance decodeProviderNameTypeV1 :: Decode ProviderNameTypeV1 where decode = genericDecode options
instance encodeProviderNameTypeV1 :: Encode ProviderNameTypeV1 where encode = genericEncode options



-- | <p>A container for information about an identity provider for a user pool.</p>
newtype ProviderUserIdentifierType = ProviderUserIdentifierType 
  { "ProviderName" :: Maybe (ProviderNameType)
  , "ProviderAttributeName" :: Maybe (StringType)
  , "ProviderAttributeValue" :: Maybe (StringType)
  }
derive instance newtypeProviderUserIdentifierType :: Newtype ProviderUserIdentifierType _
derive instance repGenericProviderUserIdentifierType :: Generic ProviderUserIdentifierType _
instance showProviderUserIdentifierType :: Show ProviderUserIdentifierType where show = genericShow
instance decodeProviderUserIdentifierType :: Decode ProviderUserIdentifierType where decode = genericDecode options
instance encodeProviderUserIdentifierType :: Encode ProviderUserIdentifierType where encode = genericEncode options

-- | Constructs ProviderUserIdentifierType from required parameters
newProviderUserIdentifierType :: ProviderUserIdentifierType
newProviderUserIdentifierType  = ProviderUserIdentifierType { "ProviderAttributeName": Nothing, "ProviderAttributeValue": Nothing, "ProviderName": Nothing }

-- | Constructs ProviderUserIdentifierType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProviderUserIdentifierType' :: ( { "ProviderName" :: Maybe (ProviderNameType) , "ProviderAttributeName" :: Maybe (StringType) , "ProviderAttributeValue" :: Maybe (StringType) } -> {"ProviderName" :: Maybe (ProviderNameType) , "ProviderAttributeName" :: Maybe (StringType) , "ProviderAttributeValue" :: Maybe (StringType) } ) -> ProviderUserIdentifierType
newProviderUserIdentifierType'  customize = (ProviderUserIdentifierType <<< customize) { "ProviderAttributeName": Nothing, "ProviderAttributeValue": Nothing, "ProviderName": Nothing }



newtype ProvidersListType = ProvidersListType (Array ProviderDescription)
derive instance newtypeProvidersListType :: Newtype ProvidersListType _
derive instance repGenericProvidersListType :: Generic ProvidersListType _
instance showProvidersListType :: Show ProvidersListType where show = genericShow
instance decodeProvidersListType :: Decode ProvidersListType where decode = genericDecode options
instance encodeProvidersListType :: Encode ProvidersListType where encode = genericEncode options



newtype QueryLimit = QueryLimit Int
derive instance newtypeQueryLimit :: Newtype QueryLimit _
derive instance repGenericQueryLimit :: Generic QueryLimit _
instance showQueryLimit :: Show QueryLimit where show = genericShow
instance decodeQueryLimit :: Decode QueryLimit where decode = genericDecode options
instance encodeQueryLimit :: Encode QueryLimit where encode = genericEncode options



newtype QueryLimitType = QueryLimitType Int
derive instance newtypeQueryLimitType :: Newtype QueryLimitType _
derive instance repGenericQueryLimitType :: Generic QueryLimitType _
instance showQueryLimitType :: Show QueryLimitType where show = genericShow
instance decodeQueryLimitType :: Decode QueryLimitType where decode = genericDecode options
instance encodeQueryLimitType :: Encode QueryLimitType where encode = genericEncode options



newtype RedirectUrlType = RedirectUrlType String
derive instance newtypeRedirectUrlType :: Newtype RedirectUrlType _
derive instance repGenericRedirectUrlType :: Generic RedirectUrlType _
instance showRedirectUrlType :: Show RedirectUrlType where show = genericShow
instance decodeRedirectUrlType :: Decode RedirectUrlType where decode = genericDecode options
instance encodeRedirectUrlType :: Encode RedirectUrlType where encode = genericEncode options



newtype RefreshTokenValidityType = RefreshTokenValidityType Int
derive instance newtypeRefreshTokenValidityType :: Newtype RefreshTokenValidityType _
derive instance repGenericRefreshTokenValidityType :: Generic RefreshTokenValidityType _
instance showRefreshTokenValidityType :: Show RefreshTokenValidityType where show = genericShow
instance decodeRefreshTokenValidityType :: Decode RefreshTokenValidityType where decode = genericDecode options
instance encodeRefreshTokenValidityType :: Encode RefreshTokenValidityType where encode = genericEncode options



-- | <p>Represents the request to resend the confirmation code.</p>
newtype ResendConfirmationCodeRequest = ResendConfirmationCodeRequest 
  { "ClientId" :: (ClientIdType)
  , "SecretHash" :: Maybe (SecretHashType)
  , "UserContextData" :: Maybe (UserContextDataType)
  , "Username" :: (UsernameType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  }
derive instance newtypeResendConfirmationCodeRequest :: Newtype ResendConfirmationCodeRequest _
derive instance repGenericResendConfirmationCodeRequest :: Generic ResendConfirmationCodeRequest _
instance showResendConfirmationCodeRequest :: Show ResendConfirmationCodeRequest where show = genericShow
instance decodeResendConfirmationCodeRequest :: Decode ResendConfirmationCodeRequest where decode = genericDecode options
instance encodeResendConfirmationCodeRequest :: Encode ResendConfirmationCodeRequest where encode = genericEncode options

-- | Constructs ResendConfirmationCodeRequest from required parameters
newResendConfirmationCodeRequest :: ClientIdType -> UsernameType -> ResendConfirmationCodeRequest
newResendConfirmationCodeRequest _ClientId _Username = ResendConfirmationCodeRequest { "ClientId": _ClientId, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }

-- | Constructs ResendConfirmationCodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendConfirmationCodeRequest' :: ClientIdType -> UsernameType -> ( { "ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "UserContextData" :: Maybe (UserContextDataType) , "Username" :: (UsernameType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) } -> {"ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "UserContextData" :: Maybe (UserContextDataType) , "Username" :: (UsernameType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) } ) -> ResendConfirmationCodeRequest
newResendConfirmationCodeRequest' _ClientId _Username customize = (ResendConfirmationCodeRequest <<< customize) { "ClientId": _ClientId, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserContextData": Nothing }



-- | <p>The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.</p>
newtype ResendConfirmationCodeResponse = ResendConfirmationCodeResponse 
  { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType)
  }
derive instance newtypeResendConfirmationCodeResponse :: Newtype ResendConfirmationCodeResponse _
derive instance repGenericResendConfirmationCodeResponse :: Generic ResendConfirmationCodeResponse _
instance showResendConfirmationCodeResponse :: Show ResendConfirmationCodeResponse where show = genericShow
instance decodeResendConfirmationCodeResponse :: Decode ResendConfirmationCodeResponse where decode = genericDecode options
instance encodeResendConfirmationCodeResponse :: Encode ResendConfirmationCodeResponse where encode = genericEncode options

-- | Constructs ResendConfirmationCodeResponse from required parameters
newResendConfirmationCodeResponse :: ResendConfirmationCodeResponse
newResendConfirmationCodeResponse  = ResendConfirmationCodeResponse { "CodeDeliveryDetails": Nothing }

-- | Constructs ResendConfirmationCodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendConfirmationCodeResponse' :: ( { "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } -> {"CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) } ) -> ResendConfirmationCodeResponse
newResendConfirmationCodeResponse'  customize = (ResendConfirmationCodeResponse <<< customize) { "CodeDeliveryDetails": Nothing }



-- | <p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



newtype ResourceServerIdentifierType = ResourceServerIdentifierType String
derive instance newtypeResourceServerIdentifierType :: Newtype ResourceServerIdentifierType _
derive instance repGenericResourceServerIdentifierType :: Generic ResourceServerIdentifierType _
instance showResourceServerIdentifierType :: Show ResourceServerIdentifierType where show = genericShow
instance decodeResourceServerIdentifierType :: Decode ResourceServerIdentifierType where decode = genericDecode options
instance encodeResourceServerIdentifierType :: Encode ResourceServerIdentifierType where encode = genericEncode options



newtype ResourceServerNameType = ResourceServerNameType String
derive instance newtypeResourceServerNameType :: Newtype ResourceServerNameType _
derive instance repGenericResourceServerNameType :: Generic ResourceServerNameType _
instance showResourceServerNameType :: Show ResourceServerNameType where show = genericShow
instance decodeResourceServerNameType :: Decode ResourceServerNameType where decode = genericDecode options
instance encodeResourceServerNameType :: Encode ResourceServerNameType where encode = genericEncode options



newtype ResourceServerScopeDescriptionType = ResourceServerScopeDescriptionType String
derive instance newtypeResourceServerScopeDescriptionType :: Newtype ResourceServerScopeDescriptionType _
derive instance repGenericResourceServerScopeDescriptionType :: Generic ResourceServerScopeDescriptionType _
instance showResourceServerScopeDescriptionType :: Show ResourceServerScopeDescriptionType where show = genericShow
instance decodeResourceServerScopeDescriptionType :: Decode ResourceServerScopeDescriptionType where decode = genericDecode options
instance encodeResourceServerScopeDescriptionType :: Encode ResourceServerScopeDescriptionType where encode = genericEncode options



newtype ResourceServerScopeListType = ResourceServerScopeListType (Array ResourceServerScopeType)
derive instance newtypeResourceServerScopeListType :: Newtype ResourceServerScopeListType _
derive instance repGenericResourceServerScopeListType :: Generic ResourceServerScopeListType _
instance showResourceServerScopeListType :: Show ResourceServerScopeListType where show = genericShow
instance decodeResourceServerScopeListType :: Decode ResourceServerScopeListType where decode = genericDecode options
instance encodeResourceServerScopeListType :: Encode ResourceServerScopeListType where encode = genericEncode options



newtype ResourceServerScopeNameType = ResourceServerScopeNameType String
derive instance newtypeResourceServerScopeNameType :: Newtype ResourceServerScopeNameType _
derive instance repGenericResourceServerScopeNameType :: Generic ResourceServerScopeNameType _
instance showResourceServerScopeNameType :: Show ResourceServerScopeNameType where show = genericShow
instance decodeResourceServerScopeNameType :: Decode ResourceServerScopeNameType where decode = genericDecode options
instance encodeResourceServerScopeNameType :: Encode ResourceServerScopeNameType where encode = genericEncode options



-- | <p>A resource server scope.</p>
newtype ResourceServerScopeType = ResourceServerScopeType 
  { "ScopeName" :: (ResourceServerScopeNameType)
  , "ScopeDescription" :: (ResourceServerScopeDescriptionType)
  }
derive instance newtypeResourceServerScopeType :: Newtype ResourceServerScopeType _
derive instance repGenericResourceServerScopeType :: Generic ResourceServerScopeType _
instance showResourceServerScopeType :: Show ResourceServerScopeType where show = genericShow
instance decodeResourceServerScopeType :: Decode ResourceServerScopeType where decode = genericDecode options
instance encodeResourceServerScopeType :: Encode ResourceServerScopeType where encode = genericEncode options

-- | Constructs ResourceServerScopeType from required parameters
newResourceServerScopeType :: ResourceServerScopeDescriptionType -> ResourceServerScopeNameType -> ResourceServerScopeType
newResourceServerScopeType _ScopeDescription _ScopeName = ResourceServerScopeType { "ScopeDescription": _ScopeDescription, "ScopeName": _ScopeName }

-- | Constructs ResourceServerScopeType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceServerScopeType' :: ResourceServerScopeDescriptionType -> ResourceServerScopeNameType -> ( { "ScopeName" :: (ResourceServerScopeNameType) , "ScopeDescription" :: (ResourceServerScopeDescriptionType) } -> {"ScopeName" :: (ResourceServerScopeNameType) , "ScopeDescription" :: (ResourceServerScopeDescriptionType) } ) -> ResourceServerScopeType
newResourceServerScopeType' _ScopeDescription _ScopeName customize = (ResourceServerScopeType <<< customize) { "ScopeDescription": _ScopeDescription, "ScopeName": _ScopeName }



-- | <p>A container for information about a resource server for a user pool.</p>
newtype ResourceServerType = ResourceServerType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "Identifier" :: Maybe (ResourceServerIdentifierType)
  , "Name" :: Maybe (ResourceServerNameType)
  , "Scopes" :: Maybe (ResourceServerScopeListType)
  }
derive instance newtypeResourceServerType :: Newtype ResourceServerType _
derive instance repGenericResourceServerType :: Generic ResourceServerType _
instance showResourceServerType :: Show ResourceServerType where show = genericShow
instance decodeResourceServerType :: Decode ResourceServerType where decode = genericDecode options
instance encodeResourceServerType :: Encode ResourceServerType where encode = genericEncode options

-- | Constructs ResourceServerType from required parameters
newResourceServerType :: ResourceServerType
newResourceServerType  = ResourceServerType { "Identifier": Nothing, "Name": Nothing, "Scopes": Nothing, "UserPoolId": Nothing }

-- | Constructs ResourceServerType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceServerType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "Identifier" :: Maybe (ResourceServerIdentifierType) , "Name" :: Maybe (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "Identifier" :: Maybe (ResourceServerIdentifierType) , "Name" :: Maybe (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } ) -> ResourceServerType
newResourceServerType'  customize = (ResourceServerType <<< customize) { "Identifier": Nothing, "Name": Nothing, "Scopes": Nothing, "UserPoolId": Nothing }



newtype ResourceServersListType = ResourceServersListType (Array ResourceServerType)
derive instance newtypeResourceServersListType :: Newtype ResourceServersListType _
derive instance repGenericResourceServersListType :: Generic ResourceServersListType _
instance showResourceServersListType :: Show ResourceServersListType where show = genericShow
instance decodeResourceServersListType :: Decode ResourceServersListType where decode = genericDecode options
instance encodeResourceServersListType :: Encode ResourceServersListType where encode = genericEncode options



-- | <p>The request to respond to an authentication challenge.</p>
newtype RespondToAuthChallengeRequest = RespondToAuthChallengeRequest 
  { "ClientId" :: (ClientIdType)
  , "ChallengeName" :: (ChallengeNameType)
  , "Session" :: Maybe (SessionType)
  , "ChallengeResponses" :: Maybe (ChallengeResponsesType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "UserContextData" :: Maybe (UserContextDataType)
  }
derive instance newtypeRespondToAuthChallengeRequest :: Newtype RespondToAuthChallengeRequest _
derive instance repGenericRespondToAuthChallengeRequest :: Generic RespondToAuthChallengeRequest _
instance showRespondToAuthChallengeRequest :: Show RespondToAuthChallengeRequest where show = genericShow
instance decodeRespondToAuthChallengeRequest :: Decode RespondToAuthChallengeRequest where decode = genericDecode options
instance encodeRespondToAuthChallengeRequest :: Encode RespondToAuthChallengeRequest where encode = genericEncode options

-- | Constructs RespondToAuthChallengeRequest from required parameters
newRespondToAuthChallengeRequest :: ChallengeNameType -> ClientIdType -> RespondToAuthChallengeRequest
newRespondToAuthChallengeRequest _ChallengeName _ClientId = RespondToAuthChallengeRequest { "ChallengeName": _ChallengeName, "ClientId": _ClientId, "AnalyticsMetadata": Nothing, "ChallengeResponses": Nothing, "Session": Nothing, "UserContextData": Nothing }

-- | Constructs RespondToAuthChallengeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondToAuthChallengeRequest' :: ChallengeNameType -> ClientIdType -> ( { "ClientId" :: (ClientIdType) , "ChallengeName" :: (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeResponses" :: Maybe (ChallengeResponsesType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } -> {"ClientId" :: (ClientIdType) , "ChallengeName" :: (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeResponses" :: Maybe (ChallengeResponsesType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } ) -> RespondToAuthChallengeRequest
newRespondToAuthChallengeRequest' _ChallengeName _ClientId customize = (RespondToAuthChallengeRequest <<< customize) { "ChallengeName": _ChallengeName, "ClientId": _ClientId, "AnalyticsMetadata": Nothing, "ChallengeResponses": Nothing, "Session": Nothing, "UserContextData": Nothing }



-- | <p>The response to respond to the authentication challenge.</p>
newtype RespondToAuthChallengeResponse = RespondToAuthChallengeResponse 
  { "ChallengeName" :: Maybe (ChallengeNameType)
  , "Session" :: Maybe (SessionType)
  , "ChallengeParameters" :: Maybe (ChallengeParametersType)
  , "AuthenticationResult" :: Maybe (AuthenticationResultType)
  }
derive instance newtypeRespondToAuthChallengeResponse :: Newtype RespondToAuthChallengeResponse _
derive instance repGenericRespondToAuthChallengeResponse :: Generic RespondToAuthChallengeResponse _
instance showRespondToAuthChallengeResponse :: Show RespondToAuthChallengeResponse where show = genericShow
instance decodeRespondToAuthChallengeResponse :: Decode RespondToAuthChallengeResponse where decode = genericDecode options
instance encodeRespondToAuthChallengeResponse :: Encode RespondToAuthChallengeResponse where encode = genericEncode options

-- | Constructs RespondToAuthChallengeResponse from required parameters
newRespondToAuthChallengeResponse :: RespondToAuthChallengeResponse
newRespondToAuthChallengeResponse  = RespondToAuthChallengeResponse { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }

-- | Constructs RespondToAuthChallengeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondToAuthChallengeResponse' :: ( { "ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } -> {"ChallengeName" :: Maybe (ChallengeNameType) , "Session" :: Maybe (SessionType) , "ChallengeParameters" :: Maybe (ChallengeParametersType) , "AuthenticationResult" :: Maybe (AuthenticationResultType) } ) -> RespondToAuthChallengeResponse
newRespondToAuthChallengeResponse'  customize = (RespondToAuthChallengeResponse <<< customize) { "AuthenticationResult": Nothing, "ChallengeName": Nothing, "ChallengeParameters": Nothing, "Session": Nothing }



-- | <p>The risk configuration type.</p>
newtype RiskConfigurationType = RiskConfigurationType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType)
  , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType)
  , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType)
  , "LastModifiedDate" :: Maybe (DateType)
  }
derive instance newtypeRiskConfigurationType :: Newtype RiskConfigurationType _
derive instance repGenericRiskConfigurationType :: Generic RiskConfigurationType _
instance showRiskConfigurationType :: Show RiskConfigurationType where show = genericShow
instance decodeRiskConfigurationType :: Decode RiskConfigurationType where decode = genericDecode options
instance encodeRiskConfigurationType :: Encode RiskConfigurationType where encode = genericEncode options

-- | Constructs RiskConfigurationType from required parameters
newRiskConfigurationType :: RiskConfigurationType
newRiskConfigurationType  = RiskConfigurationType { "AccountTakeoverRiskConfiguration": Nothing, "ClientId": Nothing, "CompromisedCredentialsRiskConfiguration": Nothing, "LastModifiedDate": Nothing, "RiskExceptionConfiguration": Nothing, "UserPoolId": Nothing }

-- | Constructs RiskConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRiskConfigurationType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType) , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType) , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType) , "LastModifiedDate" :: Maybe (DateType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType) , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType) , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType) , "LastModifiedDate" :: Maybe (DateType) } ) -> RiskConfigurationType
newRiskConfigurationType'  customize = (RiskConfigurationType <<< customize) { "AccountTakeoverRiskConfiguration": Nothing, "ClientId": Nothing, "CompromisedCredentialsRiskConfiguration": Nothing, "LastModifiedDate": Nothing, "RiskExceptionConfiguration": Nothing, "UserPoolId": Nothing }



newtype RiskDecisionType = RiskDecisionType String
derive instance newtypeRiskDecisionType :: Newtype RiskDecisionType _
derive instance repGenericRiskDecisionType :: Generic RiskDecisionType _
instance showRiskDecisionType :: Show RiskDecisionType where show = genericShow
instance decodeRiskDecisionType :: Decode RiskDecisionType where decode = genericDecode options
instance encodeRiskDecisionType :: Encode RiskDecisionType where encode = genericEncode options



-- | <p>The type of the configuration to override the risk decision.</p>
newtype RiskExceptionConfigurationType = RiskExceptionConfigurationType 
  { "BlockedIPRangeList" :: Maybe (BlockedIPRangeListType)
  , "SkippedIPRangeList" :: Maybe (SkippedIPRangeListType)
  }
derive instance newtypeRiskExceptionConfigurationType :: Newtype RiskExceptionConfigurationType _
derive instance repGenericRiskExceptionConfigurationType :: Generic RiskExceptionConfigurationType _
instance showRiskExceptionConfigurationType :: Show RiskExceptionConfigurationType where show = genericShow
instance decodeRiskExceptionConfigurationType :: Decode RiskExceptionConfigurationType where decode = genericDecode options
instance encodeRiskExceptionConfigurationType :: Encode RiskExceptionConfigurationType where encode = genericEncode options

-- | Constructs RiskExceptionConfigurationType from required parameters
newRiskExceptionConfigurationType :: RiskExceptionConfigurationType
newRiskExceptionConfigurationType  = RiskExceptionConfigurationType { "BlockedIPRangeList": Nothing, "SkippedIPRangeList": Nothing }

-- | Constructs RiskExceptionConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRiskExceptionConfigurationType' :: ( { "BlockedIPRangeList" :: Maybe (BlockedIPRangeListType) , "SkippedIPRangeList" :: Maybe (SkippedIPRangeListType) } -> {"BlockedIPRangeList" :: Maybe (BlockedIPRangeListType) , "SkippedIPRangeList" :: Maybe (SkippedIPRangeListType) } ) -> RiskExceptionConfigurationType
newRiskExceptionConfigurationType'  customize = (RiskExceptionConfigurationType <<< customize) { "BlockedIPRangeList": Nothing, "SkippedIPRangeList": Nothing }



newtype RiskLevelType = RiskLevelType String
derive instance newtypeRiskLevelType :: Newtype RiskLevelType _
derive instance repGenericRiskLevelType :: Generic RiskLevelType _
instance showRiskLevelType :: Show RiskLevelType where show = genericShow
instance decodeRiskLevelType :: Decode RiskLevelType where decode = genericDecode options
instance encodeRiskLevelType :: Encode RiskLevelType where encode = genericEncode options



newtype S3BucketType = S3BucketType String
derive instance newtypeS3BucketType :: Newtype S3BucketType _
derive instance repGenericS3BucketType :: Generic S3BucketType _
instance showS3BucketType :: Show S3BucketType where show = genericShow
instance decodeS3BucketType :: Decode S3BucketType where decode = genericDecode options
instance encodeS3BucketType :: Encode S3BucketType where encode = genericEncode options



-- | <p>The SMS multi-factor authentication (MFA) settings type.</p>
newtype SMSMfaSettingsType = SMSMfaSettingsType 
  { "Enabled" :: Maybe (BooleanType)
  , "PreferredMfa" :: Maybe (BooleanType)
  }
derive instance newtypeSMSMfaSettingsType :: Newtype SMSMfaSettingsType _
derive instance repGenericSMSMfaSettingsType :: Generic SMSMfaSettingsType _
instance showSMSMfaSettingsType :: Show SMSMfaSettingsType where show = genericShow
instance decodeSMSMfaSettingsType :: Decode SMSMfaSettingsType where decode = genericDecode options
instance encodeSMSMfaSettingsType :: Encode SMSMfaSettingsType where encode = genericEncode options

-- | Constructs SMSMfaSettingsType from required parameters
newSMSMfaSettingsType :: SMSMfaSettingsType
newSMSMfaSettingsType  = SMSMfaSettingsType { "Enabled": Nothing, "PreferredMfa": Nothing }

-- | Constructs SMSMfaSettingsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSMSMfaSettingsType' :: ( { "Enabled" :: Maybe (BooleanType) , "PreferredMfa" :: Maybe (BooleanType) } -> {"Enabled" :: Maybe (BooleanType) , "PreferredMfa" :: Maybe (BooleanType) } ) -> SMSMfaSettingsType
newSMSMfaSettingsType'  customize = (SMSMfaSettingsType <<< customize) { "Enabled": Nothing, "PreferredMfa": Nothing }



-- | <p>Contains information about the schema attribute.</p>
newtype SchemaAttributeType = SchemaAttributeType 
  { "Name" :: Maybe (CustomAttributeNameType)
  , "AttributeDataType" :: Maybe (AttributeDataType)
  , "DeveloperOnlyAttribute" :: Maybe (BooleanType)
  , "Mutable" :: Maybe (BooleanType)
  , "Required" :: Maybe (BooleanType)
  , "NumberAttributeConstraints" :: Maybe (NumberAttributeConstraintsType)
  , "StringAttributeConstraints" :: Maybe (StringAttributeConstraintsType)
  }
derive instance newtypeSchemaAttributeType :: Newtype SchemaAttributeType _
derive instance repGenericSchemaAttributeType :: Generic SchemaAttributeType _
instance showSchemaAttributeType :: Show SchemaAttributeType where show = genericShow
instance decodeSchemaAttributeType :: Decode SchemaAttributeType where decode = genericDecode options
instance encodeSchemaAttributeType :: Encode SchemaAttributeType where encode = genericEncode options

-- | Constructs SchemaAttributeType from required parameters
newSchemaAttributeType :: SchemaAttributeType
newSchemaAttributeType  = SchemaAttributeType { "AttributeDataType": Nothing, "DeveloperOnlyAttribute": Nothing, "Mutable": Nothing, "Name": Nothing, "NumberAttributeConstraints": Nothing, "Required": Nothing, "StringAttributeConstraints": Nothing }

-- | Constructs SchemaAttributeType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSchemaAttributeType' :: ( { "Name" :: Maybe (CustomAttributeNameType) , "AttributeDataType" :: Maybe (AttributeDataType) , "DeveloperOnlyAttribute" :: Maybe (BooleanType) , "Mutable" :: Maybe (BooleanType) , "Required" :: Maybe (BooleanType) , "NumberAttributeConstraints" :: Maybe (NumberAttributeConstraintsType) , "StringAttributeConstraints" :: Maybe (StringAttributeConstraintsType) } -> {"Name" :: Maybe (CustomAttributeNameType) , "AttributeDataType" :: Maybe (AttributeDataType) , "DeveloperOnlyAttribute" :: Maybe (BooleanType) , "Mutable" :: Maybe (BooleanType) , "Required" :: Maybe (BooleanType) , "NumberAttributeConstraints" :: Maybe (NumberAttributeConstraintsType) , "StringAttributeConstraints" :: Maybe (StringAttributeConstraintsType) } ) -> SchemaAttributeType
newSchemaAttributeType'  customize = (SchemaAttributeType <<< customize) { "AttributeDataType": Nothing, "DeveloperOnlyAttribute": Nothing, "Mutable": Nothing, "Name": Nothing, "NumberAttributeConstraints": Nothing, "Required": Nothing, "StringAttributeConstraints": Nothing }



newtype SchemaAttributesListType = SchemaAttributesListType (Array SchemaAttributeType)
derive instance newtypeSchemaAttributesListType :: Newtype SchemaAttributesListType _
derive instance repGenericSchemaAttributesListType :: Generic SchemaAttributesListType _
instance showSchemaAttributesListType :: Show SchemaAttributesListType where show = genericShow
instance decodeSchemaAttributesListType :: Decode SchemaAttributesListType where decode = genericDecode options
instance encodeSchemaAttributesListType :: Encode SchemaAttributesListType where encode = genericEncode options



-- | <p>This exception is thrown when the specified scope does not exist.</p>
newtype ScopeDoesNotExistException = ScopeDoesNotExistException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeScopeDoesNotExistException :: Newtype ScopeDoesNotExistException _
derive instance repGenericScopeDoesNotExistException :: Generic ScopeDoesNotExistException _
instance showScopeDoesNotExistException :: Show ScopeDoesNotExistException where show = genericShow
instance decodeScopeDoesNotExistException :: Decode ScopeDoesNotExistException where decode = genericDecode options
instance encodeScopeDoesNotExistException :: Encode ScopeDoesNotExistException where encode = genericEncode options

-- | Constructs ScopeDoesNotExistException from required parameters
newScopeDoesNotExistException :: ScopeDoesNotExistException
newScopeDoesNotExistException  = ScopeDoesNotExistException { "message": Nothing }

-- | Constructs ScopeDoesNotExistException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScopeDoesNotExistException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> ScopeDoesNotExistException
newScopeDoesNotExistException'  customize = (ScopeDoesNotExistException <<< customize) { "message": Nothing }



newtype ScopeListType = ScopeListType (Array ScopeType)
derive instance newtypeScopeListType :: Newtype ScopeListType _
derive instance repGenericScopeListType :: Generic ScopeListType _
instance showScopeListType :: Show ScopeListType where show = genericShow
instance decodeScopeListType :: Decode ScopeListType where decode = genericDecode options
instance encodeScopeListType :: Encode ScopeListType where encode = genericEncode options



newtype ScopeType = ScopeType String
derive instance newtypeScopeType :: Newtype ScopeType _
derive instance repGenericScopeType :: Generic ScopeType _
instance showScopeType :: Show ScopeType where show = genericShow
instance decodeScopeType :: Decode ScopeType where decode = genericDecode options
instance encodeScopeType :: Encode ScopeType where encode = genericEncode options



newtype SearchPaginationTokenType = SearchPaginationTokenType String
derive instance newtypeSearchPaginationTokenType :: Newtype SearchPaginationTokenType _
derive instance repGenericSearchPaginationTokenType :: Generic SearchPaginationTokenType _
instance showSearchPaginationTokenType :: Show SearchPaginationTokenType where show = genericShow
instance decodeSearchPaginationTokenType :: Decode SearchPaginationTokenType where decode = genericDecode options
instance encodeSearchPaginationTokenType :: Encode SearchPaginationTokenType where encode = genericEncode options



newtype SearchedAttributeNamesListType = SearchedAttributeNamesListType (Array AttributeNameType)
derive instance newtypeSearchedAttributeNamesListType :: Newtype SearchedAttributeNamesListType _
derive instance repGenericSearchedAttributeNamesListType :: Generic SearchedAttributeNamesListType _
instance showSearchedAttributeNamesListType :: Show SearchedAttributeNamesListType where show = genericShow
instance decodeSearchedAttributeNamesListType :: Decode SearchedAttributeNamesListType where decode = genericDecode options
instance encodeSearchedAttributeNamesListType :: Encode SearchedAttributeNamesListType where encode = genericEncode options



newtype SecretCodeType = SecretCodeType String
derive instance newtypeSecretCodeType :: Newtype SecretCodeType _
derive instance repGenericSecretCodeType :: Generic SecretCodeType _
instance showSecretCodeType :: Show SecretCodeType where show = genericShow
instance decodeSecretCodeType :: Decode SecretCodeType where decode = genericDecode options
instance encodeSecretCodeType :: Encode SecretCodeType where encode = genericEncode options



newtype SecretHashType = SecretHashType String
derive instance newtypeSecretHashType :: Newtype SecretHashType _
derive instance repGenericSecretHashType :: Generic SecretHashType _
instance showSecretHashType :: Show SecretHashType where show = genericShow
instance decodeSecretHashType :: Decode SecretHashType where decode = genericDecode options
instance encodeSecretHashType :: Encode SecretHashType where encode = genericEncode options



newtype SessionType = SessionType String
derive instance newtypeSessionType :: Newtype SessionType _
derive instance repGenericSessionType :: Generic SessionType _
instance showSessionType :: Show SessionType where show = genericShow
instance decodeSessionType :: Decode SessionType where decode = genericDecode options
instance encodeSessionType :: Encode SessionType where encode = genericEncode options



newtype SetRiskConfigurationRequest = SetRiskConfigurationRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType)
  , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType)
  , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType)
  }
derive instance newtypeSetRiskConfigurationRequest :: Newtype SetRiskConfigurationRequest _
derive instance repGenericSetRiskConfigurationRequest :: Generic SetRiskConfigurationRequest _
instance showSetRiskConfigurationRequest :: Show SetRiskConfigurationRequest where show = genericShow
instance decodeSetRiskConfigurationRequest :: Decode SetRiskConfigurationRequest where decode = genericDecode options
instance encodeSetRiskConfigurationRequest :: Encode SetRiskConfigurationRequest where encode = genericEncode options

-- | Constructs SetRiskConfigurationRequest from required parameters
newSetRiskConfigurationRequest :: UserPoolIdType -> SetRiskConfigurationRequest
newSetRiskConfigurationRequest _UserPoolId = SetRiskConfigurationRequest { "UserPoolId": _UserPoolId, "AccountTakeoverRiskConfiguration": Nothing, "ClientId": Nothing, "CompromisedCredentialsRiskConfiguration": Nothing, "RiskExceptionConfiguration": Nothing }

-- | Constructs SetRiskConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRiskConfigurationRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType) , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType) , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CompromisedCredentialsRiskConfiguration" :: Maybe (CompromisedCredentialsRiskConfigurationType) , "AccountTakeoverRiskConfiguration" :: Maybe (AccountTakeoverRiskConfigurationType) , "RiskExceptionConfiguration" :: Maybe (RiskExceptionConfigurationType) } ) -> SetRiskConfigurationRequest
newSetRiskConfigurationRequest' _UserPoolId customize = (SetRiskConfigurationRequest <<< customize) { "UserPoolId": _UserPoolId, "AccountTakeoverRiskConfiguration": Nothing, "ClientId": Nothing, "CompromisedCredentialsRiskConfiguration": Nothing, "RiskExceptionConfiguration": Nothing }



newtype SetRiskConfigurationResponse = SetRiskConfigurationResponse 
  { "RiskConfiguration" :: (RiskConfigurationType)
  }
derive instance newtypeSetRiskConfigurationResponse :: Newtype SetRiskConfigurationResponse _
derive instance repGenericSetRiskConfigurationResponse :: Generic SetRiskConfigurationResponse _
instance showSetRiskConfigurationResponse :: Show SetRiskConfigurationResponse where show = genericShow
instance decodeSetRiskConfigurationResponse :: Decode SetRiskConfigurationResponse where decode = genericDecode options
instance encodeSetRiskConfigurationResponse :: Encode SetRiskConfigurationResponse where encode = genericEncode options

-- | Constructs SetRiskConfigurationResponse from required parameters
newSetRiskConfigurationResponse :: RiskConfigurationType -> SetRiskConfigurationResponse
newSetRiskConfigurationResponse _RiskConfiguration = SetRiskConfigurationResponse { "RiskConfiguration": _RiskConfiguration }

-- | Constructs SetRiskConfigurationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetRiskConfigurationResponse' :: RiskConfigurationType -> ( { "RiskConfiguration" :: (RiskConfigurationType) } -> {"RiskConfiguration" :: (RiskConfigurationType) } ) -> SetRiskConfigurationResponse
newSetRiskConfigurationResponse' _RiskConfiguration customize = (SetRiskConfigurationResponse <<< customize) { "RiskConfiguration": _RiskConfiguration }



newtype SetUICustomizationRequest = SetUICustomizationRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  , "CSS" :: Maybe (CSSType)
  , "ImageFile" :: Maybe (ImageFileType)
  }
derive instance newtypeSetUICustomizationRequest :: Newtype SetUICustomizationRequest _
derive instance repGenericSetUICustomizationRequest :: Generic SetUICustomizationRequest _
instance showSetUICustomizationRequest :: Show SetUICustomizationRequest where show = genericShow
instance decodeSetUICustomizationRequest :: Decode SetUICustomizationRequest where decode = genericDecode options
instance encodeSetUICustomizationRequest :: Encode SetUICustomizationRequest where encode = genericEncode options

-- | Constructs SetUICustomizationRequest from required parameters
newSetUICustomizationRequest :: UserPoolIdType -> SetUICustomizationRequest
newSetUICustomizationRequest _UserPoolId = SetUICustomizationRequest { "UserPoolId": _UserPoolId, "CSS": Nothing, "ClientId": Nothing, "ImageFile": Nothing }

-- | Constructs SetUICustomizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUICustomizationRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CSS" :: Maybe (CSSType) , "ImageFile" :: Maybe (ImageFileType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "CSS" :: Maybe (CSSType) , "ImageFile" :: Maybe (ImageFileType) } ) -> SetUICustomizationRequest
newSetUICustomizationRequest' _UserPoolId customize = (SetUICustomizationRequest <<< customize) { "UserPoolId": _UserPoolId, "CSS": Nothing, "ClientId": Nothing, "ImageFile": Nothing }



newtype SetUICustomizationResponse = SetUICustomizationResponse 
  { "UICustomization" :: (UICustomizationType)
  }
derive instance newtypeSetUICustomizationResponse :: Newtype SetUICustomizationResponse _
derive instance repGenericSetUICustomizationResponse :: Generic SetUICustomizationResponse _
instance showSetUICustomizationResponse :: Show SetUICustomizationResponse where show = genericShow
instance decodeSetUICustomizationResponse :: Decode SetUICustomizationResponse where decode = genericDecode options
instance encodeSetUICustomizationResponse :: Encode SetUICustomizationResponse where encode = genericEncode options

-- | Constructs SetUICustomizationResponse from required parameters
newSetUICustomizationResponse :: UICustomizationType -> SetUICustomizationResponse
newSetUICustomizationResponse _UICustomization = SetUICustomizationResponse { "UICustomization": _UICustomization }

-- | Constructs SetUICustomizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUICustomizationResponse' :: UICustomizationType -> ( { "UICustomization" :: (UICustomizationType) } -> {"UICustomization" :: (UICustomizationType) } ) -> SetUICustomizationResponse
newSetUICustomizationResponse' _UICustomization customize = (SetUICustomizationResponse <<< customize) { "UICustomization": _UICustomization }



newtype SetUserMFAPreferenceRequest = SetUserMFAPreferenceRequest 
  { "SMSMfaSettings" :: Maybe (SMSMfaSettingsType)
  , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType)
  , "AccessToken" :: (TokenModelType)
  }
derive instance newtypeSetUserMFAPreferenceRequest :: Newtype SetUserMFAPreferenceRequest _
derive instance repGenericSetUserMFAPreferenceRequest :: Generic SetUserMFAPreferenceRequest _
instance showSetUserMFAPreferenceRequest :: Show SetUserMFAPreferenceRequest where show = genericShow
instance decodeSetUserMFAPreferenceRequest :: Decode SetUserMFAPreferenceRequest where decode = genericDecode options
instance encodeSetUserMFAPreferenceRequest :: Encode SetUserMFAPreferenceRequest where encode = genericEncode options

-- | Constructs SetUserMFAPreferenceRequest from required parameters
newSetUserMFAPreferenceRequest :: TokenModelType -> SetUserMFAPreferenceRequest
newSetUserMFAPreferenceRequest _AccessToken = SetUserMFAPreferenceRequest { "AccessToken": _AccessToken, "SMSMfaSettings": Nothing, "SoftwareTokenMfaSettings": Nothing }

-- | Constructs SetUserMFAPreferenceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUserMFAPreferenceRequest' :: TokenModelType -> ( { "SMSMfaSettings" :: Maybe (SMSMfaSettingsType) , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType) , "AccessToken" :: (TokenModelType) } -> {"SMSMfaSettings" :: Maybe (SMSMfaSettingsType) , "SoftwareTokenMfaSettings" :: Maybe (SoftwareTokenMfaSettingsType) , "AccessToken" :: (TokenModelType) } ) -> SetUserMFAPreferenceRequest
newSetUserMFAPreferenceRequest' _AccessToken customize = (SetUserMFAPreferenceRequest <<< customize) { "AccessToken": _AccessToken, "SMSMfaSettings": Nothing, "SoftwareTokenMfaSettings": Nothing }



newtype SetUserMFAPreferenceResponse = SetUserMFAPreferenceResponse Types.NoArguments
derive instance newtypeSetUserMFAPreferenceResponse :: Newtype SetUserMFAPreferenceResponse _
derive instance repGenericSetUserMFAPreferenceResponse :: Generic SetUserMFAPreferenceResponse _
instance showSetUserMFAPreferenceResponse :: Show SetUserMFAPreferenceResponse where show = genericShow
instance decodeSetUserMFAPreferenceResponse :: Decode SetUserMFAPreferenceResponse where decode = genericDecode options
instance encodeSetUserMFAPreferenceResponse :: Encode SetUserMFAPreferenceResponse where encode = genericEncode options



newtype SetUserPoolMfaConfigRequest = SetUserPoolMfaConfigRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType)
  , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  }
derive instance newtypeSetUserPoolMfaConfigRequest :: Newtype SetUserPoolMfaConfigRequest _
derive instance repGenericSetUserPoolMfaConfigRequest :: Generic SetUserPoolMfaConfigRequest _
instance showSetUserPoolMfaConfigRequest :: Show SetUserPoolMfaConfigRequest where show = genericShow
instance decodeSetUserPoolMfaConfigRequest :: Decode SetUserPoolMfaConfigRequest where decode = genericDecode options
instance encodeSetUserPoolMfaConfigRequest :: Encode SetUserPoolMfaConfigRequest where encode = genericEncode options

-- | Constructs SetUserPoolMfaConfigRequest from required parameters
newSetUserPoolMfaConfigRequest :: UserPoolIdType -> SetUserPoolMfaConfigRequest
newSetUserPoolMfaConfigRequest _UserPoolId = SetUserPoolMfaConfigRequest { "UserPoolId": _UserPoolId, "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }

-- | Constructs SetUserPoolMfaConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUserPoolMfaConfigRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } -> {"UserPoolId" :: (UserPoolIdType) , "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } ) -> SetUserPoolMfaConfigRequest
newSetUserPoolMfaConfigRequest' _UserPoolId customize = (SetUserPoolMfaConfigRequest <<< customize) { "UserPoolId": _UserPoolId, "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }



newtype SetUserPoolMfaConfigResponse = SetUserPoolMfaConfigResponse 
  { "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType)
  , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  }
derive instance newtypeSetUserPoolMfaConfigResponse :: Newtype SetUserPoolMfaConfigResponse _
derive instance repGenericSetUserPoolMfaConfigResponse :: Generic SetUserPoolMfaConfigResponse _
instance showSetUserPoolMfaConfigResponse :: Show SetUserPoolMfaConfigResponse where show = genericShow
instance decodeSetUserPoolMfaConfigResponse :: Decode SetUserPoolMfaConfigResponse where decode = genericDecode options
instance encodeSetUserPoolMfaConfigResponse :: Encode SetUserPoolMfaConfigResponse where encode = genericEncode options

-- | Constructs SetUserPoolMfaConfigResponse from required parameters
newSetUserPoolMfaConfigResponse :: SetUserPoolMfaConfigResponse
newSetUserPoolMfaConfigResponse  = SetUserPoolMfaConfigResponse { "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }

-- | Constructs SetUserPoolMfaConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUserPoolMfaConfigResponse' :: ( { "SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } -> {"SmsMfaConfiguration" :: Maybe (SmsMfaConfigType) , "SoftwareTokenMfaConfiguration" :: Maybe (SoftwareTokenMfaConfigType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) } ) -> SetUserPoolMfaConfigResponse
newSetUserPoolMfaConfigResponse'  customize = (SetUserPoolMfaConfigResponse <<< customize) { "MfaConfiguration": Nothing, "SmsMfaConfiguration": Nothing, "SoftwareTokenMfaConfiguration": Nothing }



-- | <p>Represents the request to set user settings.</p>
newtype SetUserSettingsRequest = SetUserSettingsRequest 
  { "AccessToken" :: (TokenModelType)
  , "MFAOptions" :: (MFAOptionListType)
  }
derive instance newtypeSetUserSettingsRequest :: Newtype SetUserSettingsRequest _
derive instance repGenericSetUserSettingsRequest :: Generic SetUserSettingsRequest _
instance showSetUserSettingsRequest :: Show SetUserSettingsRequest where show = genericShow
instance decodeSetUserSettingsRequest :: Decode SetUserSettingsRequest where decode = genericDecode options
instance encodeSetUserSettingsRequest :: Encode SetUserSettingsRequest where encode = genericEncode options

-- | Constructs SetUserSettingsRequest from required parameters
newSetUserSettingsRequest :: TokenModelType -> MFAOptionListType -> SetUserSettingsRequest
newSetUserSettingsRequest _AccessToken _MFAOptions = SetUserSettingsRequest { "AccessToken": _AccessToken, "MFAOptions": _MFAOptions }

-- | Constructs SetUserSettingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetUserSettingsRequest' :: TokenModelType -> MFAOptionListType -> ( { "AccessToken" :: (TokenModelType) , "MFAOptions" :: (MFAOptionListType) } -> {"AccessToken" :: (TokenModelType) , "MFAOptions" :: (MFAOptionListType) } ) -> SetUserSettingsRequest
newSetUserSettingsRequest' _AccessToken _MFAOptions customize = (SetUserSettingsRequest <<< customize) { "AccessToken": _AccessToken, "MFAOptions": _MFAOptions }



-- | <p>The response from the server for a set user settings request.</p>
newtype SetUserSettingsResponse = SetUserSettingsResponse Types.NoArguments
derive instance newtypeSetUserSettingsResponse :: Newtype SetUserSettingsResponse _
derive instance repGenericSetUserSettingsResponse :: Generic SetUserSettingsResponse _
instance showSetUserSettingsResponse :: Show SetUserSettingsResponse where show = genericShow
instance decodeSetUserSettingsResponse :: Decode SetUserSettingsResponse where decode = genericDecode options
instance encodeSetUserSettingsResponse :: Encode SetUserSettingsResponse where encode = genericEncode options



-- | <p>Represents the request to register a user.</p>
newtype SignUpRequest = SignUpRequest 
  { "ClientId" :: (ClientIdType)
  , "SecretHash" :: Maybe (SecretHashType)
  , "Username" :: (UsernameType)
  , "Password" :: (PasswordType)
  , "UserAttributes" :: Maybe (AttributeListType)
  , "ValidationData" :: Maybe (AttributeListType)
  , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType)
  , "UserContextData" :: Maybe (UserContextDataType)
  }
derive instance newtypeSignUpRequest :: Newtype SignUpRequest _
derive instance repGenericSignUpRequest :: Generic SignUpRequest _
instance showSignUpRequest :: Show SignUpRequest where show = genericShow
instance decodeSignUpRequest :: Decode SignUpRequest where decode = genericDecode options
instance encodeSignUpRequest :: Encode SignUpRequest where encode = genericEncode options

-- | Constructs SignUpRequest from required parameters
newSignUpRequest :: ClientIdType -> PasswordType -> UsernameType -> SignUpRequest
newSignUpRequest _ClientId _Password _Username = SignUpRequest { "ClientId": _ClientId, "Password": _Password, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserAttributes": Nothing, "UserContextData": Nothing, "ValidationData": Nothing }

-- | Constructs SignUpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignUpRequest' :: ClientIdType -> PasswordType -> UsernameType -> ( { "ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "Password" :: (PasswordType) , "UserAttributes" :: Maybe (AttributeListType) , "ValidationData" :: Maybe (AttributeListType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } -> {"ClientId" :: (ClientIdType) , "SecretHash" :: Maybe (SecretHashType) , "Username" :: (UsernameType) , "Password" :: (PasswordType) , "UserAttributes" :: Maybe (AttributeListType) , "ValidationData" :: Maybe (AttributeListType) , "AnalyticsMetadata" :: Maybe (AnalyticsMetadataType) , "UserContextData" :: Maybe (UserContextDataType) } ) -> SignUpRequest
newSignUpRequest' _ClientId _Password _Username customize = (SignUpRequest <<< customize) { "ClientId": _ClientId, "Password": _Password, "Username": _Username, "AnalyticsMetadata": Nothing, "SecretHash": Nothing, "UserAttributes": Nothing, "UserContextData": Nothing, "ValidationData": Nothing }



-- | <p>The response from the server for a registration request.</p>
newtype SignUpResponse = SignUpResponse 
  { "UserConfirmed" :: (BooleanType)
  , "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType)
  , "UserSub" :: (StringType)
  }
derive instance newtypeSignUpResponse :: Newtype SignUpResponse _
derive instance repGenericSignUpResponse :: Generic SignUpResponse _
instance showSignUpResponse :: Show SignUpResponse where show = genericShow
instance decodeSignUpResponse :: Decode SignUpResponse where decode = genericDecode options
instance encodeSignUpResponse :: Encode SignUpResponse where encode = genericEncode options

-- | Constructs SignUpResponse from required parameters
newSignUpResponse :: BooleanType -> StringType -> SignUpResponse
newSignUpResponse _UserConfirmed _UserSub = SignUpResponse { "UserConfirmed": _UserConfirmed, "UserSub": _UserSub, "CodeDeliveryDetails": Nothing }

-- | Constructs SignUpResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignUpResponse' :: BooleanType -> StringType -> ( { "UserConfirmed" :: (BooleanType) , "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) , "UserSub" :: (StringType) } -> {"UserConfirmed" :: (BooleanType) , "CodeDeliveryDetails" :: Maybe (CodeDeliveryDetailsType) , "UserSub" :: (StringType) } ) -> SignUpResponse
newSignUpResponse' _UserConfirmed _UserSub customize = (SignUpResponse <<< customize) { "UserConfirmed": _UserConfirmed, "UserSub": _UserSub, "CodeDeliveryDetails": Nothing }



newtype SkippedIPRangeListType = SkippedIPRangeListType (Array StringType)
derive instance newtypeSkippedIPRangeListType :: Newtype SkippedIPRangeListType _
derive instance repGenericSkippedIPRangeListType :: Generic SkippedIPRangeListType _
instance showSkippedIPRangeListType :: Show SkippedIPRangeListType where show = genericShow
instance decodeSkippedIPRangeListType :: Decode SkippedIPRangeListType where decode = genericDecode options
instance encodeSkippedIPRangeListType :: Encode SkippedIPRangeListType where encode = genericEncode options



-- | <p>The SMS configuration type.</p>
newtype SmsConfigurationType = SmsConfigurationType 
  { "SnsCallerArn" :: (ArnType)
  , "ExternalId" :: Maybe (StringType)
  }
derive instance newtypeSmsConfigurationType :: Newtype SmsConfigurationType _
derive instance repGenericSmsConfigurationType :: Generic SmsConfigurationType _
instance showSmsConfigurationType :: Show SmsConfigurationType where show = genericShow
instance decodeSmsConfigurationType :: Decode SmsConfigurationType where decode = genericDecode options
instance encodeSmsConfigurationType :: Encode SmsConfigurationType where encode = genericEncode options

-- | Constructs SmsConfigurationType from required parameters
newSmsConfigurationType :: ArnType -> SmsConfigurationType
newSmsConfigurationType _SnsCallerArn = SmsConfigurationType { "SnsCallerArn": _SnsCallerArn, "ExternalId": Nothing }

-- | Constructs SmsConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSmsConfigurationType' :: ArnType -> ( { "SnsCallerArn" :: (ArnType) , "ExternalId" :: Maybe (StringType) } -> {"SnsCallerArn" :: (ArnType) , "ExternalId" :: Maybe (StringType) } ) -> SmsConfigurationType
newSmsConfigurationType' _SnsCallerArn customize = (SmsConfigurationType <<< customize) { "SnsCallerArn": _SnsCallerArn, "ExternalId": Nothing }



-- | <p>The SMS text message multi-factor authentication (MFA) configuration type.</p>
newtype SmsMfaConfigType = SmsMfaConfigType 
  { "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType)
  , "SmsConfiguration" :: Maybe (SmsConfigurationType)
  }
derive instance newtypeSmsMfaConfigType :: Newtype SmsMfaConfigType _
derive instance repGenericSmsMfaConfigType :: Generic SmsMfaConfigType _
instance showSmsMfaConfigType :: Show SmsMfaConfigType where show = genericShow
instance decodeSmsMfaConfigType :: Decode SmsMfaConfigType where decode = genericDecode options
instance encodeSmsMfaConfigType :: Encode SmsMfaConfigType where encode = genericEncode options

-- | Constructs SmsMfaConfigType from required parameters
newSmsMfaConfigType :: SmsMfaConfigType
newSmsMfaConfigType  = SmsMfaConfigType { "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing }

-- | Constructs SmsMfaConfigType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSmsMfaConfigType' :: ( { "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) } -> {"SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) } ) -> SmsMfaConfigType
newSmsMfaConfigType'  customize = (SmsMfaConfigType <<< customize) { "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing }



newtype SmsVerificationMessageType = SmsVerificationMessageType String
derive instance newtypeSmsVerificationMessageType :: Newtype SmsVerificationMessageType _
derive instance repGenericSmsVerificationMessageType :: Generic SmsVerificationMessageType _
instance showSmsVerificationMessageType :: Show SmsVerificationMessageType where show = genericShow
instance decodeSmsVerificationMessageType :: Decode SmsVerificationMessageType where decode = genericDecode options
instance encodeSmsVerificationMessageType :: Encode SmsVerificationMessageType where encode = genericEncode options



-- | <p>This exception is thrown when the software token TOTP multi-factor authentication (MFA) is not enabled for the user pool.</p>
newtype SoftwareTokenMFANotFoundException = SoftwareTokenMFANotFoundException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeSoftwareTokenMFANotFoundException :: Newtype SoftwareTokenMFANotFoundException _
derive instance repGenericSoftwareTokenMFANotFoundException :: Generic SoftwareTokenMFANotFoundException _
instance showSoftwareTokenMFANotFoundException :: Show SoftwareTokenMFANotFoundException where show = genericShow
instance decodeSoftwareTokenMFANotFoundException :: Decode SoftwareTokenMFANotFoundException where decode = genericDecode options
instance encodeSoftwareTokenMFANotFoundException :: Encode SoftwareTokenMFANotFoundException where encode = genericEncode options

-- | Constructs SoftwareTokenMFANotFoundException from required parameters
newSoftwareTokenMFANotFoundException :: SoftwareTokenMFANotFoundException
newSoftwareTokenMFANotFoundException  = SoftwareTokenMFANotFoundException { "message": Nothing }

-- | Constructs SoftwareTokenMFANotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSoftwareTokenMFANotFoundException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> SoftwareTokenMFANotFoundException
newSoftwareTokenMFANotFoundException'  customize = (SoftwareTokenMFANotFoundException <<< customize) { "message": Nothing }



newtype SoftwareTokenMFAUserCodeType = SoftwareTokenMFAUserCodeType String
derive instance newtypeSoftwareTokenMFAUserCodeType :: Newtype SoftwareTokenMFAUserCodeType _
derive instance repGenericSoftwareTokenMFAUserCodeType :: Generic SoftwareTokenMFAUserCodeType _
instance showSoftwareTokenMFAUserCodeType :: Show SoftwareTokenMFAUserCodeType where show = genericShow
instance decodeSoftwareTokenMFAUserCodeType :: Decode SoftwareTokenMFAUserCodeType where decode = genericDecode options
instance encodeSoftwareTokenMFAUserCodeType :: Encode SoftwareTokenMFAUserCodeType where encode = genericEncode options



-- | <p>The type used for enabling software token MFA at the user pool level.</p>
newtype SoftwareTokenMfaConfigType = SoftwareTokenMfaConfigType 
  { "Enabled" :: Maybe (BooleanType)
  }
derive instance newtypeSoftwareTokenMfaConfigType :: Newtype SoftwareTokenMfaConfigType _
derive instance repGenericSoftwareTokenMfaConfigType :: Generic SoftwareTokenMfaConfigType _
instance showSoftwareTokenMfaConfigType :: Show SoftwareTokenMfaConfigType where show = genericShow
instance decodeSoftwareTokenMfaConfigType :: Decode SoftwareTokenMfaConfigType where decode = genericDecode options
instance encodeSoftwareTokenMfaConfigType :: Encode SoftwareTokenMfaConfigType where encode = genericEncode options

-- | Constructs SoftwareTokenMfaConfigType from required parameters
newSoftwareTokenMfaConfigType :: SoftwareTokenMfaConfigType
newSoftwareTokenMfaConfigType  = SoftwareTokenMfaConfigType { "Enabled": Nothing }

-- | Constructs SoftwareTokenMfaConfigType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSoftwareTokenMfaConfigType' :: ( { "Enabled" :: Maybe (BooleanType) } -> {"Enabled" :: Maybe (BooleanType) } ) -> SoftwareTokenMfaConfigType
newSoftwareTokenMfaConfigType'  customize = (SoftwareTokenMfaConfigType <<< customize) { "Enabled": Nothing }



-- | <p>The type used for enabling software token MFA at the user level.</p>
newtype SoftwareTokenMfaSettingsType = SoftwareTokenMfaSettingsType 
  { "Enabled" :: Maybe (BooleanType)
  , "PreferredMfa" :: Maybe (BooleanType)
  }
derive instance newtypeSoftwareTokenMfaSettingsType :: Newtype SoftwareTokenMfaSettingsType _
derive instance repGenericSoftwareTokenMfaSettingsType :: Generic SoftwareTokenMfaSettingsType _
instance showSoftwareTokenMfaSettingsType :: Show SoftwareTokenMfaSettingsType where show = genericShow
instance decodeSoftwareTokenMfaSettingsType :: Decode SoftwareTokenMfaSettingsType where decode = genericDecode options
instance encodeSoftwareTokenMfaSettingsType :: Encode SoftwareTokenMfaSettingsType where encode = genericEncode options

-- | Constructs SoftwareTokenMfaSettingsType from required parameters
newSoftwareTokenMfaSettingsType :: SoftwareTokenMfaSettingsType
newSoftwareTokenMfaSettingsType  = SoftwareTokenMfaSettingsType { "Enabled": Nothing, "PreferredMfa": Nothing }

-- | Constructs SoftwareTokenMfaSettingsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSoftwareTokenMfaSettingsType' :: ( { "Enabled" :: Maybe (BooleanType) , "PreferredMfa" :: Maybe (BooleanType) } -> {"Enabled" :: Maybe (BooleanType) , "PreferredMfa" :: Maybe (BooleanType) } ) -> SoftwareTokenMfaSettingsType
newSoftwareTokenMfaSettingsType'  customize = (SoftwareTokenMfaSettingsType <<< customize) { "Enabled": Nothing, "PreferredMfa": Nothing }



-- | <p>Represents the request to start the user import job.</p>
newtype StartUserImportJobRequest = StartUserImportJobRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "JobId" :: (UserImportJobIdType)
  }
derive instance newtypeStartUserImportJobRequest :: Newtype StartUserImportJobRequest _
derive instance repGenericStartUserImportJobRequest :: Generic StartUserImportJobRequest _
instance showStartUserImportJobRequest :: Show StartUserImportJobRequest where show = genericShow
instance decodeStartUserImportJobRequest :: Decode StartUserImportJobRequest where decode = genericDecode options
instance encodeStartUserImportJobRequest :: Encode StartUserImportJobRequest where encode = genericEncode options

-- | Constructs StartUserImportJobRequest from required parameters
newStartUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> StartUserImportJobRequest
newStartUserImportJobRequest _JobId _UserPoolId = StartUserImportJobRequest { "JobId": _JobId, "UserPoolId": _UserPoolId }

-- | Constructs StartUserImportJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } ) -> StartUserImportJobRequest
newStartUserImportJobRequest' _JobId _UserPoolId customize = (StartUserImportJobRequest <<< customize) { "JobId": _JobId, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server to the request to start the user import job.</p>
newtype StartUserImportJobResponse = StartUserImportJobResponse 
  { "UserImportJob" :: Maybe (UserImportJobType)
  }
derive instance newtypeStartUserImportJobResponse :: Newtype StartUserImportJobResponse _
derive instance repGenericStartUserImportJobResponse :: Generic StartUserImportJobResponse _
instance showStartUserImportJobResponse :: Show StartUserImportJobResponse where show = genericShow
instance decodeStartUserImportJobResponse :: Decode StartUserImportJobResponse where decode = genericDecode options
instance encodeStartUserImportJobResponse :: Encode StartUserImportJobResponse where encode = genericEncode options

-- | Constructs StartUserImportJobResponse from required parameters
newStartUserImportJobResponse :: StartUserImportJobResponse
newStartUserImportJobResponse  = StartUserImportJobResponse { "UserImportJob": Nothing }

-- | Constructs StartUserImportJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartUserImportJobResponse' :: ( { "UserImportJob" :: Maybe (UserImportJobType) } -> {"UserImportJob" :: Maybe (UserImportJobType) } ) -> StartUserImportJobResponse
newStartUserImportJobResponse'  customize = (StartUserImportJobResponse <<< customize) { "UserImportJob": Nothing }



newtype StatusType = StatusType String
derive instance newtypeStatusType :: Newtype StatusType _
derive instance repGenericStatusType :: Generic StatusType _
instance showStatusType :: Show StatusType where show = genericShow
instance decodeStatusType :: Decode StatusType where decode = genericDecode options
instance encodeStatusType :: Encode StatusType where encode = genericEncode options



-- | <p>Represents the request to stop the user import job.</p>
newtype StopUserImportJobRequest = StopUserImportJobRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "JobId" :: (UserImportJobIdType)
  }
derive instance newtypeStopUserImportJobRequest :: Newtype StopUserImportJobRequest _
derive instance repGenericStopUserImportJobRequest :: Generic StopUserImportJobRequest _
instance showStopUserImportJobRequest :: Show StopUserImportJobRequest where show = genericShow
instance decodeStopUserImportJobRequest :: Decode StopUserImportJobRequest where decode = genericDecode options
instance encodeStopUserImportJobRequest :: Encode StopUserImportJobRequest where encode = genericEncode options

-- | Constructs StopUserImportJobRequest from required parameters
newStopUserImportJobRequest :: UserImportJobIdType -> UserPoolIdType -> StopUserImportJobRequest
newStopUserImportJobRequest _JobId _UserPoolId = StopUserImportJobRequest { "JobId": _JobId, "UserPoolId": _UserPoolId }

-- | Constructs StopUserImportJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopUserImportJobRequest' :: UserImportJobIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } -> {"UserPoolId" :: (UserPoolIdType) , "JobId" :: (UserImportJobIdType) } ) -> StopUserImportJobRequest
newStopUserImportJobRequest' _JobId _UserPoolId customize = (StopUserImportJobRequest <<< customize) { "JobId": _JobId, "UserPoolId": _UserPoolId }



-- | <p>Represents the response from the server to the request to stop the user import job.</p>
newtype StopUserImportJobResponse = StopUserImportJobResponse 
  { "UserImportJob" :: Maybe (UserImportJobType)
  }
derive instance newtypeStopUserImportJobResponse :: Newtype StopUserImportJobResponse _
derive instance repGenericStopUserImportJobResponse :: Generic StopUserImportJobResponse _
instance showStopUserImportJobResponse :: Show StopUserImportJobResponse where show = genericShow
instance decodeStopUserImportJobResponse :: Decode StopUserImportJobResponse where decode = genericDecode options
instance encodeStopUserImportJobResponse :: Encode StopUserImportJobResponse where encode = genericEncode options

-- | Constructs StopUserImportJobResponse from required parameters
newStopUserImportJobResponse :: StopUserImportJobResponse
newStopUserImportJobResponse  = StopUserImportJobResponse { "UserImportJob": Nothing }

-- | Constructs StopUserImportJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopUserImportJobResponse' :: ( { "UserImportJob" :: Maybe (UserImportJobType) } -> {"UserImportJob" :: Maybe (UserImportJobType) } ) -> StopUserImportJobResponse
newStopUserImportJobResponse'  customize = (StopUserImportJobResponse <<< customize) { "UserImportJob": Nothing }



-- | <p>The constraints associated with a string attribute.</p>
newtype StringAttributeConstraintsType = StringAttributeConstraintsType 
  { "MinLength" :: Maybe (StringType)
  , "MaxLength" :: Maybe (StringType)
  }
derive instance newtypeStringAttributeConstraintsType :: Newtype StringAttributeConstraintsType _
derive instance repGenericStringAttributeConstraintsType :: Generic StringAttributeConstraintsType _
instance showStringAttributeConstraintsType :: Show StringAttributeConstraintsType where show = genericShow
instance decodeStringAttributeConstraintsType :: Decode StringAttributeConstraintsType where decode = genericDecode options
instance encodeStringAttributeConstraintsType :: Encode StringAttributeConstraintsType where encode = genericEncode options

-- | Constructs StringAttributeConstraintsType from required parameters
newStringAttributeConstraintsType :: StringAttributeConstraintsType
newStringAttributeConstraintsType  = StringAttributeConstraintsType { "MaxLength": Nothing, "MinLength": Nothing }

-- | Constructs StringAttributeConstraintsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStringAttributeConstraintsType' :: ( { "MinLength" :: Maybe (StringType) , "MaxLength" :: Maybe (StringType) } -> {"MinLength" :: Maybe (StringType) , "MaxLength" :: Maybe (StringType) } ) -> StringAttributeConstraintsType
newStringAttributeConstraintsType'  customize = (StringAttributeConstraintsType <<< customize) { "MaxLength": Nothing, "MinLength": Nothing }



newtype StringType = StringType String
derive instance newtypeStringType :: Newtype StringType _
derive instance repGenericStringType :: Generic StringType _
instance showStringType :: Show StringType where show = genericShow
instance decodeStringType :: Decode StringType where decode = genericDecode options
instance encodeStringType :: Encode StringType where encode = genericEncode options



newtype SupportedIdentityProvidersListType = SupportedIdentityProvidersListType (Array ProviderNameType)
derive instance newtypeSupportedIdentityProvidersListType :: Newtype SupportedIdentityProvidersListType _
derive instance repGenericSupportedIdentityProvidersListType :: Generic SupportedIdentityProvidersListType _
instance showSupportedIdentityProvidersListType :: Show SupportedIdentityProvidersListType where show = genericShow
instance decodeSupportedIdentityProvidersListType :: Decode SupportedIdentityProvidersListType where decode = genericDecode options
instance encodeSupportedIdentityProvidersListType :: Encode SupportedIdentityProvidersListType where encode = genericEncode options



newtype TokenModelType = TokenModelType String
derive instance newtypeTokenModelType :: Newtype TokenModelType _
derive instance repGenericTokenModelType :: Generic TokenModelType _
instance showTokenModelType :: Show TokenModelType where show = genericShow
instance decodeTokenModelType :: Decode TokenModelType where decode = genericDecode options
instance encodeTokenModelType :: Encode TokenModelType where encode = genericEncode options



-- | <p>This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>
newtype TooManyFailedAttemptsException = TooManyFailedAttemptsException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeTooManyFailedAttemptsException :: Newtype TooManyFailedAttemptsException _
derive instance repGenericTooManyFailedAttemptsException :: Generic TooManyFailedAttemptsException _
instance showTooManyFailedAttemptsException :: Show TooManyFailedAttemptsException where show = genericShow
instance decodeTooManyFailedAttemptsException :: Decode TooManyFailedAttemptsException where decode = genericDecode options
instance encodeTooManyFailedAttemptsException :: Encode TooManyFailedAttemptsException where encode = genericEncode options

-- | Constructs TooManyFailedAttemptsException from required parameters
newTooManyFailedAttemptsException :: TooManyFailedAttemptsException
newTooManyFailedAttemptsException  = TooManyFailedAttemptsException { "message": Nothing }

-- | Constructs TooManyFailedAttemptsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyFailedAttemptsException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> TooManyFailedAttemptsException
newTooManyFailedAttemptsException'  customize = (TooManyFailedAttemptsException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the user has made too many requests for a given operation.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "message": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "message": Nothing }



-- | <p>A container for the UI customization information for a user pool's built-in app UI.</p>
newtype UICustomizationType = UICustomizationType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "ClientId" :: Maybe (ClientIdType)
  , "ImageUrl" :: Maybe (ImageUrlType)
  , "CSS" :: Maybe (CSSType)
  , "CSSVersion" :: Maybe (CSSVersionType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  }
derive instance newtypeUICustomizationType :: Newtype UICustomizationType _
derive instance repGenericUICustomizationType :: Generic UICustomizationType _
instance showUICustomizationType :: Show UICustomizationType where show = genericShow
instance decodeUICustomizationType :: Decode UICustomizationType where decode = genericDecode options
instance encodeUICustomizationType :: Encode UICustomizationType where encode = genericEncode options

-- | Constructs UICustomizationType from required parameters
newUICustomizationType :: UICustomizationType
newUICustomizationType  = UICustomizationType { "CSS": Nothing, "CSSVersion": Nothing, "ClientId": Nothing, "CreationDate": Nothing, "ImageUrl": Nothing, "LastModifiedDate": Nothing, "UserPoolId": Nothing }

-- | Constructs UICustomizationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUICustomizationType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "ImageUrl" :: Maybe (ImageUrlType) , "CSS" :: Maybe (CSSType) , "CSSVersion" :: Maybe (CSSVersionType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "ClientId" :: Maybe (ClientIdType) , "ImageUrl" :: Maybe (ImageUrlType) , "CSS" :: Maybe (CSSType) , "CSSVersion" :: Maybe (CSSVersionType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } ) -> UICustomizationType
newUICustomizationType'  customize = (UICustomizationType <<< customize) { "CSS": Nothing, "CSSVersion": Nothing, "ClientId": Nothing, "CreationDate": Nothing, "ImageUrl": Nothing, "LastModifiedDate": Nothing, "UserPoolId": Nothing }



-- | <p>This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>
newtype UnexpectedLambdaException = UnexpectedLambdaException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUnexpectedLambdaException :: Newtype UnexpectedLambdaException _
derive instance repGenericUnexpectedLambdaException :: Generic UnexpectedLambdaException _
instance showUnexpectedLambdaException :: Show UnexpectedLambdaException where show = genericShow
instance decodeUnexpectedLambdaException :: Decode UnexpectedLambdaException where decode = genericDecode options
instance encodeUnexpectedLambdaException :: Encode UnexpectedLambdaException where encode = genericEncode options

-- | Constructs UnexpectedLambdaException from required parameters
newUnexpectedLambdaException :: UnexpectedLambdaException
newUnexpectedLambdaException  = UnexpectedLambdaException { "message": Nothing }

-- | Constructs UnexpectedLambdaException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnexpectedLambdaException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UnexpectedLambdaException
newUnexpectedLambdaException'  customize = (UnexpectedLambdaException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when the specified identifier is not supported.</p>
newtype UnsupportedIdentityProviderException = UnsupportedIdentityProviderException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUnsupportedIdentityProviderException :: Newtype UnsupportedIdentityProviderException _
derive instance repGenericUnsupportedIdentityProviderException :: Generic UnsupportedIdentityProviderException _
instance showUnsupportedIdentityProviderException :: Show UnsupportedIdentityProviderException where show = genericShow
instance decodeUnsupportedIdentityProviderException :: Decode UnsupportedIdentityProviderException where decode = genericDecode options
instance encodeUnsupportedIdentityProviderException :: Encode UnsupportedIdentityProviderException where encode = genericEncode options

-- | Constructs UnsupportedIdentityProviderException from required parameters
newUnsupportedIdentityProviderException :: UnsupportedIdentityProviderException
newUnsupportedIdentityProviderException  = UnsupportedIdentityProviderException { "message": Nothing }

-- | Constructs UnsupportedIdentityProviderException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedIdentityProviderException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UnsupportedIdentityProviderException
newUnsupportedIdentityProviderException'  customize = (UnsupportedIdentityProviderException <<< customize) { "message": Nothing }



-- | <p>The request failed because the user is in an unsupported state.</p>
newtype UnsupportedUserStateException = UnsupportedUserStateException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUnsupportedUserStateException :: Newtype UnsupportedUserStateException _
derive instance repGenericUnsupportedUserStateException :: Generic UnsupportedUserStateException _
instance showUnsupportedUserStateException :: Show UnsupportedUserStateException where show = genericShow
instance decodeUnsupportedUserStateException :: Decode UnsupportedUserStateException where decode = genericDecode options
instance encodeUnsupportedUserStateException :: Encode UnsupportedUserStateException where encode = genericEncode options

-- | Constructs UnsupportedUserStateException from required parameters
newUnsupportedUserStateException :: UnsupportedUserStateException
newUnsupportedUserStateException  = UnsupportedUserStateException { "message": Nothing }

-- | Constructs UnsupportedUserStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedUserStateException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UnsupportedUserStateException
newUnsupportedUserStateException'  customize = (UnsupportedUserStateException <<< customize) { "message": Nothing }



newtype UpdateAuthEventFeedbackRequest = UpdateAuthEventFeedbackRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Username" :: (UsernameType)
  , "EventId" :: (EventIdType)
  , "FeedbackToken" :: (TokenModelType)
  , "FeedbackValue" :: (FeedbackValueType)
  }
derive instance newtypeUpdateAuthEventFeedbackRequest :: Newtype UpdateAuthEventFeedbackRequest _
derive instance repGenericUpdateAuthEventFeedbackRequest :: Generic UpdateAuthEventFeedbackRequest _
instance showUpdateAuthEventFeedbackRequest :: Show UpdateAuthEventFeedbackRequest where show = genericShow
instance decodeUpdateAuthEventFeedbackRequest :: Decode UpdateAuthEventFeedbackRequest where decode = genericDecode options
instance encodeUpdateAuthEventFeedbackRequest :: Encode UpdateAuthEventFeedbackRequest where encode = genericEncode options

-- | Constructs UpdateAuthEventFeedbackRequest from required parameters
newUpdateAuthEventFeedbackRequest :: EventIdType -> TokenModelType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> UpdateAuthEventFeedbackRequest
newUpdateAuthEventFeedbackRequest _EventId _FeedbackToken _FeedbackValue _UserPoolId _Username = UpdateAuthEventFeedbackRequest { "EventId": _EventId, "FeedbackToken": _FeedbackToken, "FeedbackValue": _FeedbackValue, "UserPoolId": _UserPoolId, "Username": _Username }

-- | Constructs UpdateAuthEventFeedbackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAuthEventFeedbackRequest' :: EventIdType -> TokenModelType -> FeedbackValueType -> UserPoolIdType -> UsernameType -> ( { "UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "EventId" :: (EventIdType) , "FeedbackToken" :: (TokenModelType) , "FeedbackValue" :: (FeedbackValueType) } -> {"UserPoolId" :: (UserPoolIdType) , "Username" :: (UsernameType) , "EventId" :: (EventIdType) , "FeedbackToken" :: (TokenModelType) , "FeedbackValue" :: (FeedbackValueType) } ) -> UpdateAuthEventFeedbackRequest
newUpdateAuthEventFeedbackRequest' _EventId _FeedbackToken _FeedbackValue _UserPoolId _Username customize = (UpdateAuthEventFeedbackRequest <<< customize) { "EventId": _EventId, "FeedbackToken": _FeedbackToken, "FeedbackValue": _FeedbackValue, "UserPoolId": _UserPoolId, "Username": _Username }



newtype UpdateAuthEventFeedbackResponse = UpdateAuthEventFeedbackResponse Types.NoArguments
derive instance newtypeUpdateAuthEventFeedbackResponse :: Newtype UpdateAuthEventFeedbackResponse _
derive instance repGenericUpdateAuthEventFeedbackResponse :: Generic UpdateAuthEventFeedbackResponse _
instance showUpdateAuthEventFeedbackResponse :: Show UpdateAuthEventFeedbackResponse where show = genericShow
instance decodeUpdateAuthEventFeedbackResponse :: Decode UpdateAuthEventFeedbackResponse where decode = genericDecode options
instance encodeUpdateAuthEventFeedbackResponse :: Encode UpdateAuthEventFeedbackResponse where encode = genericEncode options



-- | <p>Represents the request to update the device status.</p>
newtype UpdateDeviceStatusRequest = UpdateDeviceStatusRequest 
  { "AccessToken" :: (TokenModelType)
  , "DeviceKey" :: (DeviceKeyType)
  , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType)
  }
derive instance newtypeUpdateDeviceStatusRequest :: Newtype UpdateDeviceStatusRequest _
derive instance repGenericUpdateDeviceStatusRequest :: Generic UpdateDeviceStatusRequest _
instance showUpdateDeviceStatusRequest :: Show UpdateDeviceStatusRequest where show = genericShow
instance decodeUpdateDeviceStatusRequest :: Decode UpdateDeviceStatusRequest where decode = genericDecode options
instance encodeUpdateDeviceStatusRequest :: Encode UpdateDeviceStatusRequest where encode = genericEncode options

-- | Constructs UpdateDeviceStatusRequest from required parameters
newUpdateDeviceStatusRequest :: TokenModelType -> DeviceKeyType -> UpdateDeviceStatusRequest
newUpdateDeviceStatusRequest _AccessToken _DeviceKey = UpdateDeviceStatusRequest { "AccessToken": _AccessToken, "DeviceKey": _DeviceKey, "DeviceRememberedStatus": Nothing }

-- | Constructs UpdateDeviceStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDeviceStatusRequest' :: TokenModelType -> DeviceKeyType -> ( { "AccessToken" :: (TokenModelType) , "DeviceKey" :: (DeviceKeyType) , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType) } -> {"AccessToken" :: (TokenModelType) , "DeviceKey" :: (DeviceKeyType) , "DeviceRememberedStatus" :: Maybe (DeviceRememberedStatusType) } ) -> UpdateDeviceStatusRequest
newUpdateDeviceStatusRequest' _AccessToken _DeviceKey customize = (UpdateDeviceStatusRequest <<< customize) { "AccessToken": _AccessToken, "DeviceKey": _DeviceKey, "DeviceRememberedStatus": Nothing }



-- | <p>The response to the request to update the device status.</p>
newtype UpdateDeviceStatusResponse = UpdateDeviceStatusResponse Types.NoArguments
derive instance newtypeUpdateDeviceStatusResponse :: Newtype UpdateDeviceStatusResponse _
derive instance repGenericUpdateDeviceStatusResponse :: Generic UpdateDeviceStatusResponse _
instance showUpdateDeviceStatusResponse :: Show UpdateDeviceStatusResponse where show = genericShow
instance decodeUpdateDeviceStatusResponse :: Decode UpdateDeviceStatusResponse where decode = genericDecode options
instance encodeUpdateDeviceStatusResponse :: Encode UpdateDeviceStatusResponse where encode = genericEncode options



newtype UpdateGroupRequest = UpdateGroupRequest 
  { "GroupName" :: (GroupNameType)
  , "UserPoolId" :: (UserPoolIdType)
  , "Description" :: Maybe (DescriptionType)
  , "RoleArn" :: Maybe (ArnType)
  , "Precedence" :: Maybe (PrecedenceType)
  }
derive instance newtypeUpdateGroupRequest :: Newtype UpdateGroupRequest _
derive instance repGenericUpdateGroupRequest :: Generic UpdateGroupRequest _
instance showUpdateGroupRequest :: Show UpdateGroupRequest where show = genericShow
instance decodeUpdateGroupRequest :: Decode UpdateGroupRequest where decode = genericDecode options
instance encodeUpdateGroupRequest :: Encode UpdateGroupRequest where encode = genericEncode options

-- | Constructs UpdateGroupRequest from required parameters
newUpdateGroupRequest :: GroupNameType -> UserPoolIdType -> UpdateGroupRequest
newUpdateGroupRequest _GroupName _UserPoolId = UpdateGroupRequest { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Description": Nothing, "Precedence": Nothing, "RoleArn": Nothing }

-- | Constructs UpdateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupRequest' :: GroupNameType -> UserPoolIdType -> ( { "GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) } -> {"GroupName" :: (GroupNameType) , "UserPoolId" :: (UserPoolIdType) , "Description" :: Maybe (DescriptionType) , "RoleArn" :: Maybe (ArnType) , "Precedence" :: Maybe (PrecedenceType) } ) -> UpdateGroupRequest
newUpdateGroupRequest' _GroupName _UserPoolId customize = (UpdateGroupRequest <<< customize) { "GroupName": _GroupName, "UserPoolId": _UserPoolId, "Description": Nothing, "Precedence": Nothing, "RoleArn": Nothing }



newtype UpdateGroupResponse = UpdateGroupResponse 
  { "Group" :: Maybe (GroupType)
  }
derive instance newtypeUpdateGroupResponse :: Newtype UpdateGroupResponse _
derive instance repGenericUpdateGroupResponse :: Generic UpdateGroupResponse _
instance showUpdateGroupResponse :: Show UpdateGroupResponse where show = genericShow
instance decodeUpdateGroupResponse :: Decode UpdateGroupResponse where decode = genericDecode options
instance encodeUpdateGroupResponse :: Encode UpdateGroupResponse where encode = genericEncode options

-- | Constructs UpdateGroupResponse from required parameters
newUpdateGroupResponse :: UpdateGroupResponse
newUpdateGroupResponse  = UpdateGroupResponse { "Group": Nothing }

-- | Constructs UpdateGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupResponse' :: ( { "Group" :: Maybe (GroupType) } -> {"Group" :: Maybe (GroupType) } ) -> UpdateGroupResponse
newUpdateGroupResponse'  customize = (UpdateGroupResponse <<< customize) { "Group": Nothing }



newtype UpdateIdentityProviderRequest = UpdateIdentityProviderRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ProviderName" :: (ProviderNameType)
  , "ProviderDetails" :: Maybe (ProviderDetailsType)
  , "AttributeMapping" :: Maybe (AttributeMappingType)
  , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType)
  }
derive instance newtypeUpdateIdentityProviderRequest :: Newtype UpdateIdentityProviderRequest _
derive instance repGenericUpdateIdentityProviderRequest :: Generic UpdateIdentityProviderRequest _
instance showUpdateIdentityProviderRequest :: Show UpdateIdentityProviderRequest where show = genericShow
instance decodeUpdateIdentityProviderRequest :: Decode UpdateIdentityProviderRequest where decode = genericDecode options
instance encodeUpdateIdentityProviderRequest :: Encode UpdateIdentityProviderRequest where encode = genericEncode options

-- | Constructs UpdateIdentityProviderRequest from required parameters
newUpdateIdentityProviderRequest :: ProviderNameType -> UserPoolIdType -> UpdateIdentityProviderRequest
newUpdateIdentityProviderRequest _ProviderName _UserPoolId = UpdateIdentityProviderRequest { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId, "AttributeMapping": Nothing, "IdpIdentifiers": Nothing, "ProviderDetails": Nothing }

-- | Constructs UpdateIdentityProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIdentityProviderRequest' :: ProviderNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) , "ProviderDetails" :: Maybe (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) } -> {"UserPoolId" :: (UserPoolIdType) , "ProviderName" :: (ProviderNameType) , "ProviderDetails" :: Maybe (ProviderDetailsType) , "AttributeMapping" :: Maybe (AttributeMappingType) , "IdpIdentifiers" :: Maybe (IdpIdentifiersListType) } ) -> UpdateIdentityProviderRequest
newUpdateIdentityProviderRequest' _ProviderName _UserPoolId customize = (UpdateIdentityProviderRequest <<< customize) { "ProviderName": _ProviderName, "UserPoolId": _UserPoolId, "AttributeMapping": Nothing, "IdpIdentifiers": Nothing, "ProviderDetails": Nothing }



newtype UpdateIdentityProviderResponse = UpdateIdentityProviderResponse 
  { "IdentityProvider" :: (IdentityProviderType)
  }
derive instance newtypeUpdateIdentityProviderResponse :: Newtype UpdateIdentityProviderResponse _
derive instance repGenericUpdateIdentityProviderResponse :: Generic UpdateIdentityProviderResponse _
instance showUpdateIdentityProviderResponse :: Show UpdateIdentityProviderResponse where show = genericShow
instance decodeUpdateIdentityProviderResponse :: Decode UpdateIdentityProviderResponse where decode = genericDecode options
instance encodeUpdateIdentityProviderResponse :: Encode UpdateIdentityProviderResponse where encode = genericEncode options

-- | Constructs UpdateIdentityProviderResponse from required parameters
newUpdateIdentityProviderResponse :: IdentityProviderType -> UpdateIdentityProviderResponse
newUpdateIdentityProviderResponse _IdentityProvider = UpdateIdentityProviderResponse { "IdentityProvider": _IdentityProvider }

-- | Constructs UpdateIdentityProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIdentityProviderResponse' :: IdentityProviderType -> ( { "IdentityProvider" :: (IdentityProviderType) } -> {"IdentityProvider" :: (IdentityProviderType) } ) -> UpdateIdentityProviderResponse
newUpdateIdentityProviderResponse' _IdentityProvider customize = (UpdateIdentityProviderResponse <<< customize) { "IdentityProvider": _IdentityProvider }



newtype UpdateResourceServerRequest = UpdateResourceServerRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Identifier" :: (ResourceServerIdentifierType)
  , "Name" :: (ResourceServerNameType)
  , "Scopes" :: Maybe (ResourceServerScopeListType)
  }
derive instance newtypeUpdateResourceServerRequest :: Newtype UpdateResourceServerRequest _
derive instance repGenericUpdateResourceServerRequest :: Generic UpdateResourceServerRequest _
instance showUpdateResourceServerRequest :: Show UpdateResourceServerRequest where show = genericShow
instance decodeUpdateResourceServerRequest :: Decode UpdateResourceServerRequest where decode = genericDecode options
instance encodeUpdateResourceServerRequest :: Encode UpdateResourceServerRequest where encode = genericEncode options

-- | Constructs UpdateResourceServerRequest from required parameters
newUpdateResourceServerRequest :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> UpdateResourceServerRequest
newUpdateResourceServerRequest _Identifier _Name _UserPoolId = UpdateResourceServerRequest { "Identifier": _Identifier, "Name": _Name, "UserPoolId": _UserPoolId, "Scopes": Nothing }

-- | Constructs UpdateResourceServerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateResourceServerRequest' :: ResourceServerIdentifierType -> ResourceServerNameType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) , "Name" :: (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } -> {"UserPoolId" :: (UserPoolIdType) , "Identifier" :: (ResourceServerIdentifierType) , "Name" :: (ResourceServerNameType) , "Scopes" :: Maybe (ResourceServerScopeListType) } ) -> UpdateResourceServerRequest
newUpdateResourceServerRequest' _Identifier _Name _UserPoolId customize = (UpdateResourceServerRequest <<< customize) { "Identifier": _Identifier, "Name": _Name, "UserPoolId": _UserPoolId, "Scopes": Nothing }



newtype UpdateResourceServerResponse = UpdateResourceServerResponse 
  { "ResourceServer" :: (ResourceServerType)
  }
derive instance newtypeUpdateResourceServerResponse :: Newtype UpdateResourceServerResponse _
derive instance repGenericUpdateResourceServerResponse :: Generic UpdateResourceServerResponse _
instance showUpdateResourceServerResponse :: Show UpdateResourceServerResponse where show = genericShow
instance decodeUpdateResourceServerResponse :: Decode UpdateResourceServerResponse where decode = genericDecode options
instance encodeUpdateResourceServerResponse :: Encode UpdateResourceServerResponse where encode = genericEncode options

-- | Constructs UpdateResourceServerResponse from required parameters
newUpdateResourceServerResponse :: ResourceServerType -> UpdateResourceServerResponse
newUpdateResourceServerResponse _ResourceServer = UpdateResourceServerResponse { "ResourceServer": _ResourceServer }

-- | Constructs UpdateResourceServerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateResourceServerResponse' :: ResourceServerType -> ( { "ResourceServer" :: (ResourceServerType) } -> {"ResourceServer" :: (ResourceServerType) } ) -> UpdateResourceServerResponse
newUpdateResourceServerResponse' _ResourceServer customize = (UpdateResourceServerResponse <<< customize) { "ResourceServer": _ResourceServer }



-- | <p>Represents the request to update user attributes.</p>
newtype UpdateUserAttributesRequest = UpdateUserAttributesRequest 
  { "UserAttributes" :: (AttributeListType)
  , "AccessToken" :: (TokenModelType)
  }
derive instance newtypeUpdateUserAttributesRequest :: Newtype UpdateUserAttributesRequest _
derive instance repGenericUpdateUserAttributesRequest :: Generic UpdateUserAttributesRequest _
instance showUpdateUserAttributesRequest :: Show UpdateUserAttributesRequest where show = genericShow
instance decodeUpdateUserAttributesRequest :: Decode UpdateUserAttributesRequest where decode = genericDecode options
instance encodeUpdateUserAttributesRequest :: Encode UpdateUserAttributesRequest where encode = genericEncode options

-- | Constructs UpdateUserAttributesRequest from required parameters
newUpdateUserAttributesRequest :: TokenModelType -> AttributeListType -> UpdateUserAttributesRequest
newUpdateUserAttributesRequest _AccessToken _UserAttributes = UpdateUserAttributesRequest { "AccessToken": _AccessToken, "UserAttributes": _UserAttributes }

-- | Constructs UpdateUserAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserAttributesRequest' :: TokenModelType -> AttributeListType -> ( { "UserAttributes" :: (AttributeListType) , "AccessToken" :: (TokenModelType) } -> {"UserAttributes" :: (AttributeListType) , "AccessToken" :: (TokenModelType) } ) -> UpdateUserAttributesRequest
newUpdateUserAttributesRequest' _AccessToken _UserAttributes customize = (UpdateUserAttributesRequest <<< customize) { "AccessToken": _AccessToken, "UserAttributes": _UserAttributes }



-- | <p>Represents the response from the server for the request to update user attributes.</p>
newtype UpdateUserAttributesResponse = UpdateUserAttributesResponse 
  { "CodeDeliveryDetailsList" :: Maybe (CodeDeliveryDetailsListType)
  }
derive instance newtypeUpdateUserAttributesResponse :: Newtype UpdateUserAttributesResponse _
derive instance repGenericUpdateUserAttributesResponse :: Generic UpdateUserAttributesResponse _
instance showUpdateUserAttributesResponse :: Show UpdateUserAttributesResponse where show = genericShow
instance decodeUpdateUserAttributesResponse :: Decode UpdateUserAttributesResponse where decode = genericDecode options
instance encodeUpdateUserAttributesResponse :: Encode UpdateUserAttributesResponse where encode = genericEncode options

-- | Constructs UpdateUserAttributesResponse from required parameters
newUpdateUserAttributesResponse :: UpdateUserAttributesResponse
newUpdateUserAttributesResponse  = UpdateUserAttributesResponse { "CodeDeliveryDetailsList": Nothing }

-- | Constructs UpdateUserAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserAttributesResponse' :: ( { "CodeDeliveryDetailsList" :: Maybe (CodeDeliveryDetailsListType) } -> {"CodeDeliveryDetailsList" :: Maybe (CodeDeliveryDetailsListType) } ) -> UpdateUserAttributesResponse
newUpdateUserAttributesResponse'  customize = (UpdateUserAttributesResponse <<< customize) { "CodeDeliveryDetailsList": Nothing }



-- | <p>Represents the request to update the user pool client.</p>
newtype UpdateUserPoolClientRequest = UpdateUserPoolClientRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "ClientId" :: (ClientIdType)
  , "ClientName" :: Maybe (ClientNameType)
  , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType)
  , "ReadAttributes" :: Maybe (ClientPermissionListType)
  , "WriteAttributes" :: Maybe (ClientPermissionListType)
  , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType)
  , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType)
  , "CallbackURLs" :: Maybe (CallbackURLsListType)
  , "LogoutURLs" :: Maybe (LogoutURLsListType)
  , "DefaultRedirectURI" :: Maybe (RedirectUrlType)
  , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType)
  , "AllowedOAuthScopes" :: Maybe (ScopeListType)
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType)
  , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType)
  }
derive instance newtypeUpdateUserPoolClientRequest :: Newtype UpdateUserPoolClientRequest _
derive instance repGenericUpdateUserPoolClientRequest :: Generic UpdateUserPoolClientRequest _
instance showUpdateUserPoolClientRequest :: Show UpdateUserPoolClientRequest where show = genericShow
instance decodeUpdateUserPoolClientRequest :: Decode UpdateUserPoolClientRequest where decode = genericDecode options
instance encodeUpdateUserPoolClientRequest :: Encode UpdateUserPoolClientRequest where encode = genericEncode options

-- | Constructs UpdateUserPoolClientRequest from required parameters
newUpdateUserPoolClientRequest :: ClientIdType -> UserPoolIdType -> UpdateUserPoolClientRequest
newUpdateUserPoolClientRequest _ClientId _UserPoolId = UpdateUserPoolClientRequest { "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "ClientName": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "WriteAttributes": Nothing }

-- | Constructs UpdateUserPoolClientRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserPoolClientRequest' :: ClientIdType -> UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "ClientName" :: Maybe (ClientNameType) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } -> {"UserPoolId" :: (UserPoolIdType) , "ClientId" :: (ClientIdType) , "ClientName" :: Maybe (ClientNameType) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } ) -> UpdateUserPoolClientRequest
newUpdateUserPoolClientRequest' _ClientId _UserPoolId customize = (UpdateUserPoolClientRequest <<< customize) { "ClientId": _ClientId, "UserPoolId": _UserPoolId, "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "ClientName": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "WriteAttributes": Nothing }



-- | <p>Represents the response from the server to the request to update the user pool client.</p>
newtype UpdateUserPoolClientResponse = UpdateUserPoolClientResponse 
  { "UserPoolClient" :: Maybe (UserPoolClientType)
  }
derive instance newtypeUpdateUserPoolClientResponse :: Newtype UpdateUserPoolClientResponse _
derive instance repGenericUpdateUserPoolClientResponse :: Generic UpdateUserPoolClientResponse _
instance showUpdateUserPoolClientResponse :: Show UpdateUserPoolClientResponse where show = genericShow
instance decodeUpdateUserPoolClientResponse :: Decode UpdateUserPoolClientResponse where decode = genericDecode options
instance encodeUpdateUserPoolClientResponse :: Encode UpdateUserPoolClientResponse where encode = genericEncode options

-- | Constructs UpdateUserPoolClientResponse from required parameters
newUpdateUserPoolClientResponse :: UpdateUserPoolClientResponse
newUpdateUserPoolClientResponse  = UpdateUserPoolClientResponse { "UserPoolClient": Nothing }

-- | Constructs UpdateUserPoolClientResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserPoolClientResponse' :: ( { "UserPoolClient" :: Maybe (UserPoolClientType) } -> {"UserPoolClient" :: Maybe (UserPoolClientType) } ) -> UpdateUserPoolClientResponse
newUpdateUserPoolClientResponse'  customize = (UpdateUserPoolClientResponse <<< customize) { "UserPoolClient": Nothing }



-- | <p>Represents the request to update the user pool.</p>
newtype UpdateUserPoolRequest = UpdateUserPoolRequest 
  { "UserPoolId" :: (UserPoolIdType)
  , "Policies" :: Maybe (UserPoolPolicyType)
  , "LambdaConfig" :: Maybe (LambdaConfigType)
  , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType)
  , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType)
  , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType)
  , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType)
  , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType)
  , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  , "DeviceConfiguration" :: Maybe (DeviceConfigurationType)
  , "EmailConfiguration" :: Maybe (EmailConfigurationType)
  , "SmsConfiguration" :: Maybe (SmsConfigurationType)
  , "UserPoolTags" :: Maybe (UserPoolTagsType)
  , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType)
  , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType)
  }
derive instance newtypeUpdateUserPoolRequest :: Newtype UpdateUserPoolRequest _
derive instance repGenericUpdateUserPoolRequest :: Generic UpdateUserPoolRequest _
instance showUpdateUserPoolRequest :: Show UpdateUserPoolRequest where show = genericShow
instance decodeUpdateUserPoolRequest :: Decode UpdateUserPoolRequest where decode = genericDecode options
instance encodeUpdateUserPoolRequest :: Encode UpdateUserPoolRequest where encode = genericEncode options

-- | Constructs UpdateUserPoolRequest from required parameters
newUpdateUserPoolRequest :: UserPoolIdType -> UpdateUserPoolRequest
newUpdateUserPoolRequest _UserPoolId = UpdateUserPoolRequest { "UserPoolId": _UserPoolId, "AdminCreateUserConfig": Nothing, "AutoVerifiedAttributes": Nothing, "DeviceConfiguration": Nothing, "EmailConfiguration": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "LambdaConfig": Nothing, "MfaConfiguration": Nothing, "Policies": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsVerificationMessage": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "VerificationMessageTemplate": Nothing }

-- | Constructs UpdateUserPoolRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserPoolRequest' :: UserPoolIdType -> ( { "UserPoolId" :: (UserPoolIdType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } -> {"UserPoolId" :: (UserPoolIdType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } ) -> UpdateUserPoolRequest
newUpdateUserPoolRequest' _UserPoolId customize = (UpdateUserPoolRequest <<< customize) { "UserPoolId": _UserPoolId, "AdminCreateUserConfig": Nothing, "AutoVerifiedAttributes": Nothing, "DeviceConfiguration": Nothing, "EmailConfiguration": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "LambdaConfig": Nothing, "MfaConfiguration": Nothing, "Policies": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsVerificationMessage": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "VerificationMessageTemplate": Nothing }



-- | <p>Represents the response from the server when you make a request to update the user pool.</p>
newtype UpdateUserPoolResponse = UpdateUserPoolResponse Types.NoArguments
derive instance newtypeUpdateUserPoolResponse :: Newtype UpdateUserPoolResponse _
derive instance repGenericUpdateUserPoolResponse :: Generic UpdateUserPoolResponse _
instance showUpdateUserPoolResponse :: Show UpdateUserPoolResponse where show = genericShow
instance decodeUpdateUserPoolResponse :: Decode UpdateUserPoolResponse where decode = genericDecode options
instance encodeUpdateUserPoolResponse :: Encode UpdateUserPoolResponse where encode = genericEncode options



-- | <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
newtype UserContextDataType = UserContextDataType 
  { "EncodedData" :: Maybe (StringType)
  }
derive instance newtypeUserContextDataType :: Newtype UserContextDataType _
derive instance repGenericUserContextDataType :: Generic UserContextDataType _
instance showUserContextDataType :: Show UserContextDataType where show = genericShow
instance decodeUserContextDataType :: Decode UserContextDataType where decode = genericDecode options
instance encodeUserContextDataType :: Encode UserContextDataType where encode = genericEncode options

-- | Constructs UserContextDataType from required parameters
newUserContextDataType :: UserContextDataType
newUserContextDataType  = UserContextDataType { "EncodedData": Nothing }

-- | Constructs UserContextDataType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserContextDataType' :: ( { "EncodedData" :: Maybe (StringType) } -> {"EncodedData" :: Maybe (StringType) } ) -> UserContextDataType
newUserContextDataType'  customize = (UserContextDataType <<< customize) { "EncodedData": Nothing }



newtype UserFilterType = UserFilterType String
derive instance newtypeUserFilterType :: Newtype UserFilterType _
derive instance repGenericUserFilterType :: Generic UserFilterType _
instance showUserFilterType :: Show UserFilterType where show = genericShow
instance decodeUserFilterType :: Decode UserFilterType where decode = genericDecode options
instance encodeUserFilterType :: Encode UserFilterType where encode = genericEncode options



-- | <p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>
newtype UserImportInProgressException = UserImportInProgressException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserImportInProgressException :: Newtype UserImportInProgressException _
derive instance repGenericUserImportInProgressException :: Generic UserImportInProgressException _
instance showUserImportInProgressException :: Show UserImportInProgressException where show = genericShow
instance decodeUserImportInProgressException :: Decode UserImportInProgressException where decode = genericDecode options
instance encodeUserImportInProgressException :: Encode UserImportInProgressException where encode = genericEncode options

-- | Constructs UserImportInProgressException from required parameters
newUserImportInProgressException :: UserImportInProgressException
newUserImportInProgressException  = UserImportInProgressException { "message": Nothing }

-- | Constructs UserImportInProgressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserImportInProgressException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserImportInProgressException
newUserImportInProgressException'  customize = (UserImportInProgressException <<< customize) { "message": Nothing }



newtype UserImportJobIdType = UserImportJobIdType String
derive instance newtypeUserImportJobIdType :: Newtype UserImportJobIdType _
derive instance repGenericUserImportJobIdType :: Generic UserImportJobIdType _
instance showUserImportJobIdType :: Show UserImportJobIdType where show = genericShow
instance decodeUserImportJobIdType :: Decode UserImportJobIdType where decode = genericDecode options
instance encodeUserImportJobIdType :: Encode UserImportJobIdType where encode = genericEncode options



newtype UserImportJobNameType = UserImportJobNameType String
derive instance newtypeUserImportJobNameType :: Newtype UserImportJobNameType _
derive instance repGenericUserImportJobNameType :: Generic UserImportJobNameType _
instance showUserImportJobNameType :: Show UserImportJobNameType where show = genericShow
instance decodeUserImportJobNameType :: Decode UserImportJobNameType where decode = genericDecode options
instance encodeUserImportJobNameType :: Encode UserImportJobNameType where encode = genericEncode options



newtype UserImportJobStatusType = UserImportJobStatusType String
derive instance newtypeUserImportJobStatusType :: Newtype UserImportJobStatusType _
derive instance repGenericUserImportJobStatusType :: Generic UserImportJobStatusType _
instance showUserImportJobStatusType :: Show UserImportJobStatusType where show = genericShow
instance decodeUserImportJobStatusType :: Decode UserImportJobStatusType where decode = genericDecode options
instance encodeUserImportJobStatusType :: Encode UserImportJobStatusType where encode = genericEncode options



-- | <p>The user import job type.</p>
newtype UserImportJobType = UserImportJobType 
  { "JobName" :: Maybe (UserImportJobNameType)
  , "JobId" :: Maybe (UserImportJobIdType)
  , "UserPoolId" :: Maybe (UserPoolIdType)
  , "PreSignedUrl" :: Maybe (PreSignedUrlType)
  , "CreationDate" :: Maybe (DateType)
  , "StartDate" :: Maybe (DateType)
  , "CompletionDate" :: Maybe (DateType)
  , "Status" :: Maybe (UserImportJobStatusType)
  , "CloudWatchLogsRoleArn" :: Maybe (ArnType)
  , "ImportedUsers" :: Maybe (LongType)
  , "SkippedUsers" :: Maybe (LongType)
  , "FailedUsers" :: Maybe (LongType)
  , "CompletionMessage" :: Maybe (CompletionMessageType)
  }
derive instance newtypeUserImportJobType :: Newtype UserImportJobType _
derive instance repGenericUserImportJobType :: Generic UserImportJobType _
instance showUserImportJobType :: Show UserImportJobType where show = genericShow
instance decodeUserImportJobType :: Decode UserImportJobType where decode = genericDecode options
instance encodeUserImportJobType :: Encode UserImportJobType where encode = genericEncode options

-- | Constructs UserImportJobType from required parameters
newUserImportJobType :: UserImportJobType
newUserImportJobType  = UserImportJobType { "CloudWatchLogsRoleArn": Nothing, "CompletionDate": Nothing, "CompletionMessage": Nothing, "CreationDate": Nothing, "FailedUsers": Nothing, "ImportedUsers": Nothing, "JobId": Nothing, "JobName": Nothing, "PreSignedUrl": Nothing, "SkippedUsers": Nothing, "StartDate": Nothing, "Status": Nothing, "UserPoolId": Nothing }

-- | Constructs UserImportJobType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserImportJobType' :: ( { "JobName" :: Maybe (UserImportJobNameType) , "JobId" :: Maybe (UserImportJobIdType) , "UserPoolId" :: Maybe (UserPoolIdType) , "PreSignedUrl" :: Maybe (PreSignedUrlType) , "CreationDate" :: Maybe (DateType) , "StartDate" :: Maybe (DateType) , "CompletionDate" :: Maybe (DateType) , "Status" :: Maybe (UserImportJobStatusType) , "CloudWatchLogsRoleArn" :: Maybe (ArnType) , "ImportedUsers" :: Maybe (LongType) , "SkippedUsers" :: Maybe (LongType) , "FailedUsers" :: Maybe (LongType) , "CompletionMessage" :: Maybe (CompletionMessageType) } -> {"JobName" :: Maybe (UserImportJobNameType) , "JobId" :: Maybe (UserImportJobIdType) , "UserPoolId" :: Maybe (UserPoolIdType) , "PreSignedUrl" :: Maybe (PreSignedUrlType) , "CreationDate" :: Maybe (DateType) , "StartDate" :: Maybe (DateType) , "CompletionDate" :: Maybe (DateType) , "Status" :: Maybe (UserImportJobStatusType) , "CloudWatchLogsRoleArn" :: Maybe (ArnType) , "ImportedUsers" :: Maybe (LongType) , "SkippedUsers" :: Maybe (LongType) , "FailedUsers" :: Maybe (LongType) , "CompletionMessage" :: Maybe (CompletionMessageType) } ) -> UserImportJobType
newUserImportJobType'  customize = (UserImportJobType <<< customize) { "CloudWatchLogsRoleArn": Nothing, "CompletionDate": Nothing, "CompletionMessage": Nothing, "CreationDate": Nothing, "FailedUsers": Nothing, "ImportedUsers": Nothing, "JobId": Nothing, "JobName": Nothing, "PreSignedUrl": Nothing, "SkippedUsers": Nothing, "StartDate": Nothing, "Status": Nothing, "UserPoolId": Nothing }



newtype UserImportJobsListType = UserImportJobsListType (Array UserImportJobType)
derive instance newtypeUserImportJobsListType :: Newtype UserImportJobsListType _
derive instance repGenericUserImportJobsListType :: Generic UserImportJobsListType _
instance showUserImportJobsListType :: Show UserImportJobsListType where show = genericShow
instance decodeUserImportJobsListType :: Decode UserImportJobsListType where decode = genericDecode options
instance encodeUserImportJobsListType :: Encode UserImportJobsListType where encode = genericEncode options



-- | <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>
newtype UserLambdaValidationException = UserLambdaValidationException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserLambdaValidationException :: Newtype UserLambdaValidationException _
derive instance repGenericUserLambdaValidationException :: Generic UserLambdaValidationException _
instance showUserLambdaValidationException :: Show UserLambdaValidationException where show = genericShow
instance decodeUserLambdaValidationException :: Decode UserLambdaValidationException where decode = genericDecode options
instance encodeUserLambdaValidationException :: Encode UserLambdaValidationException where encode = genericEncode options

-- | Constructs UserLambdaValidationException from required parameters
newUserLambdaValidationException :: UserLambdaValidationException
newUserLambdaValidationException  = UserLambdaValidationException { "message": Nothing }

-- | Constructs UserLambdaValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserLambdaValidationException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserLambdaValidationException
newUserLambdaValidationException'  customize = (UserLambdaValidationException <<< customize) { "message": Nothing }



newtype UserMFASettingListType = UserMFASettingListType (Array StringType)
derive instance newtypeUserMFASettingListType :: Newtype UserMFASettingListType _
derive instance repGenericUserMFASettingListType :: Generic UserMFASettingListType _
instance showUserMFASettingListType :: Show UserMFASettingListType where show = genericShow
instance decodeUserMFASettingListType :: Decode UserMFASettingListType where decode = genericDecode options
instance encodeUserMFASettingListType :: Encode UserMFASettingListType where encode = genericEncode options



-- | <p>This exception is thrown when a user is not confirmed successfully.</p>
newtype UserNotConfirmedException = UserNotConfirmedException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserNotConfirmedException :: Newtype UserNotConfirmedException _
derive instance repGenericUserNotConfirmedException :: Generic UserNotConfirmedException _
instance showUserNotConfirmedException :: Show UserNotConfirmedException where show = genericShow
instance decodeUserNotConfirmedException :: Decode UserNotConfirmedException where decode = genericDecode options
instance encodeUserNotConfirmedException :: Encode UserNotConfirmedException where encode = genericEncode options

-- | Constructs UserNotConfirmedException from required parameters
newUserNotConfirmedException :: UserNotConfirmedException
newUserNotConfirmedException  = UserNotConfirmedException { "message": Nothing }

-- | Constructs UserNotConfirmedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserNotConfirmedException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserNotConfirmedException
newUserNotConfirmedException'  customize = (UserNotConfirmedException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when a user is not found.</p>
newtype UserNotFoundException = UserNotFoundException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserNotFoundException :: Newtype UserNotFoundException _
derive instance repGenericUserNotFoundException :: Generic UserNotFoundException _
instance showUserNotFoundException :: Show UserNotFoundException where show = genericShow
instance decodeUserNotFoundException :: Decode UserNotFoundException where decode = genericDecode options
instance encodeUserNotFoundException :: Encode UserNotFoundException where encode = genericEncode options

-- | Constructs UserNotFoundException from required parameters
newUserNotFoundException :: UserNotFoundException
newUserNotFoundException  = UserNotFoundException { "message": Nothing }

-- | Constructs UserNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserNotFoundException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserNotFoundException
newUserNotFoundException'  customize = (UserNotFoundException <<< customize) { "message": Nothing }



-- | <p>This exception is thrown when user pool add-ons are not enabled.</p>
newtype UserPoolAddOnNotEnabledException = UserPoolAddOnNotEnabledException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserPoolAddOnNotEnabledException :: Newtype UserPoolAddOnNotEnabledException _
derive instance repGenericUserPoolAddOnNotEnabledException :: Generic UserPoolAddOnNotEnabledException _
instance showUserPoolAddOnNotEnabledException :: Show UserPoolAddOnNotEnabledException where show = genericShow
instance decodeUserPoolAddOnNotEnabledException :: Decode UserPoolAddOnNotEnabledException where decode = genericDecode options
instance encodeUserPoolAddOnNotEnabledException :: Encode UserPoolAddOnNotEnabledException where encode = genericEncode options

-- | Constructs UserPoolAddOnNotEnabledException from required parameters
newUserPoolAddOnNotEnabledException :: UserPoolAddOnNotEnabledException
newUserPoolAddOnNotEnabledException  = UserPoolAddOnNotEnabledException { "message": Nothing }

-- | Constructs UserPoolAddOnNotEnabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolAddOnNotEnabledException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserPoolAddOnNotEnabledException
newUserPoolAddOnNotEnabledException'  customize = (UserPoolAddOnNotEnabledException <<< customize) { "message": Nothing }



-- | <p>The user pool add-ons type.</p>
newtype UserPoolAddOnsType = UserPoolAddOnsType 
  { "AdvancedSecurityMode" :: (AdvancedSecurityModeType)
  }
derive instance newtypeUserPoolAddOnsType :: Newtype UserPoolAddOnsType _
derive instance repGenericUserPoolAddOnsType :: Generic UserPoolAddOnsType _
instance showUserPoolAddOnsType :: Show UserPoolAddOnsType where show = genericShow
instance decodeUserPoolAddOnsType :: Decode UserPoolAddOnsType where decode = genericDecode options
instance encodeUserPoolAddOnsType :: Encode UserPoolAddOnsType where encode = genericEncode options

-- | Constructs UserPoolAddOnsType from required parameters
newUserPoolAddOnsType :: AdvancedSecurityModeType -> UserPoolAddOnsType
newUserPoolAddOnsType _AdvancedSecurityMode = UserPoolAddOnsType { "AdvancedSecurityMode": _AdvancedSecurityMode }

-- | Constructs UserPoolAddOnsType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolAddOnsType' :: AdvancedSecurityModeType -> ( { "AdvancedSecurityMode" :: (AdvancedSecurityModeType) } -> {"AdvancedSecurityMode" :: (AdvancedSecurityModeType) } ) -> UserPoolAddOnsType
newUserPoolAddOnsType' _AdvancedSecurityMode customize = (UserPoolAddOnsType <<< customize) { "AdvancedSecurityMode": _AdvancedSecurityMode }



-- | <p>The description of the user pool client.</p>
newtype UserPoolClientDescription = UserPoolClientDescription 
  { "ClientId" :: Maybe (ClientIdType)
  , "UserPoolId" :: Maybe (UserPoolIdType)
  , "ClientName" :: Maybe (ClientNameType)
  }
derive instance newtypeUserPoolClientDescription :: Newtype UserPoolClientDescription _
derive instance repGenericUserPoolClientDescription :: Generic UserPoolClientDescription _
instance showUserPoolClientDescription :: Show UserPoolClientDescription where show = genericShow
instance decodeUserPoolClientDescription :: Decode UserPoolClientDescription where decode = genericDecode options
instance encodeUserPoolClientDescription :: Encode UserPoolClientDescription where encode = genericEncode options

-- | Constructs UserPoolClientDescription from required parameters
newUserPoolClientDescription :: UserPoolClientDescription
newUserPoolClientDescription  = UserPoolClientDescription { "ClientId": Nothing, "ClientName": Nothing, "UserPoolId": Nothing }

-- | Constructs UserPoolClientDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolClientDescription' :: ( { "ClientId" :: Maybe (ClientIdType) , "UserPoolId" :: Maybe (UserPoolIdType) , "ClientName" :: Maybe (ClientNameType) } -> {"ClientId" :: Maybe (ClientIdType) , "UserPoolId" :: Maybe (UserPoolIdType) , "ClientName" :: Maybe (ClientNameType) } ) -> UserPoolClientDescription
newUserPoolClientDescription'  customize = (UserPoolClientDescription <<< customize) { "ClientId": Nothing, "ClientName": Nothing, "UserPoolId": Nothing }



newtype UserPoolClientListType = UserPoolClientListType (Array UserPoolClientDescription)
derive instance newtypeUserPoolClientListType :: Newtype UserPoolClientListType _
derive instance repGenericUserPoolClientListType :: Generic UserPoolClientListType _
instance showUserPoolClientListType :: Show UserPoolClientListType where show = genericShow
instance decodeUserPoolClientListType :: Decode UserPoolClientListType where decode = genericDecode options
instance encodeUserPoolClientListType :: Encode UserPoolClientListType where encode = genericEncode options



-- | <p>Contains information about a user pool client.</p>
newtype UserPoolClientType = UserPoolClientType 
  { "UserPoolId" :: Maybe (UserPoolIdType)
  , "ClientName" :: Maybe (ClientNameType)
  , "ClientId" :: Maybe (ClientIdType)
  , "ClientSecret" :: Maybe (ClientSecretType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType)
  , "ReadAttributes" :: Maybe (ClientPermissionListType)
  , "WriteAttributes" :: Maybe (ClientPermissionListType)
  , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType)
  , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType)
  , "CallbackURLs" :: Maybe (CallbackURLsListType)
  , "LogoutURLs" :: Maybe (LogoutURLsListType)
  , "DefaultRedirectURI" :: Maybe (RedirectUrlType)
  , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType)
  , "AllowedOAuthScopes" :: Maybe (ScopeListType)
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType)
  , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType)
  }
derive instance newtypeUserPoolClientType :: Newtype UserPoolClientType _
derive instance repGenericUserPoolClientType :: Generic UserPoolClientType _
instance showUserPoolClientType :: Show UserPoolClientType where show = genericShow
instance decodeUserPoolClientType :: Decode UserPoolClientType where decode = genericDecode options
instance encodeUserPoolClientType :: Encode UserPoolClientType where encode = genericEncode options

-- | Constructs UserPoolClientType from required parameters
newUserPoolClientType :: UserPoolClientType
newUserPoolClientType  = UserPoolClientType { "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "ClientId": Nothing, "ClientName": Nothing, "ClientSecret": Nothing, "CreationDate": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "LastModifiedDate": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "UserPoolId": Nothing, "WriteAttributes": Nothing }

-- | Constructs UserPoolClientType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolClientType' :: ( { "UserPoolId" :: Maybe (UserPoolIdType) , "ClientName" :: Maybe (ClientNameType) , "ClientId" :: Maybe (ClientIdType) , "ClientSecret" :: Maybe (ClientSecretType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } -> {"UserPoolId" :: Maybe (UserPoolIdType) , "ClientName" :: Maybe (ClientNameType) , "ClientId" :: Maybe (ClientIdType) , "ClientSecret" :: Maybe (ClientSecretType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) , "RefreshTokenValidity" :: Maybe (RefreshTokenValidityType) , "ReadAttributes" :: Maybe (ClientPermissionListType) , "WriteAttributes" :: Maybe (ClientPermissionListType) , "ExplicitAuthFlows" :: Maybe (ExplicitAuthFlowsListType) , "SupportedIdentityProviders" :: Maybe (SupportedIdentityProvidersListType) , "CallbackURLs" :: Maybe (CallbackURLsListType) , "LogoutURLs" :: Maybe (LogoutURLsListType) , "DefaultRedirectURI" :: Maybe (RedirectUrlType) , "AllowedOAuthFlows" :: Maybe (OAuthFlowsType) , "AllowedOAuthScopes" :: Maybe (ScopeListType) , "AllowedOAuthFlowsUserPoolClient" :: Maybe (BooleanType) , "AnalyticsConfiguration" :: Maybe (AnalyticsConfigurationType) } ) -> UserPoolClientType
newUserPoolClientType'  customize = (UserPoolClientType <<< customize) { "AllowedOAuthFlows": Nothing, "AllowedOAuthFlowsUserPoolClient": Nothing, "AllowedOAuthScopes": Nothing, "AnalyticsConfiguration": Nothing, "CallbackURLs": Nothing, "ClientId": Nothing, "ClientName": Nothing, "ClientSecret": Nothing, "CreationDate": Nothing, "DefaultRedirectURI": Nothing, "ExplicitAuthFlows": Nothing, "LastModifiedDate": Nothing, "LogoutURLs": Nothing, "ReadAttributes": Nothing, "RefreshTokenValidity": Nothing, "SupportedIdentityProviders": Nothing, "UserPoolId": Nothing, "WriteAttributes": Nothing }



-- | <p>A user pool description.</p>
newtype UserPoolDescriptionType = UserPoolDescriptionType 
  { "Id" :: Maybe (UserPoolIdType)
  , "Name" :: Maybe (UserPoolNameType)
  , "LambdaConfig" :: Maybe (LambdaConfigType)
  , "Status" :: Maybe (StatusType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  }
derive instance newtypeUserPoolDescriptionType :: Newtype UserPoolDescriptionType _
derive instance repGenericUserPoolDescriptionType :: Generic UserPoolDescriptionType _
instance showUserPoolDescriptionType :: Show UserPoolDescriptionType where show = genericShow
instance decodeUserPoolDescriptionType :: Decode UserPoolDescriptionType where decode = genericDecode options
instance encodeUserPoolDescriptionType :: Encode UserPoolDescriptionType where encode = genericEncode options

-- | Constructs UserPoolDescriptionType from required parameters
newUserPoolDescriptionType :: UserPoolDescriptionType
newUserPoolDescriptionType  = UserPoolDescriptionType { "CreationDate": Nothing, "Id": Nothing, "LambdaConfig": Nothing, "LastModifiedDate": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs UserPoolDescriptionType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolDescriptionType' :: ( { "Id" :: Maybe (UserPoolIdType) , "Name" :: Maybe (UserPoolNameType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "Status" :: Maybe (StatusType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } -> {"Id" :: Maybe (UserPoolIdType) , "Name" :: Maybe (UserPoolNameType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "Status" :: Maybe (StatusType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) } ) -> UserPoolDescriptionType
newUserPoolDescriptionType'  customize = (UserPoolDescriptionType <<< customize) { "CreationDate": Nothing, "Id": Nothing, "LambdaConfig": Nothing, "LastModifiedDate": Nothing, "Name": Nothing, "Status": Nothing }



newtype UserPoolIdType = UserPoolIdType String
derive instance newtypeUserPoolIdType :: Newtype UserPoolIdType _
derive instance repGenericUserPoolIdType :: Generic UserPoolIdType _
instance showUserPoolIdType :: Show UserPoolIdType where show = genericShow
instance decodeUserPoolIdType :: Decode UserPoolIdType where decode = genericDecode options
instance encodeUserPoolIdType :: Encode UserPoolIdType where encode = genericEncode options



newtype UserPoolListType = UserPoolListType (Array UserPoolDescriptionType)
derive instance newtypeUserPoolListType :: Newtype UserPoolListType _
derive instance repGenericUserPoolListType :: Generic UserPoolListType _
instance showUserPoolListType :: Show UserPoolListType where show = genericShow
instance decodeUserPoolListType :: Decode UserPoolListType where decode = genericDecode options
instance encodeUserPoolListType :: Encode UserPoolListType where encode = genericEncode options



newtype UserPoolMfaType = UserPoolMfaType String
derive instance newtypeUserPoolMfaType :: Newtype UserPoolMfaType _
derive instance repGenericUserPoolMfaType :: Generic UserPoolMfaType _
instance showUserPoolMfaType :: Show UserPoolMfaType where show = genericShow
instance decodeUserPoolMfaType :: Decode UserPoolMfaType where decode = genericDecode options
instance encodeUserPoolMfaType :: Encode UserPoolMfaType where encode = genericEncode options



newtype UserPoolNameType = UserPoolNameType String
derive instance newtypeUserPoolNameType :: Newtype UserPoolNameType _
derive instance repGenericUserPoolNameType :: Generic UserPoolNameType _
instance showUserPoolNameType :: Show UserPoolNameType where show = genericShow
instance decodeUserPoolNameType :: Decode UserPoolNameType where decode = genericDecode options
instance encodeUserPoolNameType :: Encode UserPoolNameType where encode = genericEncode options



-- | <p>The policy associated with a user pool.</p>
newtype UserPoolPolicyType = UserPoolPolicyType 
  { "PasswordPolicy" :: Maybe (PasswordPolicyType)
  }
derive instance newtypeUserPoolPolicyType :: Newtype UserPoolPolicyType _
derive instance repGenericUserPoolPolicyType :: Generic UserPoolPolicyType _
instance showUserPoolPolicyType :: Show UserPoolPolicyType where show = genericShow
instance decodeUserPoolPolicyType :: Decode UserPoolPolicyType where decode = genericDecode options
instance encodeUserPoolPolicyType :: Encode UserPoolPolicyType where encode = genericEncode options

-- | Constructs UserPoolPolicyType from required parameters
newUserPoolPolicyType :: UserPoolPolicyType
newUserPoolPolicyType  = UserPoolPolicyType { "PasswordPolicy": Nothing }

-- | Constructs UserPoolPolicyType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolPolicyType' :: ( { "PasswordPolicy" :: Maybe (PasswordPolicyType) } -> {"PasswordPolicy" :: Maybe (PasswordPolicyType) } ) -> UserPoolPolicyType
newUserPoolPolicyType'  customize = (UserPoolPolicyType <<< customize) { "PasswordPolicy": Nothing }



-- | <p>This exception is thrown when a user pool tag cannot be set or updated.</p>
newtype UserPoolTaggingException = UserPoolTaggingException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUserPoolTaggingException :: Newtype UserPoolTaggingException _
derive instance repGenericUserPoolTaggingException :: Generic UserPoolTaggingException _
instance showUserPoolTaggingException :: Show UserPoolTaggingException where show = genericShow
instance decodeUserPoolTaggingException :: Decode UserPoolTaggingException where decode = genericDecode options
instance encodeUserPoolTaggingException :: Encode UserPoolTaggingException where encode = genericEncode options

-- | Constructs UserPoolTaggingException from required parameters
newUserPoolTaggingException :: UserPoolTaggingException
newUserPoolTaggingException  = UserPoolTaggingException { "message": Nothing }

-- | Constructs UserPoolTaggingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolTaggingException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UserPoolTaggingException
newUserPoolTaggingException'  customize = (UserPoolTaggingException <<< customize) { "message": Nothing }



newtype UserPoolTagsType = UserPoolTagsType (StrMap.StrMap StringType)
derive instance newtypeUserPoolTagsType :: Newtype UserPoolTagsType _
derive instance repGenericUserPoolTagsType :: Generic UserPoolTagsType _
instance showUserPoolTagsType :: Show UserPoolTagsType where show = genericShow
instance decodeUserPoolTagsType :: Decode UserPoolTagsType where decode = genericDecode options
instance encodeUserPoolTagsType :: Encode UserPoolTagsType where encode = genericEncode options



-- | <p>A container for information about the user pool.</p>
newtype UserPoolType = UserPoolType 
  { "Id" :: Maybe (UserPoolIdType)
  , "Name" :: Maybe (UserPoolNameType)
  , "Policies" :: Maybe (UserPoolPolicyType)
  , "LambdaConfig" :: Maybe (LambdaConfigType)
  , "Status" :: Maybe (StatusType)
  , "LastModifiedDate" :: Maybe (DateType)
  , "CreationDate" :: Maybe (DateType)
  , "SchemaAttributes" :: Maybe (SchemaAttributesListType)
  , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType)
  , "AliasAttributes" :: Maybe (AliasAttributesListType)
  , "UsernameAttributes" :: Maybe (UsernameAttributesListType)
  , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType)
  , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType)
  , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType)
  , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType)
  , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType)
  , "MfaConfiguration" :: Maybe (UserPoolMfaType)
  , "DeviceConfiguration" :: Maybe (DeviceConfigurationType)
  , "EstimatedNumberOfUsers" :: Maybe (IntegerType)
  , "EmailConfiguration" :: Maybe (EmailConfigurationType)
  , "SmsConfiguration" :: Maybe (SmsConfigurationType)
  , "UserPoolTags" :: Maybe (UserPoolTagsType)
  , "SmsConfigurationFailure" :: Maybe (StringType)
  , "EmailConfigurationFailure" :: Maybe (StringType)
  , "Domain" :: Maybe (DomainType)
  , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType)
  , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType)
  }
derive instance newtypeUserPoolType :: Newtype UserPoolType _
derive instance repGenericUserPoolType :: Generic UserPoolType _
instance showUserPoolType :: Show UserPoolType where show = genericShow
instance decodeUserPoolType :: Decode UserPoolType where decode = genericDecode options
instance encodeUserPoolType :: Encode UserPoolType where encode = genericEncode options

-- | Constructs UserPoolType from required parameters
newUserPoolType :: UserPoolType
newUserPoolType  = UserPoolType { "AdminCreateUserConfig": Nothing, "AliasAttributes": Nothing, "AutoVerifiedAttributes": Nothing, "CreationDate": Nothing, "DeviceConfiguration": Nothing, "Domain": Nothing, "EmailConfiguration": Nothing, "EmailConfigurationFailure": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "EstimatedNumberOfUsers": Nothing, "Id": Nothing, "LambdaConfig": Nothing, "LastModifiedDate": Nothing, "MfaConfiguration": Nothing, "Name": Nothing, "Policies": Nothing, "SchemaAttributes": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsConfigurationFailure": Nothing, "SmsVerificationMessage": Nothing, "Status": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "UsernameAttributes": Nothing, "VerificationMessageTemplate": Nothing }

-- | Constructs UserPoolType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserPoolType' :: ( { "Id" :: Maybe (UserPoolIdType) , "Name" :: Maybe (UserPoolNameType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "Status" :: Maybe (StatusType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) , "SchemaAttributes" :: Maybe (SchemaAttributesListType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "AliasAttributes" :: Maybe (AliasAttributesListType) , "UsernameAttributes" :: Maybe (UsernameAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EstimatedNumberOfUsers" :: Maybe (IntegerType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "SmsConfigurationFailure" :: Maybe (StringType) , "EmailConfigurationFailure" :: Maybe (StringType) , "Domain" :: Maybe (DomainType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } -> {"Id" :: Maybe (UserPoolIdType) , "Name" :: Maybe (UserPoolNameType) , "Policies" :: Maybe (UserPoolPolicyType) , "LambdaConfig" :: Maybe (LambdaConfigType) , "Status" :: Maybe (StatusType) , "LastModifiedDate" :: Maybe (DateType) , "CreationDate" :: Maybe (DateType) , "SchemaAttributes" :: Maybe (SchemaAttributesListType) , "AutoVerifiedAttributes" :: Maybe (VerifiedAttributesListType) , "AliasAttributes" :: Maybe (AliasAttributesListType) , "UsernameAttributes" :: Maybe (UsernameAttributesListType) , "SmsVerificationMessage" :: Maybe (SmsVerificationMessageType) , "EmailVerificationMessage" :: Maybe (EmailVerificationMessageType) , "EmailVerificationSubject" :: Maybe (EmailVerificationSubjectType) , "VerificationMessageTemplate" :: Maybe (VerificationMessageTemplateType) , "SmsAuthenticationMessage" :: Maybe (SmsVerificationMessageType) , "MfaConfiguration" :: Maybe (UserPoolMfaType) , "DeviceConfiguration" :: Maybe (DeviceConfigurationType) , "EstimatedNumberOfUsers" :: Maybe (IntegerType) , "EmailConfiguration" :: Maybe (EmailConfigurationType) , "SmsConfiguration" :: Maybe (SmsConfigurationType) , "UserPoolTags" :: Maybe (UserPoolTagsType) , "SmsConfigurationFailure" :: Maybe (StringType) , "EmailConfigurationFailure" :: Maybe (StringType) , "Domain" :: Maybe (DomainType) , "AdminCreateUserConfig" :: Maybe (AdminCreateUserConfigType) , "UserPoolAddOns" :: Maybe (UserPoolAddOnsType) } ) -> UserPoolType
newUserPoolType'  customize = (UserPoolType <<< customize) { "AdminCreateUserConfig": Nothing, "AliasAttributes": Nothing, "AutoVerifiedAttributes": Nothing, "CreationDate": Nothing, "DeviceConfiguration": Nothing, "Domain": Nothing, "EmailConfiguration": Nothing, "EmailConfigurationFailure": Nothing, "EmailVerificationMessage": Nothing, "EmailVerificationSubject": Nothing, "EstimatedNumberOfUsers": Nothing, "Id": Nothing, "LambdaConfig": Nothing, "LastModifiedDate": Nothing, "MfaConfiguration": Nothing, "Name": Nothing, "Policies": Nothing, "SchemaAttributes": Nothing, "SmsAuthenticationMessage": Nothing, "SmsConfiguration": Nothing, "SmsConfigurationFailure": Nothing, "SmsVerificationMessage": Nothing, "Status": Nothing, "UserPoolAddOns": Nothing, "UserPoolTags": Nothing, "UsernameAttributes": Nothing, "VerificationMessageTemplate": Nothing }



newtype UserStatusType = UserStatusType String
derive instance newtypeUserStatusType :: Newtype UserStatusType _
derive instance repGenericUserStatusType :: Generic UserStatusType _
instance showUserStatusType :: Show UserStatusType where show = genericShow
instance decodeUserStatusType :: Decode UserStatusType where decode = genericDecode options
instance encodeUserStatusType :: Encode UserStatusType where encode = genericEncode options



-- | <p>The user type.</p>
newtype UserType = UserType 
  { "Username" :: Maybe (UsernameType)
  , "Attributes" :: Maybe (AttributeListType)
  , "UserCreateDate" :: Maybe (DateType)
  , "UserLastModifiedDate" :: Maybe (DateType)
  , "Enabled" :: Maybe (BooleanType)
  , "UserStatus" :: Maybe (UserStatusType)
  , "MFAOptions" :: Maybe (MFAOptionListType)
  }
derive instance newtypeUserType :: Newtype UserType _
derive instance repGenericUserType :: Generic UserType _
instance showUserType :: Show UserType where show = genericShow
instance decodeUserType :: Decode UserType where decode = genericDecode options
instance encodeUserType :: Encode UserType where encode = genericEncode options

-- | Constructs UserType from required parameters
newUserType :: UserType
newUserType  = UserType { "Attributes": Nothing, "Enabled": Nothing, "MFAOptions": Nothing, "UserCreateDate": Nothing, "UserLastModifiedDate": Nothing, "UserStatus": Nothing, "Username": Nothing }

-- | Constructs UserType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserType' :: ( { "Username" :: Maybe (UsernameType) , "Attributes" :: Maybe (AttributeListType) , "UserCreateDate" :: Maybe (DateType) , "UserLastModifiedDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "UserStatus" :: Maybe (UserStatusType) , "MFAOptions" :: Maybe (MFAOptionListType) } -> {"Username" :: Maybe (UsernameType) , "Attributes" :: Maybe (AttributeListType) , "UserCreateDate" :: Maybe (DateType) , "UserLastModifiedDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "UserStatus" :: Maybe (UserStatusType) , "MFAOptions" :: Maybe (MFAOptionListType) } ) -> UserType
newUserType'  customize = (UserType <<< customize) { "Attributes": Nothing, "Enabled": Nothing, "MFAOptions": Nothing, "UserCreateDate": Nothing, "UserLastModifiedDate": Nothing, "UserStatus": Nothing, "Username": Nothing }



newtype UsernameAttributeType = UsernameAttributeType String
derive instance newtypeUsernameAttributeType :: Newtype UsernameAttributeType _
derive instance repGenericUsernameAttributeType :: Generic UsernameAttributeType _
instance showUsernameAttributeType :: Show UsernameAttributeType where show = genericShow
instance decodeUsernameAttributeType :: Decode UsernameAttributeType where decode = genericDecode options
instance encodeUsernameAttributeType :: Encode UsernameAttributeType where encode = genericEncode options



newtype UsernameAttributesListType = UsernameAttributesListType (Array UsernameAttributeType)
derive instance newtypeUsernameAttributesListType :: Newtype UsernameAttributesListType _
derive instance repGenericUsernameAttributesListType :: Generic UsernameAttributesListType _
instance showUsernameAttributesListType :: Show UsernameAttributesListType where show = genericShow
instance decodeUsernameAttributesListType :: Decode UsernameAttributesListType where decode = genericDecode options
instance encodeUsernameAttributesListType :: Encode UsernameAttributesListType where encode = genericEncode options



-- | <p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>
newtype UsernameExistsException = UsernameExistsException 
  { "message" :: Maybe (MessageType)
  }
derive instance newtypeUsernameExistsException :: Newtype UsernameExistsException _
derive instance repGenericUsernameExistsException :: Generic UsernameExistsException _
instance showUsernameExistsException :: Show UsernameExistsException where show = genericShow
instance decodeUsernameExistsException :: Decode UsernameExistsException where decode = genericDecode options
instance encodeUsernameExistsException :: Encode UsernameExistsException where encode = genericEncode options

-- | Constructs UsernameExistsException from required parameters
newUsernameExistsException :: UsernameExistsException
newUsernameExistsException  = UsernameExistsException { "message": Nothing }

-- | Constructs UsernameExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUsernameExistsException' :: ( { "message" :: Maybe (MessageType) } -> {"message" :: Maybe (MessageType) } ) -> UsernameExistsException
newUsernameExistsException'  customize = (UsernameExistsException <<< customize) { "message": Nothing }



newtype UsernameType = UsernameType String
derive instance newtypeUsernameType :: Newtype UsernameType _
derive instance repGenericUsernameType :: Generic UsernameType _
instance showUsernameType :: Show UsernameType where show = genericShow
instance decodeUsernameType :: Decode UsernameType where decode = genericDecode options
instance encodeUsernameType :: Encode UsernameType where encode = genericEncode options



newtype UsersListType = UsersListType (Array UserType)
derive instance newtypeUsersListType :: Newtype UsersListType _
derive instance repGenericUsersListType :: Generic UsersListType _
instance showUsersListType :: Show UsersListType where show = genericShow
instance decodeUsersListType :: Decode UsersListType where decode = genericDecode options
instance encodeUsersListType :: Encode UsersListType where encode = genericEncode options



-- | <p>The template for verification messages.</p>
newtype VerificationMessageTemplateType = VerificationMessageTemplateType 
  { "SmsMessage" :: Maybe (SmsVerificationMessageType)
  , "EmailMessage" :: Maybe (EmailVerificationMessageType)
  , "EmailSubject" :: Maybe (EmailVerificationSubjectType)
  , "EmailMessageByLink" :: Maybe (EmailVerificationMessageByLinkType)
  , "EmailSubjectByLink" :: Maybe (EmailVerificationSubjectByLinkType)
  , "DefaultEmailOption" :: Maybe (DefaultEmailOptionType)
  }
derive instance newtypeVerificationMessageTemplateType :: Newtype VerificationMessageTemplateType _
derive instance repGenericVerificationMessageTemplateType :: Generic VerificationMessageTemplateType _
instance showVerificationMessageTemplateType :: Show VerificationMessageTemplateType where show = genericShow
instance decodeVerificationMessageTemplateType :: Decode VerificationMessageTemplateType where decode = genericDecode options
instance encodeVerificationMessageTemplateType :: Encode VerificationMessageTemplateType where encode = genericEncode options

-- | Constructs VerificationMessageTemplateType from required parameters
newVerificationMessageTemplateType :: VerificationMessageTemplateType
newVerificationMessageTemplateType  = VerificationMessageTemplateType { "DefaultEmailOption": Nothing, "EmailMessage": Nothing, "EmailMessageByLink": Nothing, "EmailSubject": Nothing, "EmailSubjectByLink": Nothing, "SmsMessage": Nothing }

-- | Constructs VerificationMessageTemplateType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerificationMessageTemplateType' :: ( { "SmsMessage" :: Maybe (SmsVerificationMessageType) , "EmailMessage" :: Maybe (EmailVerificationMessageType) , "EmailSubject" :: Maybe (EmailVerificationSubjectType) , "EmailMessageByLink" :: Maybe (EmailVerificationMessageByLinkType) , "EmailSubjectByLink" :: Maybe (EmailVerificationSubjectByLinkType) , "DefaultEmailOption" :: Maybe (DefaultEmailOptionType) } -> {"SmsMessage" :: Maybe (SmsVerificationMessageType) , "EmailMessage" :: Maybe (EmailVerificationMessageType) , "EmailSubject" :: Maybe (EmailVerificationSubjectType) , "EmailMessageByLink" :: Maybe (EmailVerificationMessageByLinkType) , "EmailSubjectByLink" :: Maybe (EmailVerificationSubjectByLinkType) , "DefaultEmailOption" :: Maybe (DefaultEmailOptionType) } ) -> VerificationMessageTemplateType
newVerificationMessageTemplateType'  customize = (VerificationMessageTemplateType <<< customize) { "DefaultEmailOption": Nothing, "EmailMessage": Nothing, "EmailMessageByLink": Nothing, "EmailSubject": Nothing, "EmailSubjectByLink": Nothing, "SmsMessage": Nothing }



newtype VerifiedAttributeType = VerifiedAttributeType String
derive instance newtypeVerifiedAttributeType :: Newtype VerifiedAttributeType _
derive instance repGenericVerifiedAttributeType :: Generic VerifiedAttributeType _
instance showVerifiedAttributeType :: Show VerifiedAttributeType where show = genericShow
instance decodeVerifiedAttributeType :: Decode VerifiedAttributeType where decode = genericDecode options
instance encodeVerifiedAttributeType :: Encode VerifiedAttributeType where encode = genericEncode options



newtype VerifiedAttributesListType = VerifiedAttributesListType (Array VerifiedAttributeType)
derive instance newtypeVerifiedAttributesListType :: Newtype VerifiedAttributesListType _
derive instance repGenericVerifiedAttributesListType :: Generic VerifiedAttributesListType _
instance showVerifiedAttributesListType :: Show VerifiedAttributesListType where show = genericShow
instance decodeVerifiedAttributesListType :: Decode VerifiedAttributesListType where decode = genericDecode options
instance encodeVerifiedAttributesListType :: Encode VerifiedAttributesListType where encode = genericEncode options



newtype VerifySoftwareTokenRequest = VerifySoftwareTokenRequest 
  { "AccessToken" :: Maybe (TokenModelType)
  , "Session" :: Maybe (SessionType)
  , "UserCode" :: (SoftwareTokenMFAUserCodeType)
  , "FriendlyDeviceName" :: Maybe (StringType)
  }
derive instance newtypeVerifySoftwareTokenRequest :: Newtype VerifySoftwareTokenRequest _
derive instance repGenericVerifySoftwareTokenRequest :: Generic VerifySoftwareTokenRequest _
instance showVerifySoftwareTokenRequest :: Show VerifySoftwareTokenRequest where show = genericShow
instance decodeVerifySoftwareTokenRequest :: Decode VerifySoftwareTokenRequest where decode = genericDecode options
instance encodeVerifySoftwareTokenRequest :: Encode VerifySoftwareTokenRequest where encode = genericEncode options

-- | Constructs VerifySoftwareTokenRequest from required parameters
newVerifySoftwareTokenRequest :: SoftwareTokenMFAUserCodeType -> VerifySoftwareTokenRequest
newVerifySoftwareTokenRequest _UserCode = VerifySoftwareTokenRequest { "UserCode": _UserCode, "AccessToken": Nothing, "FriendlyDeviceName": Nothing, "Session": Nothing }

-- | Constructs VerifySoftwareTokenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifySoftwareTokenRequest' :: SoftwareTokenMFAUserCodeType -> ( { "AccessToken" :: Maybe (TokenModelType) , "Session" :: Maybe (SessionType) , "UserCode" :: (SoftwareTokenMFAUserCodeType) , "FriendlyDeviceName" :: Maybe (StringType) } -> {"AccessToken" :: Maybe (TokenModelType) , "Session" :: Maybe (SessionType) , "UserCode" :: (SoftwareTokenMFAUserCodeType) , "FriendlyDeviceName" :: Maybe (StringType) } ) -> VerifySoftwareTokenRequest
newVerifySoftwareTokenRequest' _UserCode customize = (VerifySoftwareTokenRequest <<< customize) { "UserCode": _UserCode, "AccessToken": Nothing, "FriendlyDeviceName": Nothing, "Session": Nothing }



newtype VerifySoftwareTokenResponse = VerifySoftwareTokenResponse 
  { "Status" :: Maybe (VerifySoftwareTokenResponseType)
  , "Session" :: Maybe (SessionType)
  }
derive instance newtypeVerifySoftwareTokenResponse :: Newtype VerifySoftwareTokenResponse _
derive instance repGenericVerifySoftwareTokenResponse :: Generic VerifySoftwareTokenResponse _
instance showVerifySoftwareTokenResponse :: Show VerifySoftwareTokenResponse where show = genericShow
instance decodeVerifySoftwareTokenResponse :: Decode VerifySoftwareTokenResponse where decode = genericDecode options
instance encodeVerifySoftwareTokenResponse :: Encode VerifySoftwareTokenResponse where encode = genericEncode options

-- | Constructs VerifySoftwareTokenResponse from required parameters
newVerifySoftwareTokenResponse :: VerifySoftwareTokenResponse
newVerifySoftwareTokenResponse  = VerifySoftwareTokenResponse { "Session": Nothing, "Status": Nothing }

-- | Constructs VerifySoftwareTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifySoftwareTokenResponse' :: ( { "Status" :: Maybe (VerifySoftwareTokenResponseType) , "Session" :: Maybe (SessionType) } -> {"Status" :: Maybe (VerifySoftwareTokenResponseType) , "Session" :: Maybe (SessionType) } ) -> VerifySoftwareTokenResponse
newVerifySoftwareTokenResponse'  customize = (VerifySoftwareTokenResponse <<< customize) { "Session": Nothing, "Status": Nothing }



newtype VerifySoftwareTokenResponseType = VerifySoftwareTokenResponseType String
derive instance newtypeVerifySoftwareTokenResponseType :: Newtype VerifySoftwareTokenResponseType _
derive instance repGenericVerifySoftwareTokenResponseType :: Generic VerifySoftwareTokenResponseType _
instance showVerifySoftwareTokenResponseType :: Show VerifySoftwareTokenResponseType where show = genericShow
instance decodeVerifySoftwareTokenResponseType :: Decode VerifySoftwareTokenResponseType where decode = genericDecode options
instance encodeVerifySoftwareTokenResponseType :: Encode VerifySoftwareTokenResponseType where encode = genericEncode options



-- | <p>Represents the request to verify user attributes.</p>
newtype VerifyUserAttributeRequest = VerifyUserAttributeRequest 
  { "AccessToken" :: (TokenModelType)
  , "AttributeName" :: (AttributeNameType)
  , "Code" :: (ConfirmationCodeType)
  }
derive instance newtypeVerifyUserAttributeRequest :: Newtype VerifyUserAttributeRequest _
derive instance repGenericVerifyUserAttributeRequest :: Generic VerifyUserAttributeRequest _
instance showVerifyUserAttributeRequest :: Show VerifyUserAttributeRequest where show = genericShow
instance decodeVerifyUserAttributeRequest :: Decode VerifyUserAttributeRequest where decode = genericDecode options
instance encodeVerifyUserAttributeRequest :: Encode VerifyUserAttributeRequest where encode = genericEncode options

-- | Constructs VerifyUserAttributeRequest from required parameters
newVerifyUserAttributeRequest :: TokenModelType -> AttributeNameType -> ConfirmationCodeType -> VerifyUserAttributeRequest
newVerifyUserAttributeRequest _AccessToken _AttributeName _Code = VerifyUserAttributeRequest { "AccessToken": _AccessToken, "AttributeName": _AttributeName, "Code": _Code }

-- | Constructs VerifyUserAttributeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVerifyUserAttributeRequest' :: TokenModelType -> AttributeNameType -> ConfirmationCodeType -> ( { "AccessToken" :: (TokenModelType) , "AttributeName" :: (AttributeNameType) , "Code" :: (ConfirmationCodeType) } -> {"AccessToken" :: (TokenModelType) , "AttributeName" :: (AttributeNameType) , "Code" :: (ConfirmationCodeType) } ) -> VerifyUserAttributeRequest
newVerifyUserAttributeRequest' _AccessToken _AttributeName _Code customize = (VerifyUserAttributeRequest <<< customize) { "AccessToken": _AccessToken, "AttributeName": _AttributeName, "Code": _Code }



-- | <p>A container representing the response from the server from the request to verify user attributes.</p>
newtype VerifyUserAttributeResponse = VerifyUserAttributeResponse Types.NoArguments
derive instance newtypeVerifyUserAttributeResponse :: Newtype VerifyUserAttributeResponse _
derive instance repGenericVerifyUserAttributeResponse :: Generic VerifyUserAttributeResponse _
instance showVerifyUserAttributeResponse :: Show VerifyUserAttributeResponse where show = genericShow
instance decodeVerifyUserAttributeResponse :: Decode VerifyUserAttributeResponse where decode = genericDecode options
instance encodeVerifyUserAttributeResponse :: Encode VerifyUserAttributeResponse where encode = genericEncode options

