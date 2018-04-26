
module AWS.CognitoIdentityServiceProvider.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CognitoIdentityServiceProvider as CognitoIdentityServiceProvider
import AWS.CognitoIdentityServiceProvider.Types as CognitoIdentityServiceProviderTypes


-- | <p>Adds additional user attributes to the user pool schema.</p>
addCustomAttributes :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AddCustomAttributesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AddCustomAttributesResponse
addCustomAttributes (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addCustomAttributes"


-- | <p>Adds the specified user to the specified group.</p> <p>Requires developer credentials.</p>
adminAddUserToGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminAddUserToGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
adminAddUserToGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminAddUserToGroup"


-- | <p>Confirms user registration as an admin without using a confirmation code. Works on any user.</p> <p>Requires developer credentials.</p>
adminConfirmSignUp :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminConfirmSignUpRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminConfirmSignUpResponse
adminConfirmSignUp (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminConfirmSignUp"


-- | <p>Creates a new user in the specified user pool.</p> <p>If <code>MessageAction</code> is not set, the default is to send a welcome message via email or phone (SMS).</p> <note> <p>This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.</p> </note> <p>Alternatively, you can call AdminCreateUser with “SUPPRESS” for the <code>MessageAction</code> parameter, and Amazon Cognito will not send any email. </p> <p>In either case, the user will be in the <code>FORCE_CHANGE_PASSWORD</code> state until they sign in and change their password.</p> <p>AdminCreateUser requires developer credentials.</p>
adminCreateUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminCreateUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminCreateUserResponse
adminCreateUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminCreateUser"


-- | <p>Deletes a user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>
adminDeleteUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminDeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Unit
adminDeleteUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminDeleteUser"


-- | <p>Deletes the user attributes in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>
adminDeleteUserAttributes :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminDeleteUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminDeleteUserAttributesResponse
adminDeleteUserAttributes (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminDeleteUserAttributes"


-- | <p>Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked <code>DestinationUser</code>) signs in, they must create a new user account. See .</p> <p>This action is enabled only for admin access and requires developer credentials.</p> <p>The <code>ProviderName</code> must match the value specified when creating an IdP for the pool. </p> <p>To disable a native username + password user, the <code>ProviderName</code> value must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code>, with the <code>ProviderAttributeValue</code> being the name that is used in the user pool for the user.</p> <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for social identity providers. The <code>ProviderAttributeValue</code> must always be the exact subject that was used when the user was originally linked as a source user.</p> <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the <code>ProviderAttributeName</code> and <code>ProviderAttributeValue</code> must be the same values that were used for the <code>SourceUser</code> when the identities were originally linked in the call. (If the linking was done with <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same applies here). However, if the user has already signed in, the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the subject of the SAML assertion.</p>
adminDisableProviderForUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminDisableProviderForUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminDisableProviderForUserResponse
adminDisableProviderForUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminDisableProviderForUser"


-- | <p>Disables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>
adminDisableUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminDisableUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminDisableUserResponse
adminDisableUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminDisableUser"


-- | <p>Enables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>
adminEnableUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminEnableUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminEnableUserResponse
adminEnableUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminEnableUser"


-- | <p>Forgets the device, as an administrator.</p> <p>Requires developer credentials.</p>
adminForgetDevice :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminForgetDeviceRequest -> Aff (exception :: EXCEPTION | eff) Unit
adminForgetDevice (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminForgetDevice"


-- | <p>Gets the device, as an administrator.</p> <p>Requires developer credentials.</p>
adminGetDevice :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminGetDeviceRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminGetDeviceResponse
adminGetDevice (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminGetDevice"


-- | <p>Gets the specified user by user name in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>
adminGetUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminGetUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminGetUserResponse
adminGetUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminGetUser"


-- | <p>Initiates the authentication flow, as an administrator.</p> <p>Requires developer credentials.</p>
adminInitiateAuth :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminInitiateAuthRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminInitiateAuthResponse
adminInitiateAuth (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminInitiateAuth"


-- | <p>Links an existing user account in a user pool (<code>DestinationUser</code>) to an identity from an external identity provider (<code>SourceUser</code>) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account. </p> <p> For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account. </p> <important> <p>Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.</p> </important> <p>See also .</p> <p>This action is enabled only for admin access and requires developer credentials.</p>
adminLinkProviderForUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminLinkProviderForUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminLinkProviderForUserResponse
adminLinkProviderForUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminLinkProviderForUser"


-- | <p>Lists devices, as an administrator.</p> <p>Requires developer credentials.</p>
adminListDevices :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminListDevicesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminListDevicesResponse
adminListDevices (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminListDevices"


-- | <p>Lists the groups that the user belongs to.</p> <p>Requires developer credentials.</p>
adminListGroupsForUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminListGroupsForUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminListGroupsForUserResponse
adminListGroupsForUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminListGroupsForUser"


-- | <p>Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.</p>
adminListUserAuthEvents :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminListUserAuthEventsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminListUserAuthEventsResponse
adminListUserAuthEvents (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminListUserAuthEvents"


-- | <p>Removes the specified user from the specified group.</p> <p>Requires developer credentials.</p>
adminRemoveUserFromGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminRemoveUserFromGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
adminRemoveUserFromGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminRemoveUserFromGroup"


-- | <p>Resets the specified user's password in a user pool as an administrator. Works on any user.</p> <p>When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.</p> <p>Requires developer credentials.</p>
adminResetUserPassword :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminResetUserPasswordRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminResetUserPasswordResponse
adminResetUserPassword (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminResetUserPassword"


-- | <p>Responds to an authentication challenge, as an administrator.</p> <p>Requires developer credentials.</p>
adminRespondToAuthChallenge :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminRespondToAuthChallengeRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminRespondToAuthChallengeResponse
adminRespondToAuthChallenge (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminRespondToAuthChallenge"


-- | <p>Sets the user's multi-factor authentication (MFA) preference.</p>
adminSetUserMFAPreference :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminSetUserMFAPreferenceRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminSetUserMFAPreferenceResponse
adminSetUserMFAPreference (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminSetUserMFAPreference"


-- | <p>Sets all the user settings for a specified user name. Works on any user.</p> <p>Requires developer credentials.</p>
adminSetUserSettings :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminSetUserSettingsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminSetUserSettingsResponse
adminSetUserSettings (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminSetUserSettings"


-- | <p>Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>
adminUpdateAuthEventFeedback :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminUpdateAuthEventFeedbackRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminUpdateAuthEventFeedbackResponse
adminUpdateAuthEventFeedback (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminUpdateAuthEventFeedback"


-- | <p>Updates the device status as an administrator.</p> <p>Requires developer credentials.</p>
adminUpdateDeviceStatus :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminUpdateDeviceStatusRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminUpdateDeviceStatusResponse
adminUpdateDeviceStatus (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminUpdateDeviceStatus"


-- | <p>Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>In addition to updating user attributes, this API can also be used to mark phone and email as verified.</p> <p>Requires developer credentials.</p>
adminUpdateUserAttributes :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminUpdateUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminUpdateUserAttributesResponse
adminUpdateUserAttributes (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminUpdateUserAttributes"


-- | <p>Signs out users from all devices, as an administrator.</p> <p>Requires developer credentials.</p>
adminUserGlobalSignOut :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AdminUserGlobalSignOutRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AdminUserGlobalSignOutResponse
adminUserGlobalSignOut (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "adminUserGlobalSignOut"


-- | <p>Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.</p>
associateSoftwareToken :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.AssociateSoftwareTokenRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.AssociateSoftwareTokenResponse
associateSoftwareToken (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateSoftwareToken"


-- | <p>Changes the password for a specified user in a user pool.</p>
changePassword :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ChangePasswordRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ChangePasswordResponse
changePassword (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changePassword"


-- | <p>Confirms tracking of the device. This API call is the call that begins device tracking.</p>
confirmDevice :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ConfirmDeviceRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ConfirmDeviceResponse
confirmDevice (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "confirmDevice"


-- | <p>Allows a user to enter a confirmation code to reset a forgotten password.</p>
confirmForgotPassword :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ConfirmForgotPasswordRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ConfirmForgotPasswordResponse
confirmForgotPassword (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "confirmForgotPassword"


-- | <p>Confirms registration of a user and handles the existing alias from a previous user.</p>
confirmSignUp :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ConfirmSignUpRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ConfirmSignUpResponse
confirmSignUp (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "confirmSignUp"


-- | <p>Creates a new group in the specified user pool.</p> <p>Requires developer credentials.</p>
createGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateGroupRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateGroupResponse
createGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createGroup"


-- | <p>Creates an identity provider for a user pool.</p>
createIdentityProvider :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateIdentityProviderResponse
createIdentityProvider (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createIdentityProvider"


-- | <p>Creates a new OAuth2.0 resource server and defines custom scopes in it.</p>
createResourceServer :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateResourceServerRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateResourceServerResponse
createResourceServer (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createResourceServer"


-- | <p>Creates the user import job.</p>
createUserImportJob :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateUserImportJobResponse
createUserImportJob (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUserImportJob"


-- | <p>Creates a new Amazon Cognito user pool and sets the password policy for the pool.</p>
createUserPool :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateUserPoolRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateUserPoolResponse
createUserPool (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUserPool"


-- | <p>Creates the user pool client.</p>
createUserPoolClient :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateUserPoolClientResponse
createUserPoolClient (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUserPoolClient"


-- | <p>Creates a new domain for a user pool.</p>
createUserPoolDomain :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.CreateUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.CreateUserPoolDomainResponse
createUserPoolDomain (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUserPoolDomain"


-- | <p>Deletes a group. Currently only groups with no members can be deleted.</p> <p>Requires developer credentials.</p>
deleteGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteGroup"


-- | <p>Deletes an identity provider for a user pool.</p>
deleteIdentityProvider :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteIdentityProvider (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIdentityProvider"


-- | <p>Deletes a resource server.</p>
deleteResourceServer :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteResourceServerRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteResourceServer (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteResourceServer"


-- | <p>Allows a user to delete himself or herself.</p>
deleteUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUser"


-- | <p>Deletes the attributes for a user.</p>
deleteUserAttributes :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DeleteUserAttributesResponse
deleteUserAttributes (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserAttributes"


-- | <p>Deletes the specified Amazon Cognito user pool.</p>
deleteUserPool :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteUserPoolRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteUserPool (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserPool"


-- | <p>Allows the developer to delete the user pool client.</p>
deleteUserPoolClient :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteUserPoolClient (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserPoolClient"


-- | <p>Deletes a domain for a user pool.</p>
deleteUserPoolDomain :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DeleteUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DeleteUserPoolDomainResponse
deleteUserPoolDomain (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserPoolDomain"


-- | <p>Gets information about a specific identity provider.</p>
describeIdentityProvider :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeIdentityProviderResponse
describeIdentityProvider (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentityProvider"


-- | <p>Describes a resource server.</p>
describeResourceServer :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeResourceServerRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeResourceServerResponse
describeResourceServer (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeResourceServer"


-- | <p>Describes the risk configuration.</p>
describeRiskConfiguration :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeRiskConfigurationRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeRiskConfigurationResponse
describeRiskConfiguration (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRiskConfiguration"


-- | <p>Describes the user import job.</p>
describeUserImportJob :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeUserImportJobResponse
describeUserImportJob (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUserImportJob"


-- | <p>Returns the configuration information and metadata of the specified user pool.</p>
describeUserPool :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeUserPoolRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeUserPoolResponse
describeUserPool (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUserPool"


-- | <p>Client method for returning the configuration information and metadata of the specified user pool client.</p>
describeUserPoolClient :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeUserPoolClientResponse
describeUserPoolClient (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUserPoolClient"


-- | <p>Gets information about a domain.</p>
describeUserPoolDomain :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.DescribeUserPoolDomainRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.DescribeUserPoolDomainResponse
describeUserPoolDomain (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUserPoolDomain"


-- | <p>Forgets the specified device.</p>
forgetDevice :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ForgetDeviceRequest -> Aff (exception :: EXCEPTION | eff) Unit
forgetDevice (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "forgetDevice"


-- | <p>Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the <code>Username</code> parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, <code>InvalidParameterException</code> is thrown. To use the confirmation code for resetting the password, call .</p>
forgotPassword :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ForgotPasswordRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ForgotPasswordResponse
forgotPassword (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "forgotPassword"


-- | <p>Gets the header information for the .csv file to be used as input for the user import job.</p>
getCSVHeader :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetCSVHeaderRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetCSVHeaderResponse
getCSVHeader (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCSVHeader"


-- | <p>Gets the device.</p>
getDevice :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetDeviceRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetDeviceResponse
getDevice (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDevice"


-- | <p>Gets a group.</p> <p>Requires developer credentials.</p>
getGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetGroupRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetGroupResponse
getGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGroup"


-- | <p>Gets the specified identity provider.</p>
getIdentityProviderByIdentifier :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetIdentityProviderByIdentifierRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetIdentityProviderByIdentifierResponse
getIdentityProviderByIdentifier (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIdentityProviderByIdentifier"


-- | <p>This method takes a user pool ID, and returns the signing certificate.</p>
getSigningCertificate :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetSigningCertificateResponse
getSigningCertificate (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSigningCertificate"


-- | <p>Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app <code>clientId</code> will be <code>ALL</code>), then that is returned. If nothing is present, then an empty shape is returned.</p>
getUICustomization :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetUICustomizationRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetUICustomizationResponse
getUICustomization (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUICustomization"


-- | <p>Gets the user attributes and metadata for a user.</p>
getUser :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetUserRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetUserResponse
getUser (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUser"


-- | <p>Gets the user attribute verification code for the specified attribute name.</p>
getUserAttributeVerificationCode :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetUserAttributeVerificationCodeRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetUserAttributeVerificationCodeResponse
getUserAttributeVerificationCode (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUserAttributeVerificationCode"


-- | <p>Gets the user pool multi-factor authentication (MFA) configuration.</p>
getUserPoolMfaConfig :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GetUserPoolMfaConfigRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GetUserPoolMfaConfigResponse
getUserPoolMfaConfig (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUserPoolMfaConfig"


-- | <p>Signs out users from all devices.</p>
globalSignOut :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.GlobalSignOutRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.GlobalSignOutResponse
globalSignOut (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "globalSignOut"


-- | <p>Initiates the authentication flow.</p>
initiateAuth :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.InitiateAuthRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.InitiateAuthResponse
initiateAuth (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "initiateAuth"


-- | <p>Lists the devices.</p>
listDevices :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListDevicesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListDevicesResponse
listDevices (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDevices"


-- | <p>Lists the groups associated with a user pool.</p> <p>Requires developer credentials.</p>
listGroups :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListGroupsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListGroupsResponse
listGroups (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroups"


-- | <p>Lists information about all identity providers for a user pool.</p>
listIdentityProviders :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListIdentityProvidersRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListIdentityProvidersResponse
listIdentityProviders (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIdentityProviders"


-- | <p>Lists the resource servers for a user pool.</p>
listResourceServers :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListResourceServersRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListResourceServersResponse
listResourceServers (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listResourceServers"


-- | <p>Lists the user import jobs.</p>
listUserImportJobs :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListUserImportJobsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListUserImportJobsResponse
listUserImportJobs (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUserImportJobs"


-- | <p>Lists the clients that have been created for the specified user pool.</p>
listUserPoolClients :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListUserPoolClientsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListUserPoolClientsResponse
listUserPoolClients (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUserPoolClients"


-- | <p>Lists the user pools associated with an AWS account.</p>
listUserPools :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListUserPoolsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListUserPoolsResponse
listUserPools (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUserPools"


-- | <p>Lists the users in the Amazon Cognito user pool.</p>
listUsers :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListUsersRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListUsersResponse
listUsers (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUsers"


-- | <p>Lists the users in the specified group.</p> <p>Requires developer credentials.</p>
listUsersInGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ListUsersInGroupRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ListUsersInGroupResponse
listUsersInGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUsersInGroup"


-- | <p>Resends the confirmation (for confirmation of registration) to a specific user in the user pool.</p>
resendConfirmationCode :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.ResendConfirmationCodeRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.ResendConfirmationCodeResponse
resendConfirmationCode (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resendConfirmationCode"


-- | <p>Responds to the authentication challenge.</p>
respondToAuthChallenge :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.RespondToAuthChallengeRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.RespondToAuthChallengeResponse
respondToAuthChallenge (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "respondToAuthChallenge"


-- | <p>Configures actions on detected risks. To delete the risk configuration for <code>UserPoolId</code> or <code>ClientId</code>, pass null values for all four configuration types.</p> <p>To enable Amazon Cognito advanced security features, update the user pool to include the <code>UserPoolAddOns</code> key<code>AdvancedSecurityMode</code>.</p> <p>See .</p>
setRiskConfiguration :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SetRiskConfigurationRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SetRiskConfigurationResponse
setRiskConfiguration (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setRiskConfiguration"


-- | <p>Sets the UI customization information for a user pool's built-in app UI.</p> <p>You can specify app UI customization settings for a single client (with a specific <code>clientId</code>) or for all clients (by setting the <code>clientId</code> to <code>ALL</code>). If you specify <code>ALL</code>, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the <code>ALL</code> configuration. </p> <note> <p>To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error.</p> </note>
setUICustomization :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SetUICustomizationRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SetUICustomizationResponse
setUICustomization (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setUICustomization"


-- | <p>Set the user's multi-factor authentication (MFA) method preference.</p>
setUserMFAPreference :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SetUserMFAPreferenceRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SetUserMFAPreferenceResponse
setUserMFAPreference (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setUserMFAPreference"


-- | <p>Set the user pool MFA configuration.</p>
setUserPoolMfaConfig :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SetUserPoolMfaConfigRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SetUserPoolMfaConfigResponse
setUserPoolMfaConfig (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setUserPoolMfaConfig"


-- | <p>Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.</p>
setUserSettings :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SetUserSettingsRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SetUserSettingsResponse
setUserSettings (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setUserSettings"


-- | <p>Registers the user in the specified user pool and creates a user name, password, and user attributes.</p>
signUp :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.SignUpRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.SignUpResponse
signUp (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "signUp"


-- | <p>Starts the user import.</p>
startUserImportJob :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.StartUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.StartUserImportJobResponse
startUserImportJob (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startUserImportJob"


-- | <p>Stops the user import job.</p>
stopUserImportJob :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.StopUserImportJobRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.StopUserImportJobResponse
stopUserImportJob (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopUserImportJob"


-- | <p>Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>
updateAuthEventFeedback :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateAuthEventFeedbackRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateAuthEventFeedbackResponse
updateAuthEventFeedback (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAuthEventFeedback"


-- | <p>Updates the device status.</p>
updateDeviceStatus :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateDeviceStatusRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateDeviceStatusResponse
updateDeviceStatus (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDeviceStatus"


-- | <p>Updates the specified group with the specified attributes.</p> <p>Requires developer credentials.</p>
updateGroup :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateGroupRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateGroupResponse
updateGroup (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGroup"


-- | <p>Updates identity provider information for a user pool.</p>
updateIdentityProvider :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateIdentityProviderRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateIdentityProviderResponse
updateIdentityProvider (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateIdentityProvider"


-- | <p>Updates the name and scopes of resource server. All other fields are read-only.</p>
updateResourceServer :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateResourceServerRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateResourceServerResponse
updateResourceServer (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateResourceServer"


-- | <p>Allows a user to update a specific attribute (one at a time).</p>
updateUserAttributes :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateUserAttributesRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateUserAttributesResponse
updateUserAttributes (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateUserAttributes"


-- | <p>Updates the specified user pool with the specified attributes.</p>
updateUserPool :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateUserPoolRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateUserPoolResponse
updateUserPool (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateUserPool"


-- | <p>Allows the developer to update the specified user pool client and password policy.</p>
updateUserPoolClient :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.UpdateUserPoolClientRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.UpdateUserPoolClientResponse
updateUserPoolClient (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateUserPoolClient"


-- | <p>Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful,</p>
verifySoftwareToken :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.VerifySoftwareTokenRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.VerifySoftwareTokenResponse
verifySoftwareToken (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "verifySoftwareToken"


-- | <p>Verifies the specified user attributes in the user pool.</p>
verifyUserAttribute :: forall eff. CognitoIdentityServiceProvider.Service -> CognitoIdentityServiceProviderTypes.VerifyUserAttributeRequest -> Aff (exception :: EXCEPTION | eff) CognitoIdentityServiceProviderTypes.VerifyUserAttributeResponse
verifyUserAttribute (CognitoIdentityServiceProvider.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "verifyUserAttribute"
