# GitHub OAuth Demo with Omniauth

## Introduction
This repo was created as a reference for a YegRB talk I'll be giving in Edmonton, Alberta on Tuesday, November 17th.

The purpose here is to demonstrate a few ideas:
* OAuth can be intimidating, but the omniauth library can significnatly reduce the complexity of implementing it.
* With omniauth adding additional forms of authentication is very quick and easy.
* You don't need a large authentication/authorization library like Warden or Devise
  * If your needs are basic it's straightforward to hand-roll your own solution.
* It's a good idea to implement an OAuth library for a widely adopted authentication source (like GitHub) instead of making your users create a new account.
  * This can also simplify the boilerplate (account creation, password recovery, etc.) you need to create in your own product.

## Structure of this repo
There are a number of branches that reflect progress through the problem:

* `add-some-dummy-pages` - Adds a few pages including a 'private' page that we can work with.
* `adding-omniauth` - Adds the omniauth library and some basic controllers to manage the oauth flows.
* `adding-user-model` - Adds a user model that we can use to record and use the data collected by omniauth.
* `add-access-control` - With a user model and session controller, use the session data to control access to our private page.
* `switch-to-github-auth` - Now that we have a functioning authentication and authorization system, move to GitHub auth through omniauth
