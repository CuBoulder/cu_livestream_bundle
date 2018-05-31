@cu_livestream_bundle @javascript
Feature: Embed Livestream
In order to stream my video content
As an authenticated user
I should be able embed the Livestream shortcode

# Create basic page and paste in College of Music shortcode
# Code for real event dispays "CU Boulder College of Music"
# Code for not real event displays "This Event Has Been Deleted"
# Code when bundle not enabled displays "livestream id="

Scenario: Functionality - Livestream embed code displays video
Given I am logged in as a user with the "site_owner" role
And I am on "node/add/page"
And fill in "edit-title" with "My LS Video"
And fill in "Body" with "[livestream id=\"ls_embed_1524756180\" account=\"5802933\" event=\"7976259\" /]"
And I press "edit-submit"
Then I should see "My LS Video"
And I should not see "livestream id="
And I should see "CU Boulder College of Music"
