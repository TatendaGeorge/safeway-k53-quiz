-- Seed data: K53 questions from freek53.xyz


-- freek53.xyz - Road Sign Test 1 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What do you do when you see this sign on a public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'do not park your vehicle in that area', true),
  ((select id from q), 'b', 'drive slow for the next 150m', false),
  ((select id from q), 'c', 'Park your vehicle at the nearest park.', false);


-- freek53.xyz - Road Sign Test 1 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign tells road users that there''s a...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Hospital ahead', false),
  ((select id from q), 'b', 'crossroad ahead', true),
  ((select id from q), 'c', 'sharp curve ahead', false);


-- freek53.xyz - Road Sign Test 1 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What do you do when you see this sign on a public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'use your hooter at other road users', false),
  ((select id from q), 'b', 'make sure the noise level of your vehicle is very low', true),
  ((select id from q), 'c', 'play loud music from your stereo', false);


-- freek53.xyz - Road Sign Test 1 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign alerts you of...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'town ahead', false),
  ((select id from q), 'b', 'right turn ahead', false),
  ((select id from q), 'c', 't-juction ahead', true);


-- freek53.xyz - Road Sign Test 1 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'How must vehicle drivers react to this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'drive for 6 hours without stopping', false),
  ((select id from q), 'b', 'use hand signals for other road users', false),
  ((select id from q), 'c', 'no hitch-hiking', true);


-- freek53.xyz - Road Sign Test 1 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'dual roadway ends', true),
  ((select id from q), 'b', 'dual roadway begins', false),
  ((select id from q), 'c', 'road widens ahead', false);


-- freek53.xyz - Road Sign Test 1 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'no unauthorised vehicles', true),
  ((select id from q), 'b', 'only trucks may drive here', false),
  ((select id from q), 'c', 'this road may be used by police vehicle only', false);


-- freek53.xyz - Road Sign Test 1 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign warns of...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'school ahead', false),
  ((select id from q), 'b', 'traffic signals ahead', true),
  ((select id from q), 'c', 'pedestrian crossing ahead', false);


-- freek53.xyz - Road Sign Test 1 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign restrict you from?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'using hand signal', false),
  ((select id from q), 'b', 'turning left ahead', true),
  ((select id from q), 'c', 'driving on the left side of the road', false);


-- freek53.xyz - Road Sign Test 1 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'there is a yield sign ahead', true),
  ((select id from q), 'b', 'there is a traffic circle ahead', false),
  ((select id from q), 'c', 'there is a stop sign ahead', false);


-- freek53.xyz - Road Sign Test 1 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What do you do when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'give right of way to pedestrians', true),
  ((select id from q), 'b', 'leave your vehicle and travel by foot', false),
  ((select id from q), 'c', 'control the traffic', false);


-- freek53.xyz - Road Sign Test 1 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'Which vehicle type is allowed in this part of the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only minibuses may drive there', false),
  ((select id from q), 'b', 'only buses may drive there', false),
  ((select id from q), 'c', 'only tour buses may drive there', true);


-- freek53.xyz - Road Sign Test 1 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign alerts you that...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'dead end ahead', false),
  ((select id from q), 'b', 'gravel road begins ahead', true),
  ((select id from q), 'c', 'potholes', false);


-- freek53.xyz - Road Sign Test 1 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'Which vehicle type is allowed on this part of the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'construction vehicles only', true),
  ((select id from q), 'b', 'buses only', false),
  ((select id from q), 'c', 'delivery vehicles only', false);


-- freek53.xyz - Road Sign Test 1 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign warn you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'the road ahead is closed', false),
  ((select id from q), 'b', 'there is a gate on the road ahead', false),
  ((select id from q), 'c', 'The road narrows when crossing the bridge', true);


-- freek53.xyz - Road Sign Test 1 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign tell road users', 'https://www.freek53.xyz/K53_Sign_Test/img/1-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only buses are allowed here', false),
  ((select id from q), 'b', 'only abnormal vehicles are allowed here', true),
  ((select id from q), 'c', 'only vehicles carrying dangerous substances are allowed here.', false);


