Using offline Token through direct access grant flow

The requirement is to have:

- a client application deployed within a realm
- a user created in this realm, who has got off_line role

Token lifespan

For the example, token lifespan has been adjusted as follows:
- SSO session Idle Timeout: 1mn
(a.k.a Refresh token validity is 1minute)
- Access token: 1 min
- OffLine Tokens: 60 days

Setting the maximum invokation of refresh token

It is possible to the maximum number amount of times a refresh token can be reused, before being ineffective

This is done using:

- The revoke refresh token toggle
- indicates the maximum number of times a refresh token can be reused

