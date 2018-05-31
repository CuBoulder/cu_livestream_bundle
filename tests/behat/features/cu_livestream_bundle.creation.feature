@cu_livestream_bundle
Feature: Embed Livestream

    Scenario: An anonymous user should not be able to access the form for adding a basic page
        When I am on "node/add/page"
        Then I should see "Access denied"