-- freek53.xyz - Road Sign Test 1 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign alerts you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'one vehicle width structure ahead', true),
  ((select id from q), 'b', 'only taxis may drive there', false),
  ((select id from q), 'c', 'Buses reservation only ahead', false);


-- freek53.xyz - Road Sign Test 1 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Motor cars only', false),
  ((select id from q), 'b', 'Animal drawn vehicles only', false),
  ((select id from q), 'c', 'Rickshaws only', true);


-- freek53.xyz - Road Sign Test 1 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign warns you of?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'two way road ahead', false),
  ((select id from q), 'b', 'road narrows from both sides ahead', true),
  ((select id from q), 'c', 'pedestrian crossing ahead', false);


-- freek53.xyz - Road Sign Test 1 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'How should you react to this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'must switch headlamps on', true),
  ((select id from q), 'b', 'must turn up the volume of your stereo', false),
  ((select id from q), 'c', 'must drive at high speed', false);


-- freek53.xyz - Road Sign Test 1 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this warn you of?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'tunnel on the road ahead', false),
  ((select id from q), 'b', 'pay toll', true),
  ((select id from q), 'c', 'trucks toll ahead', false);


-- freek53.xyz - Road Sign Test 1 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'How should vehicle drivers react to this road marking?
(i) Do not drive on this part of the road.
(ii) Can park to change tyre.
(iii) May stop for a break.', 'https://www.freek53.xyz/K53_Sign_Test/img/1-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i), (ii) and (iii)', true),
  ((select id from q), 'b', '(i) and (ii)', false),
  ((select id from q), 'c', '(i) only', false);


-- freek53.xyz - Road Sign Test 1 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What do you do when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'drive around in circles without stopping', false),
  ((select id from q), 'b', 'u-turn', false),
  ((select id from q), 'c', 'drive in a clockwise direction at the junction.', true);


-- freek53.xyz - Road Sign Test 1 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This roadmarking informs drivers that...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'parking is prohibited in this area', false),
  ((select id from q), 'b', 'you may park your vehicle here', true),
  ((select id from q), 'c', 'mall parking lot available', false);


-- freek53.xyz - Road Sign Test 1 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What does this sign tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only taxis may drive there', true),
  ((select id from q), 'b', 'only motor cars may drive there', false),
  ((select id from q), 'c', 'only mini-buses may drive there', false);


-- freek53.xyz - Road Sign Test 1 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'When approaching this road marking a driver must...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only stop when directed to do so by a traffic officer', false),
  ((select id from q), 'b', 'drive for 60 km without stopping', false),
  ((select id from q), 'c', 'only proceed in the direction indicated by the arrow in your lane', true);


-- freek53.xyz - Road Sign Test 1 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What is the meaning of this sign', 'https://www.freek53.xyz/K53_Sign_Test/img/1-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'motor cars only', false),
  ((select id from q), 'b', 'animal drawn vehicles only', true),
  ((select id from q), 'c', 'rickshaws only', false);


-- freek53.xyz - Road Sign Test 1 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'What do you do when you come across this road marking at parking bays?
(i) Park your vehicle at any spot you like.
(ii) Parking available only for road users identified by the symbol.
(iii) For emergency you may park on the SOS sign', 'https://www.freek53.xyz/K53_Sign_Test/img/1-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(ii) and (iii)', true),
  ((select id from q), 'b', '(iii) only', false),
  ((select id from q), 'c', '(i) and (iii)', false);


-- freek53.xyz - Road Sign Test 1 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This sign means this part of the road is for...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'a vehicle with a (gvm) less or equal to the mass indicated on the sign', false),
  ((select id from q), 'b', 'vehicles with a (gvm) less than the mass indicated on the sign', false),
  ((select id from q), 'c', 'vehicles with a (gvm) exceeding the mass indicated on the sign', true);


