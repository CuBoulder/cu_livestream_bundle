@cu_livestream_bundle
Feature: Embed Livestream
In order to stream my video content
As an authenticated user
I should be able embed the Livestream shortcode

# Create basic page and paste in shortcode
Scenario: Functionality - Livestream embed code displays video
Given I am logged in as a user with the "site_owner" role
And I am on "node/add/page"
And fill in "edit-title" with "Livesteam Video"
And fill in "Body" with "Lorem ipsum dolor sit amet"
And I press "edit-submit"
And I should see "Livestream Video"
And I should see "Lorem ipsum dolor sit amet"
