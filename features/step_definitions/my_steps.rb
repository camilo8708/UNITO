
#You can implement step definitions for undefined steps with these snippets:

Given(/^que inicie la aplicacion$/) do
  visit '/' 
end

Then(/^debo ver titulo "([^"]*)"$/) do |jugador|
  expect(page.body).to match /#{jugador}/m
end

Then(/^debo ver una carta principal "([^"]*)" color "([^"]*)"$/) do |numero, color|
  expect(page.body).to match /#{color}/m
  expect(page.body).to match /#{numero}/m

end

Then(/^debo ver turno "([^"]*)"$/) do |turno|
  expect(page.body).to match /#{turno}/m
end

Then(/^debo ver "([^"]*)" carta para jugador "([^"]*)"$/) do |carta1, jugador|
  expect(page.body).to match /#{carta1}/m
  expect(page.body).to match /#{jugador}/m
end