-- freek53.xyz - Road Sign Test 1 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 1', 'This road marking warns road users that...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'This part of the road may not be used by the buses', false),
  ((select id from q), 'b', 'This part of the road is for buses only', true),
  ((select id from q), 'c', 'this part of the road may be used by pedestrians as a bus stop', false);


-- freek53.xyz - Road Sign Test 2 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The road ahead is uneven', true),
  ((select id from q), 'b', 'There are humps ahead', false),
  ((select id from q), 'c', 'There is a river nearby', false);


-- freek53.xyz - Road Sign Test 2 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There is a priority crossroad ahead and you do not have a right of way', false),
  ((select id from q), 'b', 'There is a priority crossroad ahead and you have right of way', true),
  ((select id from q), 'c', 'There is a crossroad ahead', false);


-- freek53.xyz - Road Sign Test 2 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign tells you to be on the lookout for...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'potholes', false),
  ((select id from q), 'b', 'speed humps', true),
  ((select id from q), 'c', 'rocks on the road', false);


-- freek53.xyz - Road Sign Test 2 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There is a secondary crossroad ahead and you have right of way', false),
  ((select id from q), 'b', 'There is a crossroad ahead', false),
  ((select id from q), 'c', 'There is a secondary crossroad ahead and you do not have right of way, you have to yield to cross traffic.', true);


-- freek53.xyz - Road Sign Test 2 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign alerts you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'drifting allowed on the road ahead', false),
  ((select id from q), 'b', 'fuel dumped on the road', false),
  ((select id from q), 'c', 'slippery road ahead', true);


-- freek53.xyz - Road Sign Test 2 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'skew T-junction ahead', true),
  ((select id from q), 'b', 'T-junction ahead', false),
  ((select id from q), 'c', 'side road junction ahead', false);


-- freek53.xyz - Road Sign Test 2 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign tells you to be on the lookout for what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'temporary construction or maintenance works ahead', true),
  ((select id from q), 'b', 'Pedestrians ahead', false),
  ((select id from q), 'c', 'Road block ahead', false);


-- freek53.xyz - Road Sign Test 2 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign warn you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'That the traffic may be approaching you from the right hand side', false),
  ((select id from q), 'b', 'That the traffic may be approaching you from the left hand side.', true),
  ((select id from q), 'c', 'That the traffic may be approaching you straight up ahead', false);


-- freek53.xyz - Road Sign Test 2 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign alerts you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No through way ahead', false),
  ((select id from q), 'b', 'Hazard ahead', true),
  ((select id from q), 'c', 'Traffic signals ahead', false);


-- freek53.xyz - Road Sign Test 2 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Where two roads join your road within a short distance', true),
  ((select id from q), 'b', 'On any road', false),
  ((select id from q), 'c', 'Road that splits in two', false);


-- freek53.xyz - Road Sign Test 2 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign tells road users that...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There is a jetty edge or river bank ahead', true),
  ((select id from q), 'b', 'Parking available for surfers', false),
  ((select id from q), 'c', 'Motorcars not allowed on this road.', false);


-- freek53.xyz - Road Sign Test 2 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign warn you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Traffic could merge ahead', false),
  ((select id from q), 'b', 'Traffic could merge from the right at sharp angles', false),
  ((select id from q), 'c', 'Traffic could merge from the left at sharp angles', true);


-- freek53.xyz - Road Sign Test 2 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'hazard ahead', false),
  ((select id from q), 'b', 'A yield sign ahead', true),
  ((select id from q), 'c', 'speed humps ahead', false);


-- freek53.xyz - Road Sign Test 2 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'y-junction ahead', true),
  ((select id from q), 'b', 't-junction ahead', false),
  ((select id from q), 'c', 'side road junction ahead', false);


-- freek53.xyz - Road Sign Test 2 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'near a police station', false),
  ((select id from q), 'b', 'near a shopping centre.', false),
  ((select id from q), 'c', 'Located in any road but especially in rural areas near schools', true);


