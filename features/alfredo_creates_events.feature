Feature:
  In order to learn from other people
  As a developer
  I want to be able to see the future events

  Scenario: Can not create events if not signed in
    When I ask for the next events
    Then I am not able to create new events

  Scenario: create an event
    Given I ask for the next events
    And I identify myself as "Alberto"
    When I create "a pair programming session" event for the next week at 10:00
    And I ask for the next events
    Then I must see "a pair programming session" event at 10:00 the next week