-- freek53.xyz - Road Sign Test 2 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users', 'https://www.freek53.xyz/K53_Sign_Test/img/2-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only mini buses may drive there', false),
  ((select id from q), 'b', 'only taxis may drive there.', true),
  ((select id from q), 'c', 'only motor cars may drive there.', false);


-- freek53.xyz - Road Sign Test 2 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign alerts you that...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A scholar patrol operating ahead', true),
  ((select id from q), 'b', 'The road is under construction.', false),
  ((select id from q), 'c', 'There is a stop and go ahead', false);


-- freek53.xyz - Road Sign Test 2 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign tells you that only... may use that part of the road', 'https://www.freek53.xyz/K53_Sign_Test/img/2-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Delivery vehicles', false),
  ((select id from q), 'b', 'Abnormal vehicles', false),
  ((select id from q), 'c', 'Mini buses', true);


-- freek53.xyz - Road Sign Test 2 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'cattle farm ahead', false),
  ((select id from q), 'b', 'The may be free ranging animals such as cattles on the road.', true),
  ((select id from q), 'c', 'wild animals ahead', false);


-- freek53.xyz - Road Sign Test 2 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'Which vehicle type is allowed on this part of the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only buses may drive there', true),
  ((select id from q), 'b', 'Only mini buses may drive there', false),
  ((select id from q), 'c', 'Only tour buses may drive there.', false);


-- freek53.xyz - Road Sign Test 2 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this road marking tell vehicle drivers?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Car racing is allowed', false),
  ((select id from q), 'b', 'You may not cross to the right hand side of the line', true),
  ((select id from q), 'c', 'You may only travel at high speed on this road.', false);


-- freek53.xyz - Road Sign Test 2 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign mean on public roads?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No taxis allowed', true),
  ((select id from q), 'b', 'No motorcars allowed', false),
  ((select id from q), 'c', 'No buses allowed', false);


-- freek53.xyz - Road Sign Test 2 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What do you do when you see this road marking at an intersection?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Drive on if there are no vehicles.', false),
  ((select id from q), 'b', 'slow down and proceed', false),
  ((select id from q), 'c', 'stop your vehicle behind the stop line', true);


-- freek53.xyz - Road Sign Test 2 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'This sign means that...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Motor cars may not drive there', false),
  ((select id from q), 'b', 'Minibuses may not drive there', true),
  ((select id from q), 'c', 'Vehicles transporting children may not drive there.', false);


-- freek53.xyz - Road Sign Test 2 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'At an intersection when you see this sign, you must...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'yield to other traffic', true),
  ((select id from q), 'b', 'proceed without stopping', false),
  ((select id from q), 'c', 'Look out for pedestrians', false);


-- freek53.xyz - Road Sign Test 2 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'you may not buy from hawkers', false),
  ((select id from q), 'b', 'do not park near a hawker', false),
  ((select id from q), 'c', 'Hawkers are not allowed', true);


-- freek53.xyz - Road Sign Test 2 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'At an intersection when you see this sign, you must...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Look out for pedestrians', false),
  ((select id from q), 'b', 'yield to other traffic', true),
  ((select id from q), 'c', 'proceed without stopping', false);


-- freek53.xyz - Road Sign Test 2 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Constructions vehicle not allowed', true),
  ((select id from q), 'b', 'Agricultural vehicles not allowed', false),
  ((select id from q), 'c', 'Abnormal vehicles mot allowed', false);


-- freek53.xyz - Road Sign Test 2 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'How must you react when you approach this sign at an intersection?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Park your vehicle and travel by foot', false),
  ((select id from q), 'b', 'Travel at a high speed and pass as quickly as possible', false),
  ((select id from q), 'c', 'Give right of way to pedestrians crossing the road or wanting to cross the road.', true);


-- freek53.xyz - Road Sign Test 2 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 2', 'What does this sign forbids?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Animal drawn vehicle', false),
  ((select id from q), 'b', 'Rickshaws', true),
  ((select id from q), 'c', 'Horse riders', false);
