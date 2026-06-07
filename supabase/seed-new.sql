-- K53 Learners Licence Quiz App - Seed Data
-- Run schema.sql first, then this file

-- freek53.xyz - Light Vehicle Controls Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'The... is not found in an automatic vehicle', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '8', true),
  ((select id from q), 'b', '5', false),
  ((select id from q), 'c', '3', false);

-- freek53.xyz - Light Vehicle Controls Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'The... is the control you would use to check the right hand rear-side of your vehicle', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '3', true),
  ((select id from q), 'b', '5', false),
  ((select id from q), 'c', '10', false);

-- freek53.xyz - Light Vehicle Controls Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control is used to accelerate your vehicle?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '3', false),
  ((select id from q), 'b', '7', false),
  ((select id from q), 'c', '10', true);

-- freek53.xyz - Light Vehicle Controls Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control is used to ensure that your parked vehicle does not move?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '7', true),
  ((select id from q), 'b', '1', false),
  ((select id from q), 'c', '9', false);

-- freek53.xyz - Light Vehicle Controls Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'To change gears, which controls are used?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '8 and 6', true),
  ((select id from q), 'b', '8 and 10', false),
  ((select id from q), 'c', '8 and 7', false);

-- freek53.xyz - Light Vehicle Controls Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control is used to stop your vehicle?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '5', false),
  ((select id from q), 'b', '11', false),
  ((select id from q), 'c', '9', true);

-- freek53.xyz - Light Vehicle Controls Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'When brakes are applied, the distance it takes to stop your vehicle is (i) Longer if carrying a passenger. (ii) Longer on a wet surface than on dry surface. (iii) Longer if driving at a higher speed.', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i)', false),
  ((select id from q), 'b', '(ii) and (iii)', false),
  ((select id from q), 'c', '(i), (ii) and (iii)', true);

-- freek53.xyz - Light Vehicle Controls Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control helps the driver when engaging or disangaging a gear?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '10', false),
  ((select id from q), 'b', '8', true),
  ((select id from q), 'c', '9', false);

-- freek53.xyz - Light Vehicle Controls Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'The... control increases the vehicle speed', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '1', false),
  ((select id from q), 'b', '9', false),
  ((select id from q), 'c', '10', true);

-- freek53.xyz - Light Vehicle Controls Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'The... warns other road users of your intention to steer to the right or left, or to turn to the right or left.', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '5', true),
  ((select id from q), 'b', '7', false),
  ((select id from q), 'c', '11', false);

-- freek53.xyz - Light Vehicle Controls Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control is used to alert other road users so to avoid accidents', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '3', false),
  ((select id from q), 'b', '11', true),
  ((select id from q), 'c', '8', false);

-- freek53.xyz - Light Vehicle Controls Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'The... is used to avoid stalling before a complete standstill', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '5', false),
  ((select id from q), 'b', '10', false),
  ((select id from q), 'c', '8', true);

-- freek53.xyz - Light Vehicle Controls Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'Which control is used to clean your vehicle''s windscreen?', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '2', true),
  ((select id from q), 'b', '3', false),
  ((select id from q), 'c', '6', false);

-- freek53.xyz - Light Vehicle Controls Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (3, 'freek53.xyz - Light Vehicle Controls', 'To turn a sharp curve on the road, you must use...', 'https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '1, 3, 5 and 7', false),
  ((select id from q), 'b', '1, 4, 6, 8, 9 and 10 only', true),
  ((select id from q), 'c', '2, 6, 8 and 9', false);

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

-- freek53.xyz - Road Sign Test 3 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What are you expected to do when you approach this sign ahead?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Look out for other vehicle and yield to vehicles already in the circle or that cross the circle before you. Stop if necessary.', true),
  ((select id from q), 'b', 'Drive around the circle without stopping', false),
  ((select id from q), 'c', 'Minimise your speed and proceed', false);

-- freek53.xyz - Road Sign Test 3 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign forbids?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Left turn', false),
  ((select id from q), 'b', 'U-turn', true),
  ((select id from q), 'c', 'Right turn', false);

-- freek53.xyz - Road Sign Test 3 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What do you do upon approaching this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'When wanting yo exit the freeway follow the sign direction', false),
  ((select id from q), 'b', 'Follow the traffic signs when you want to join the more important route.', true),
  ((select id from q), 'c', 'Follow the sign direction if you want to enter the freeway.', false);

-- freek53.xyz - Road Sign Test 3 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign tells you to be on the lookout for...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Traffic control ahead', false),
  ((select id from q), 'b', 'Pedestrians ahead', false),
  ((select id from q), 'c', 'Children wanting or might be crossing the road', true);

-- freek53.xyz - Road Sign Test 3 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Indicates an exit about 100m ahead', false),
  ((select id from q), 'b', 'Indicates an exit about 200m ahead', false),
  ((select id from q), 'c', 'Indicates an exit about 300m ahead', true);

-- freek53.xyz - Road Sign Test 3 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Warns that the single carriageway is ending ahead', true),
  ((select id from q), 'b', 'End of dual roadway', false),
  ((select id from q), 'c', 'Sharp junction ahead', false);

-- freek53.xyz - Road Sign Test 3 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign informs drivers that...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The road to the right ends', true),
  ((select id from q), 'b', 'The road ahead ends', false),
  ((select id from q), 'c', 'The road to the left ends', false);

-- freek53.xyz - Road Sign Test 3 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Taxis only', false),
  ((select id from q), 'b', 'Minibuses only', true),
  ((select id from q), 'c', 'Midi buses only', false);

-- freek53.xyz - Road Sign Test 3 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only buses and taxis may go past this sign', false),
  ((select id from q), 'b', 'No entry beyond this sign', true),
  ((select id from q), 'c', 'Only pedestrians are allowed to go past this sign', false);

-- freek53.xyz - Road Sign Test 3 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'How should a driver react to this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Do not stop your vehicle.', true),
  ((select id from q), 'b', 'No shopping malls in that area.', false),
  ((select id from q), 'c', 'Do not allow your passenger to sleep while you are driving.', false);

-- freek53.xyz - Road Sign Test 3 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign informs you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Points out the direction of a transport terminus from a route.', true),
  ((select id from q), 'b', 'A bus terminus', false),
  ((select id from q), 'c', 'That you are leaving the ship terminus', false);

-- freek53.xyz - Road Sign Test 3 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Near a beach area.', false),
  ((select id from q), 'b', 'Near a clinic', false),
  ((select id from q), 'c', 'In roads where there are more pedestrians than normally can be expected.', true);

-- freek53.xyz - Road Sign Test 3 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Informs you that you do not have the right of way at the intersection ahead.', false),
  ((select id from q), 'b', 'Informs you that you have the right of way at the intersection ahead', true),
  ((select id from q), 'c', 'Informs you of a right of way ahead', false);

-- freek53.xyz - Road Sign Test 3 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This road marking informs you that...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'This area is reserved for cyclists only or disable person''s vehicle only or a road that leads to an airport', true),
  ((select id from q), 'b', 'No disabled person''s vehicle allowed here', false),
  ((select id from q), 'c', 'There may be low-flying aircraft ahead.', false);

-- freek53.xyz - Road Sign Test 3 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'The sign warns drivers that...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The road ends 5 km ahead', false),
  ((select id from q), 'b', 'There are police officers ahead', false),
  ((select id from q), 'c', 'There''s a one way road ahead going left', true);

-- freek53.xyz - Road Sign Test 3 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign tell road users', 'https://www.freek53.xyz/K53_Sign_Test/img/3-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Elderely people are not allowed there', false),
  ((select id from q), 'b', 'Pedestriands are not allowed there.', true),
  ((select id from q), 'c', 'Joggers are not allowed there.', false);

-- freek53.xyz - Road Sign Test 3 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign informs you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Indicates early that there is an exit from the freeway on a certain destinations ahead.', true),
  ((select id from q), 'b', 'Turn left to enter the freeway', false),
  ((select id from q), 'c', 'Indicates early that there is an entrance to the freeway on a certain destinations ahead.', false);

-- freek53.xyz - Road Sign Test 3 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Motor gate', false),
  ((select id from q), 'b', 'Motorcycle riders ahead', false),
  ((select id from q), 'c', 'Pedal cyclists ahead', true);

-- freek53.xyz - Road Sign Test 3 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign informs you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Informs you of an SOS', false),
  ((select id from q), 'b', 'Informs you of an information office or notice board.', true),
  ((select id from q), 'c', 'Informs you of an Emergency', false);

-- freek53.xyz - Road Sign Test 3 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this road marking tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Slow down there is a school or stop sign ahead', true),
  ((select id from q), 'b', 'There is parking available in the nearby school', false),
  ((select id from q), 'c', 'Only school children are allowed in this area.', false);

-- freek53.xyz - Road Sign Test 3 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign informs you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Informs you of the existance of a park terminus that has a bus.', false),
  ((select id from q), 'b', 'Informs you that there is a transport modal transfer point or terminus nearby', true),
  ((select id from q), 'c', 'Informs you of the existance of a ride terminus that has a taxi.', false);

-- freek53.xyz - Road Sign Test 3 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There may be wild animals on the road or crossing the road', true),
  ((select id from q), 'b', 'There may be free ranging animals such as cattles on the road', false),
  ((select id from q), 'c', 'cattle farm ahead', false);

-- freek53.xyz - Road Sign Test 3 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'This sign gives warning to drivers...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'To keep an eye for joggers in the area.', false),
  ((select id from q), 'b', 'That only pedestrians are allowed past this sign.', false),
  ((select id from q), 'c', 'To give right of way to pedestrians.', true);

-- freek53.xyz - Road Sign Test 3 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only tricycles may ride there', false),
  ((select id from q), 'b', 'Pedal cycles are prohibited', true),
  ((select id from q), 'c', 'Cyclists may ride there.', false);

-- freek53.xyz - Road Sign Test 3 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign tell drivers?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Indicate exactly where the exit will be.', true),
  ((select id from q), 'b', 'Indicate exactly where the entrance will be to this route', false),
  ((select id from q), 'c', 'Route exit ahead', false);

-- freek53.xyz - Road Sign Test 3 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At any road', false),
  ((select id from q), 'b', 'On rural roads', false),
  ((select id from q), 'c', 'At a railway crossing or roadway ahead', true);

-- freek53.xyz - Road Sign Test 3 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What is the meaning of this road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Proceed straight only', false),
  ((select id from q), 'b', 'No overtaking', true),
  ((select id from q), 'c', 'Railway line ahead.', false);

-- freek53.xyz - Road Sign Test 3 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this road marking tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Look out for other vehicles and yield to vehicles already in the carriageway.', true),
  ((select id from q), 'b', 'Travel at 60 km/h or faster', false),
  ((select id from q), 'c', 'One way road', false);

-- freek53.xyz - Road Sign Test 3 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'What does this sign on public roads tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No horse riders allowed', false),
  ((select id from q), 'b', 'No farm animals allowed', false),
  ((select id from q), 'c', 'No animal-drawn vehicles allowed.', true);

-- freek53.xyz - Road Sign Test 3 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 3', 'Where can you find this sign on the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On the continuing freeway', false),
  ((select id from q), 'b', 'Between the right hand side of an off-ramp and the continuing freeway', true),
  ((select id from q), 'c', 'On any road', false);

-- freek53.xyz - Road Sign Test 4 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This symbol used on direction signs, indicates...', 'https://www.freek53.xyz/K53_Sign_Test/img/4-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'An alternative route.', true),
  ((select id from q), 'b', 'An airport', false),
  ((select id from q), 'c', 'A lane for ambulances and emergency vehicles.', false);

-- freek53.xyz - Road Sign Test 4 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This symbol, used on tourism signs, indicates', 'https://www.freek53.xyz/K53_Sign_Test/img/4-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A camp site', false),
  ((select id from q), 'b', 'A service station', true),
  ((select id from q), 'c', 'A road side stall', false);

-- freek53.xyz - Road Sign Test 4 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Which sign warns of slow moving heavy motor vehicles ahead, usually found in mountainous areas?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Both of the above are correct', false),
  ((select id from q), 'b', 'B', true),
  ((select id from q), 'c', 'A', false);

-- freek53.xyz - Road Sign Test 4 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Which sign indicates a dead-end or road closure?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Both of the above are correct.', false),
  ((select id from q), 'b', 'A', false),
  ((select id from q), 'c', 'B', true);

-- freek53.xyz - Road Sign Test 4 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This type of sign is called...', 'https://www.freek53.xyz/K53_Sign_Test/img/4-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'An alternative route marker', false),
  ((select id from q), 'b', 'A map-type trailblazer', false),
  ((select id from q), 'c', 'An advance trailblazer.', true);

-- freek53.xyz - Road Sign Test 4 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Where could you find this road sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On any ordinary road with more than one traffic lane', true),
  ((select id from q), 'b', 'On any freeway with more than one traffic lane.', false),
  ((select id from q), 'c', 'On the left hand side of a freeway and as close as possible to the off-ramp.', false);

-- freek53.xyz - Road Sign Test 4 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this sign indicate?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The exit sequence and distances in km to such exits.', true),
  ((select id from q), 'b', 'The distances in km to the next town or suburb.', false),
  ((select id from q), 'c', 'The fees payable at each toll plaza on this route.', false);

-- freek53.xyz - Road Sign Test 4 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Where will this sign be positioned?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Usually on the left-hand side of an ordinary road, a couple of meters before the on-ramp to a freeway', false),
  ((select id from q), 'b', 'Usually on the left-hand side of an ordinary road, opposite an on-ramp to a freeway', true),
  ((select id from q), 'c', 'Usually on the left-hand side of a freeway, just before an off-ramp', false);

-- freek53.xyz - Road Sign Test 4 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What is the name of this road sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No-entry', false),
  ((select id from q), 'b', 'Cul-de-sec', true),
  ((select id from q), 'c', 'Dead-end', false);

-- freek53.xyz - Road Sign Test 4 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This road marking has the same meaning as a stop road sign.', 'https://www.freek53.xyz/K53_Sign_Test/img/4-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'True.', true),
  ((select id from q), 'b', 'False.', false),
  ((select id from q), 'c', 'Neither.', false);

-- freek53.xyz - Road Sign Test 4 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What is found on the left-hand side of the yelllow road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The shoulder of the road.', true),
  ((select id from q), 'b', 'Reserved parking bays, which would be indicated by additional road marking', false),
  ((select id from q), 'c', 'A reserved lane, which would be indicated by an accompaning road sign', false);

-- freek53.xyz - Road Sign Test 4 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What should you do when you approach an intersection and the traffic light changes to a steady amber (orange) colour?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Flash your lights at oncoming traffic and drive through the intersection.', false),
  ((select id from q), 'b', 'Speed up to drive through the intersection', false),
  ((select id from q), 'c', 'Stop, except when it cannot be done safely.', true);

-- freek53.xyz - Road Sign Test 4 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This sign shows that buses, midibuses and minibuses...', 'https://www.freek53.xyz/K53_Sign_Test/img/4-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Must stop.', false),
  ((select id from q), 'b', 'Must drive here', true),
  ((select id from q), 'c', 'May not drive here', false);

-- freek53.xyz - Road Sign Test 4 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This sign prohibits... from using a road or part of a road indicated by such sign', 'https://www.freek53.xyz/K53_Sign_Test/img/4-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Vehicles with an axle mass exceeding 2 tons', true),
  ((select id from q), 'b', 'Articulated vehicles pulling 2 trailers', false),
  ((select id from q), 'c', 'Vehicles carrying a load that weighs more than 2 tons.', false);

-- freek53.xyz - Road Sign Test 4 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What action must you take when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You may not turn left at the next intersection.', false),
  ((select id from q), 'b', 'You must only turn right.', false),
  ((select id from q), 'c', 'You may proceed either straight or turn right.', true);

-- freek53.xyz - Road Sign Test 4 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Unless otherwise indicated by a supplementary sign, you may not park here during any time of the day or night', true),
  ((select id from q), 'b', 'No private vehicles allowed to drive beyond this sign.', false),
  ((select id from q), 'c', 'No pedestrians allowed beyond this sign.', false);

-- freek53.xyz - Road Sign Test 4 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'This sign indicates an area reserved for the exclusive use by...', 'https://www.freek53.xyz/K53_Sign_Test/img/4-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Authorised vehicles - diplomatic corps.', true),
  ((select id from q), 'b', 'Goods vehicles - collections and deliveries', false),
  ((select id from q), 'c', 'Company drivers - indicated on the logo.', false);

-- freek53.xyz - Road Sign Test 4 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'How should you respond when you encounter a woonerf sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Do not drive faster than 30 km/h and yield right of way to all pedestrians', false),
  ((select id from q), 'b', 'Don''t drive through the area without stopping to break your journey', false),
  ((select id from q), 'c', 'All of the above are correct', true);

-- freek53.xyz - Road Sign Test 4 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What action should you take when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Do not enter this area or use this road if you are driving an agricultural vehicle.', false),
  ((select id from q), 'b', 'Do not enter this area or use this road if you are driving a construction vehicle.', true),
  ((select id from q), 'c', 'Do not enter this area if you are driving an abnormal vehicle.', false);

-- freek53.xyz - Road Sign Test 4 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What will be prohibited on a road beyond this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the below', true),
  ((select id from q), 'b', 'Any person riding a horse', false),
  ((select id from q), 'c', 'Any person riding a donkey.', false);

-- freek53.xyz - Road Sign Test 4 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What is the purpose of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'To prohibit pedal cycles from using the area.', false),
  ((select id from q), 'b', 'To indicate a parking area reserved for bicycles', true),
  ((select id from q), 'c', 'To indicate a lane reserved for pedal cycles.', false);

-- freek53.xyz - Road Sign Test 4 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A bus stop reservation where buses from a specific organization or company may stop to drop off and pick up passengers.', true),
  ((select id from q), 'b', 'It indicates which lane a bus from a specific organisation or company must use.', false),
  ((select id from q), 'c', 'A driver from another company or organization may use the stop at any time other than that indicated on the road sign', false);

-- freek53.xyz - Road Sign Test 4 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this road sign indicate?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'An overhead structure on the road ahead.', false),
  ((select id from q), 'b', 'A railway line that crosses the road ahead.', false),
  ((select id from q), 'c', 'The start of a dual-carriageway freeway', true);

-- freek53.xyz - Road Sign Test 4 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Where would you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At a one-way road', false),
  ((select id from q), 'b', 'Below a regulatory sign', true),
  ((select id from q), 'c', 'At an off-ramp from a freeway', false);

-- freek53.xyz - Road Sign Test 4 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Where would you find this road sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On a road before the place where another road joins your road from the left.', true),
  ((select id from q), 'b', 'At the beginning of any road or part of a road', false),
  ((select id from q), 'c', 'On a road before the place where your road splits in two.', false);

-- freek53.xyz - Road Sign Test 4 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'How should you respond when you see this sharp junction warning sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Pass the intersection at a safe speed and lookout for incoming traffic that might not yield', false),
  ((select id from q), 'b', 'You will be able to overtake more safely after entering the one-way road of the dual roadway.', false),
  ((select id from q), 'c', 'Decide well in time which road to take and be on the lookout for approaching traffic whose path you will cross when taking the right hand side road.', true);

-- freek53.xyz - Road Sign Test 4 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What is the purpose of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'It indicates a one-way road to the right', false),
  ((select id from q), 'b', 'It warns you that the road curves suddenly to the right where the sign is displayed.', true),
  ((select id from q), 'c', 'It indicates an obstruction on the left-hand side of the roadway.', false);

-- freek53.xyz - Road Sign Test 4 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'It warns that the road winds for the next 8 km and the maximum speed is 60 km/h.', true),
  ((select id from q), 'b', 'It warns that there are sharp curves in the road 8 km from there and the speed limit is 60 km/h', false),
  ((select id from q), 'c', 'It warns that the road winds for 8 km and the recommended speed to drive is 60 km/h', false);

-- freek53.xyz - Road Sign Test 4 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'What does this tourism sign indicate?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A municipal swimming pool', false),
  ((select id from q), 'b', 'An inland water resort', false),
  ((select id from q), 'c', 'A seaside or beach resort.', true);

-- freek53.xyz - Road Sign Test 4 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 4', 'Where would you find this type of road sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/4-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On the left-hand side of a freeway about 2 km after entering the freeway and every 20 km there after.', true),
  ((select id from q), 'b', 'On the far right hand side of any road before an intersection leading to a freeway', false),
  ((select id from q), 'c', 'On the left hand side of the road about 750m after entering a freeway and after that every 5 to 10 km', false);

-- freek53.xyz - Road Sign Test 5 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign warns you that you are coming up to', 'https://www.freek53.xyz/K53_Sign_Test/img/5-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A staggered junction', true),
  ((select id from q), 'b', 'Cross traffic ahead', false),
  ((select id from q), 'c', 'A sharp junction from left and right.', false);

-- freek53.xyz - Road Sign Test 5 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign warns you that there is', 'https://www.freek53.xyz/K53_Sign_Test/img/5-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A gravel road starting ahead', false),
  ((select id from q), 'b', 'An uneven roadway ahead', true),
  ((select id from q), 'c', 'Rough sea washing across the road', false);

-- freek53.xyz - Road Sign Test 5 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign prohibits you from', 'https://www.freek53.xyz/K53_Sign_Test/img/5-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Stopping unless you are 7m to 9m from the sign', false),
  ((select id from q), 'b', 'Stopping where you see this sign during these two time period', true),
  ((select id from q), 'c', 'Stopping where you see this sign', false);

-- freek53.xyz - Road Sign Test 5 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign warns you that', 'https://www.freek53.xyz/K53_Sign_Test/img/5-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You are approaching a two-way stop.', false),
  ((select id from q), 'b', 'There is a chevron ahead', false),
  ((select id from q), 'c', 'You are approaching a T-junction', true);

-- freek53.xyz - Road Sign Test 5 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign prohibits you from driving', 'https://www.freek53.xyz/K53_Sign_Test/img/5-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'More than 100 times at night', false),
  ((select id from q), 'b', 'At less than 100 km/h at night', false),
  ((select id from q), 'c', 'At more than 100 km/h at night.', true);

-- freek53.xyz - Road Sign Test 5 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign tells you that', 'https://www.freek53.xyz/K53_Sign_Test/img/5-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You are coming to a secondary crossroad and you must expect to stop or yield', true),
  ((select id from q), 'b', 'There are crossroads ahead.', false),
  ((select id from q), 'c', 'There is a primary crossroad ahead.', false);

-- freek53.xyz - Road Sign Test 5 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'When you see this sign you must', 'https://www.freek53.xyz/K53_Sign_Test/img/5-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Drive at 50 km/h or more.', true),
  ((select id from q), 'b', 'Drive slower than 50 km/h.', false),
  ((select id from q), 'c', 'Drive for 50 kilometers.', false);

-- freek53.xyz - Road Sign Test 5 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign indicates that', 'https://www.freek53.xyz/K53_Sign_Test/img/5-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Drivers must be aware of cyclists.', false),
  ((select id from q), 'b', 'Only pedal cycles may ride here', true),
  ((select id from q), 'c', 'Only motorcycles may drive here', false);

-- freek53.xyz - Road Sign Test 5 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'When you see this sign ahead of you, you must', 'https://www.freek53.xyz/K53_Sign_Test/img/5-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Get out of the vehicle and direct the traffic', false),
  ((select id from q), 'b', 'Be on the lookout for stop-and-go traffic controllers', true),
  ((select id from q), 'c', 'Try to get past as quickly as possible', false);

-- freek53.xyz - Road Sign Test 5 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign tells you to', 'https://www.freek53.xyz/K53_Sign_Test/img/5-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Turn left if you want to', false),
  ((select id from q), 'b', 'Look out for vehicles turning left', false),
  ((select id from q), 'c', 'Proceed left only', true);

-- freek53.xyz - Road Sign Test 5 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This area is reversed for', 'https://www.freek53.xyz/K53_Sign_Test/img/5-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'None of the below.', true),
  ((select id from q), 'b', 'Delivery vehicles', false),
  ((select id from q), 'c', 'Goods vehicles', false);

-- freek53.xyz - Road Sign Test 5 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign indicates', 'https://www.freek53.xyz/K53_Sign_Test/img/5-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The minimum speed limit', false),
  ((select id from q), 'b', 'The distance to the next town.', false),
  ((select id from q), 'c', 'The maximum speed limit.', true);

-- freek53.xyz - Road Sign Test 5 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign allows', 'https://www.freek53.xyz/K53_Sign_Test/img/5-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Pedestrians only in the area', false),
  ((select id from q), 'b', 'Authorised vehicles only', true),
  ((select id from q), 'c', 'No double parking', false);

-- freek53.xyz - Road Sign Test 5 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign forbids you to', 'https://www.freek53.xyz/K53_Sign_Test/img/5-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Turn to the right', true),
  ((select id from q), 'b', 'Overtake on the right', false),
  ((select id from q), 'c', 'Make a U-turn to the right.', false);

-- freek53.xyz - Road Sign Test 5 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign prohibits stopping for', 'https://www.freek53.xyz/K53_Sign_Test/img/5-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Light motor vehicles.', false),
  ((select id from q), 'b', 'Trucks.', false),
  ((select id from q), 'c', 'All of the above.', true);

-- freek53.xyz - Road Sign Test 5 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This area is reserved for', 'https://www.freek53.xyz/K53_Sign_Test/img/5-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Taxis', true),
  ((select id from q), 'b', 'Motor vehicles.', false),
  ((select id from q), 'c', 'Mini-buses.', false);

-- freek53.xyz - Road Sign Test 5 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This sign means that', 'https://www.freek53.xyz/K53_Sign_Test/img/5-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No animal-drawn vehicles are allowed.', true),
  ((select id from q), 'b', 'No rickshaws are allowed', false),
  ((select id from q), 'c', 'No agricultural vehicles are allowed.', false);

-- freek53.xyz - Road Sign Test 5 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This zigzag zone approach to a pedestrian crossing tells you', 'https://www.freek53.xyz/K53_Sign_Test/img/5-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At this type of pedestrian crossing you do not have to stop', false),
  ((select id from q), 'b', 'You only have to stop if there is more than one person waiting', false),
  ((select id from q), 'c', 'You may not stop or park within these area and pedestrians have complete right of way', true);

-- freek53.xyz - Road Sign Test 5 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'These road markings show you that', 'https://www.freek53.xyz/K53_Sign_Test/img/5-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You must keep as far left as possible.', false),
  ((select id from q), 'b', 'There are no overtaking or no crossing lines ahead.', true),
  ((select id from q), 'c', 'There is a gentle curve ahead.', false);

-- freek53.xyz - Road Sign Test 5 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'Does the far right arrow', 'https://www.freek53.xyz/K53_Sign_Test/img/5-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Control the minimum speed limit in this lane', true),
  ((select id from q), 'b', 'Restrict the maximum speed limit in this lane', false),
  ((select id from q), 'c', 'Control the number of vehicles in this lane at any given time.', false);

-- freek53.xyz - Road Sign Test 5 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This road sign means that...', 'https://www.freek53.xyz/K53_Sign_Test/img/5-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Delivery vehicles are not allowed to drive in the right hand lane.', false),
  ((select id from q), 'b', 'Heavy motor vehicles are not allowed to drive in the right hand lane', true),
  ((select id from q), 'c', 'Slow moving vehicles are not allowed to drive in the right hand lane.', false);

-- freek53.xyz - Road Sign Test 5 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'Where would you find this road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On one-way roads such as dual-carriageways or freeways to indicate the edge line.', true),
  ((select id from q), 'b', 'On any road with two-way traffic.', false),
  ((select id from q), 'c', 'On any road in an intersection', false);

-- freek53.xyz - Road Sign Test 5 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'How should you respond to a traffic light that displays a steady red arrow?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Proceed with caution as for a yield sign.', false),
  ((select id from q), 'b', 'Stop behind the line and if turning right, proceed but give right of way to other vehicles and pedestrians crossing your path.', false),
  ((select id from q), 'c', 'Stop as for a steady red light and only move off when the green light is displayed.', true);

-- freek53.xyz - Road Sign Test 5 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'Where could you expect to find this traffic signals?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At railway crossing', false),
  ((select id from q), 'b', 'At public transportation lanes', false),
  ((select id from q), 'c', 'All of the above are correct', true);

-- freek53.xyz - Road Sign Test 5 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'What does this flag signal mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Potential hazard ahead. Proceed slowly and be alert.', true),
  ((select id from q), 'b', 'Slow down and stop before reaching the flagman', false),
  ((select id from q), 'c', 'Vehicles turning to the right may proceed.', false);

-- freek53.xyz - Road Sign Test 5 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'How should you respond to the road marking in the middle?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Slow down and be ready to leave the freeway in 300m if you want to use the next exit.', false),
  ((select id from q), 'b', 'Avoid driving to the left of the yellow lines.', false),
  ((select id from q), 'c', 'Drive in such a way that you do not stop, park or drive over the painted island.', true);

-- freek53.xyz - Road Sign Test 5 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'Where would you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At the beginning of any road or part of the road.', false),
  ((select id from q), 'b', 'In areas where there are mining and industrial activities taking place.', true),
  ((select id from q), 'c', 'On any road especially in mountainous areas.', false);

-- freek53.xyz - Road Sign Test 5 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'This part of the road must be used by... only', 'https://www.freek53.xyz/K53_Sign_Test/img/5-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Animal drawn vehicles', true),
  ((select id from q), 'b', 'Horses and riders', false),
  ((select id from q), 'c', 'Rickshaws', false);

-- freek53.xyz - Road Sign Test 5 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'Where could you expect to find this sign and how should you respond?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On roads with high accident collision zones. Switch on your vehicle''s headlights on the main beam', false),
  ((select id from q), 'b', 'On roads that carry large amounts of traffic at night. Switch on your vehicle''s headlights on the main beam', false),
  ((select id from q), 'c', 'In mountainous areas before a tunnel. Switch on your vehicle''s headlights in the dipped position.', true);

-- freek53.xyz - Road Sign Test 5 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 5', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/5-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'It shows a parking area reserved for ambulances or emergency vehicles.', true),
  ((select id from q), 'b', 'It shows a parking area reserved for minibuses from a specific organisation or company', false),
  ((select id from q), 'c', 'It shows a parking area reserved for airport transfers', false);

-- freek53.xyz - Road Sign Test 6 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you come across this sign at intersections or railway crossing?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Bring your vehicle to a stop behind the stop line.', true),
  ((select id from q), 'b', 'Slow down and drive on when it is safe to do so.', false),
  ((select id from q), 'c', 'Lookout for pedestrians and move on.', false);

-- freek53.xyz - Road Sign Test 6 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What must a vehicle driver do when seeing this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Drive for 50 minutes then stop.', false),
  ((select id from q), 'b', 'Not drive slower than 50 km/h', true),
  ((select id from q), 'c', 'Be on the lookout for police officers for the next 50 km.', false);

-- freek53.xyz - Road Sign Test 6 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Traffic turning left may continue without stopping, as long as it is safe to do so.', false),
  ((select id from q), 'b', 'Traffic going straight must stop before the stop line', false),
  ((select id from q), 'c', 'Both the above are correct', true);

-- freek53.xyz - Road Sign Test 6 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign tell drivers?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Vehicles carrying dangerous substances only.', false),
  ((select id from q), 'b', 'Delivery vehicles only', false),
  ((select id from q), 'c', 'Only vehicles with exceeding mass may use this part of the road.', true);

-- freek53.xyz - Road Sign Test 6 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What must a vehicle driver do when approaching this sign at an intersection?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No stopping for the next 4 km', false),
  ((select id from q), 'b', 'Keep driving for the next 4 km', false),
  ((select id from q), 'c', 'Stop your vehicle behind the stop line.', true);

-- freek53.xyz - Road Sign Test 6 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'This sign tell drivers to', 'https://www.freek53.xyz/K53_Sign_Test/img/6-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Keep right.', true),
  ((select id from q), 'b', 'Drive at a low speed.', false),
  ((select id from q), 'c', 'Only taxis may drive there.', false);

-- freek53.xyz - Road Sign Test 6 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you see this sign ahead?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Stop if the STOP sign is displayed. Proceed with caution if the GO sign is displayed', true),
  ((select id from q), 'b', 'Give way to road works.', false),
  ((select id from q), 'c', 'Move as slowly as you can.', false);

-- freek53.xyz - Road Sign Test 6 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do upon approaching this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Do not drive there.', false),
  ((select id from q), 'b', 'Proceed straight only', true),
  ((select id from q), 'c', 'Stop your vehicle and travel by foot', false);

-- freek53.xyz - Road Sign Test 6 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'At an intersection when you see this sign you must...', 'https://www.freek53.xyz/K53_Sign_Test/img/6-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Proceed without stopping', false),
  ((select id from q), 'b', 'Yield to other traffic', true),
  ((select id from q), 'c', 'Look out for pedestrians', false);

-- freek53.xyz - Road Sign Test 6 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What must you do when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Turn left if you want to', false),
  ((select id from q), 'b', 'Look out for vehicles turning left', false),
  ((select id from q), 'c', 'Proceed left only', true);

-- freek53.xyz - Road Sign Test 6 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'How must you react when you approach this sign at an intersection?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Give right of way to pedestrians crossing the road or wanting to cross the road.', true),
  ((select id from q), 'b', 'Park your vehicle and travel by foot', false),
  ((select id from q), 'c', 'Travel at a high speed and pass as quickly as possible', false);

-- freek53.xyz - Road Sign Test 6 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign say to the road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only taxi passengers may use that part of the road.', false),
  ((select id from q), 'b', 'This part of the road is for joggers only.', false),
  ((select id from q), 'c', 'This part of the road is for pedestrians only.', true);

-- freek53.xyz - Road Sign Test 6 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign mean?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The wheeled vehicles may use this part of the road', false),
  ((select id from q), 'b', 'Only cyclists are allowed to use this part of the road', true),
  ((select id from q), 'c', 'Cyclists are not allowed here', false);

-- freek53.xyz - Road Sign Test 6 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign tell vehicle drivers', 'https://www.freek53.xyz/K53_Sign_Test/img/6-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A freeway begins and all freeway rules are effective now.', true),
  ((select id from q), 'b', 'The road widens ahead', false),
  ((select id from q), 'c', 'There is a bridge ahead.', false);

-- freek53.xyz - Road Sign Test 6 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'This sign means this part of the road is for...', 'https://www.freek53.xyz/K53_Sign_Test/img/6-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Elderly people on bicycles.', false),
  ((select id from q), 'b', 'Bikers only.', false),
  ((select id from q), 'c', 'Cyclists and pedestrians only.', true);

-- freek53.xyz - Road Sign Test 6 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A single-carriageway freeway begins', true),
  ((select id from q), 'b', 'The road narrows ahead.', false),
  ((select id from q), 'c', 'There is a bridge 5 km away.', false);

-- freek53.xyz - Road Sign Test 6 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'Only... are allowed on this part of the road.', 'https://www.freek53.xyz/K53_Sign_Test/img/6-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Goods vehicles.', true),
  ((select id from q), 'b', 'Midi buses', false),
  ((select id from q), 'c', 'Emergency vehicles.', false);

-- freek53.xyz - Road Sign Test 6 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you see this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Stop and leave your vehicle to control the traffic', false),
  ((select id from q), 'b', 'Drive as fast as possible to leave this area', false),
  ((select id from q), 'c', 'Slow down, give right of way to pedestrians especially children playing in the street', true);

-- freek53.xyz - Road Sign Test 6 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only buses are allowed here.', false),
  ((select id from q), 'b', 'Only delivery vehicles are allowed here.', true),
  ((select id from q), 'c', 'Only taxis are allowed here.', false);

-- freek53.xyz - Road Sign Test 6 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you see this sign on any public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Expect a traffic circle', true),
  ((select id from q), 'b', 'Drive without stopping.', false),
  ((select id from q), 'c', 'Leave your vehicle to control the traffic.', false);

-- freek53.xyz - Road Sign Test 6 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You may not turn left.', false),
  ((select id from q), 'b', 'There is a gently curve ahead to the right.', true),
  ((select id from q), 'c', 'Proceed straight only.', false);

-- freek53.xyz - Road Sign Test 6 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this road marking alerts you of?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Railway crossing ahead.', true),
  ((select id from q), 'b', 'Stop sign ahead.', false),
  ((select id from q), 'c', 'Pedestrian crossing ahead', false);

-- freek53.xyz - Road Sign Test 6 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'This sign alerts you of...', 'https://www.freek53.xyz/K53_Sign_Test/img/6-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Sharp turn ahead.', false),
  ((select id from q), 'b', 'Winding road ahead.', false),
  ((select id from q), 'c', 'Hairpin bend ahead.', true);

-- freek53.xyz - Road Sign Test 6 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you see this road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Proceed without stopping', false),
  ((select id from q), 'b', 'Lookout for pedestrians', false),
  ((select id from q), 'c', 'Yield to other traffic.', true);

-- freek53.xyz - Road Sign Test 6 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'This sign alerts drivers of...', 'https://www.freek53.xyz/K53_Sign_Test/img/6-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Two way road ahead.', true),
  ((select id from q), 'b', 'Overtaking is allowed', false),
  ((select id from q), 'c', 'Police road block ahead.', false);

-- freek53.xyz - Road Sign Test 6 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What is the meaning of this road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No overtaking allowed here.', false),
  ((select id from q), 'b', 'You may drive only on the left side of the road.', false),
  ((select id from q), 'c', 'Giving warning that traffic lanes are reduced from the right, left or both sides.', true);

-- freek53.xyz - Road Sign Test 6 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What do you do when you see this sign on any public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Drive for 100 m then stop.', false),
  ((select id from q), 'b', 'Do not drive faster than 100 km/h.', true),
  ((select id from q), 'c', 'Expect to see traffic officers within the next 100 m', false);

-- freek53.xyz - Road Sign Test 6 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'On a public road, what must you do when you see this sign', 'https://www.freek53.xyz/K53_Sign_Test/img/6-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Do not overtake other vehicles.', true),
  ((select id from q), 'b', 'Road block ahead stop if necessary.', false),
  ((select id from q), 'c', 'Do not drive on the shoulder of that road.', false);

-- freek53.xyz - Road Sign Test 6 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'What does this sign tell vehicle drivers?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Speed limit is 120 km/h', false),
  ((select id from q), 'b', 'They may only drive for 12 km then stop', false),
  ((select id from q), 'c', 'Vehicles of more than 12 ton may not drive there.', true);

-- freek53.xyz - Road Sign Test 6 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 6', 'This road marking alerts you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/6-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Speed humps ahead, slow down.', true),
  ((select id from q), 'b', 'Pedestrians crossing ahead', false),
  ((select id from q), 'c', 'Railway crossing ahead.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What do you do when you see this sign on a public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-1.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'do not park your vehicle in that area', true),
  ((select id from q), 'b', 'drive slow for the next 100m', false),
  ((select id from q), 'c', 'Park your vehicle at the nearest park.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign tells road users that there''s a...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-2.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Hospital ahead', false),
  ((select id from q), 'b', 'crossroad ahead', true),
  ((select id from q), 'c', 'sharp curve ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What do you do when you see this sign on a public road?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-3.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'use your hooter at other road users', false),
  ((select id from q), 'b', 'make sure the noise level of your vehicle is very low', true),
  ((select id from q), 'c', 'play loud music from your stereo', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign alerts you of...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-4.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'town ahead', false),
  ((select id from q), 'b', 'right turn ahead', false),
  ((select id from q), 'c', 't-juction ahead', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'How must vehicle drivers react to this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-5.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'drive for 6 hours without stopping', false),
  ((select id from q), 'b', 'use hand signals for other road users', false),
  ((select id from q), 'c', 'no hitch-hiking', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-6.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'dual roadway ends', true),
  ((select id from q), 'b', 'dual roadway begins', false),
  ((select id from q), 'c', 'road widens ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-7.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'no unauthorised vehicles', true),
  ((select id from q), 'b', 'only trucks may drive here', false),
  ((select id from q), 'c', 'this road may be used by police vehicle only', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign warns of...', 'https://www.freek53.xyz/K53_Sign_Test/img/1-8.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'school ahead', false),
  ((select id from q), 'b', 'traffic signals ahead', true),
  ((select id from q), 'c', 'pedestrian crossing ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign restrict you from?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-9.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'using hand signal', false),
  ((select id from q), 'b', 'turning left ahead', true),
  ((select id from q), 'c', 'driving on the left side of the road', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/1-10.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'there is a yield sign ahead', true),
  ((select id from q), 'b', 'there is a traffic circle ahead', false),
  ((select id from q), 'c', 'there is a stop sign ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign tells road users that...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-11.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There is a jetty edge or river bank ahead', true),
  ((select id from q), 'b', 'Parking available for surfers', false),
  ((select id from q), 'c', 'Motorcars not allowed on this road.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign warn you about?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-12.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Traffic could merge ahead', false),
  ((select id from q), 'b', 'Traffic could merge from the right at sharp angles', false),
  ((select id from q), 'c', 'Traffic could merge from the left at sharp angles', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-13.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'hazard ahead', false),
  ((select id from q), 'b', 'A yield sign ahead', true),
  ((select id from q), 'c', 'speed humps ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign warns you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-14.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'y-junction ahead', true),
  ((select id from q), 'b', 't-junction ahead', false),
  ((select id from q), 'c', 'side road junction ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-15.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'near a police station', false),
  ((select id from q), 'b', 'near a shopping centre.', false),
  ((select id from q), 'c', 'Located in any road but especially in rural areas near schools', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign tell road users', 'https://www.freek53.xyz/K53_Sign_Test/img/2-16.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'only mini buses may drive there', false),
  ((select id from q), 'b', 'only taxis may drive there.', true),
  ((select id from q), 'c', 'only motor cars may drive there.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign alerts you that...', 'https://www.freek53.xyz/K53_Sign_Test/img/2-17.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A scholar patrol operating ahead', true),
  ((select id from q), 'b', 'The road is under construction.', false),
  ((select id from q), 'c', 'There is a stop and go ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign tells you that only... may use that part of the road', 'https://www.freek53.xyz/K53_Sign_Test/img/2-18.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Delivery vehicles', false),
  ((select id from q), 'b', 'Abnormal vehicles', false),
  ((select id from q), 'c', 'Mini buses', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-19.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'cattle farm ahead', false),
  ((select id from q), 'b', 'The may be free ranging animals such as cattles on the road.', true),
  ((select id from q), 'c', 'wild animals ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'Which vehicle type is allowed on this part of the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/2-20.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only buses may drive there', true),
  ((select id from q), 'b', 'Only mini buses may drive there', false),
  ((select id from q), 'c', 'Only tour buses may drive there.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign informs you of what?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-21.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Informs you of the existance of a park terminus that has a bus.', false),
  ((select id from q), 'b', 'Informs you that there is a transport modal transfer point or terminus nearby', true),
  ((select id from q), 'c', 'Informs you of the existance of a ride terminus that has a taxi.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There may be wild animals on the road or crossing the road', true),
  ((select id from q), 'b', 'There may be free ranging animals such as cattles on the road', false),
  ((select id from q), 'c', 'cattle farm ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'This sign gives warning to drivers...', 'https://www.freek53.xyz/K53_Sign_Test/img/3-23.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'To keep an eye for joggers in the area.', false),
  ((select id from q), 'b', 'That only pedestrians are allowed past this sign.', false),
  ((select id from q), 'c', 'To give right of way to pedestrians.', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What is the meaning of this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-24.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only tricycles may ride there', false),
  ((select id from q), 'b', 'Pedal cycles are prohibited', true),
  ((select id from q), 'c', 'Cyclists may ride there.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign tell drivers?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-25.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Indicate exactly where the exit will be.', true),
  ((select id from q), 'b', 'Indicate exactly where the entrance will be to this route', false),
  ((select id from q), 'c', 'Route exit ahead', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'Where can you find this sign?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-26.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'At any road', false),
  ((select id from q), 'b', 'On rural roads', false),
  ((select id from q), 'c', 'At a railway crossing or roadway ahead', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What is the meaning of this road marking?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-27.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Proceed straight only', false),
  ((select id from q), 'b', 'No overtaking', true),
  ((select id from q), 'c', 'Railway line ahead.', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this road marking tell you?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Look out for other vehicles and yield to vehicles already in the carriageway.', true),
  ((select id from q), 'b', 'Travel at 60 km/h or faster', false),
  ((select id from q), 'c', 'One way road', false);

-- freek53.xyz - Road Sign Test 7 (Revision) Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'What does this sign on public roads tell road users?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-29.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'No horse riders allowed', false),
  ((select id from q), 'b', 'No farm animals allowed', false),
  ((select id from q), 'c', 'No animal-drawn vehicles allowed.', true);

-- freek53.xyz - Road Sign Test 7 (Revision) Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 7 (Revision)', 'Where can you find this sign on the road?', 'https://www.freek53.xyz/K53_Sign_Test/img/3-30.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'On the continuing freeway', false),
  ((select id from q), 'b', 'Between the right hand side of an off-ramp and the continuing freeway', true),
  ((select id from q), 'c', 'On any road', false);

-- freek53.xyz - Road Sign Test 8 (Revision) Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 8 (Revision)', 'How should vehicle drivers react to this road marking? (i) Do not drive on this part of the road. (ii) Can park to change tyre. (iii) May stop for a break.', 'https://www.freek53.xyz/K53_Sign_Test/img/1-22.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i), (ii) and (iii)', true),
  ((select id from q), 'b', '(i) and (ii)', false),
  ((select id from q), 'c', '(i) only', false);

-- freek53.xyz - Road Sign Test 8 (Revision) Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (1, 'freek53.xyz - Road Sign Test 8 (Revision)', 'What do you do when you come across this road marking at parking bays? (i) Park your vehicle at any spot you like. (ii) Parking available only for road users identified by the symbol. (iii) For emergency you may park on the SOS sign', 'https://www.freek53.xyz/K53_Sign_Test/img/1-28.jpg')
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(ii) and (iii)', true),
  ((select id from q), 'b', '(iii) only', false),
  ((select id from q), 'c', '(i) and (iii)', false);

-- freek53.xyz - Rules of the Road Test 1 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You shall not drive a motor vehicle on a public road while the concentration of alcohol in your body is...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '0.05 grams per 100ml of blood or more', true),
  ((select id from q), 'b', '0.005 grams per 100ml of blood or more', false),
  ((select id from q), 'c', '0.0005 grams per 100ml of blood or more.', false);

-- freek53.xyz - Rules of the Road Test 1 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You shall drive your vehicle on a public road in such a manner that wilfully disregard the safety of persons or property.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'True', false),
  ((select id from q), 'b', 'False', true),
  ((select id from q), 'c', 'Neither', false);

-- freek53.xyz - Rules of the Road Test 1 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'If your vehicle is involved in an accident you must (i) Immediately stop your vehicle. (ii) Ascertain the nature and extent of any injuries. (iii) Drink a bit of alcohol to calm your nerves down.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(iii)', false),
  ((select id from q), 'b', '(i) and (ii)', true),
  ((select id from q), 'c', '(i), (ii) and (iii)', false);

-- freek53.xyz - Rules of the Road Test 1 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'Vehicles must be fitted with pneumatic tyres and has a tread of atleast... in depth.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '0.01 millimetre.', false),
  ((select id from q), 'b', '0.1 millimetre.', false),
  ((select id from q), 'c', '1 millimetre.', true);

-- freek53.xyz - Rules of the Road Test 1 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A vehicle may not be used on a public road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The fuel tank is fitted with an effective yellow cap', false),
  ((select id from q), 'b', 'The fuel tank is fitted with an effective red cap', false),
  ((select id from q), 'c', 'The fuel tank is not fitted with an effective cap.', true);

-- freek53.xyz - Rules of the Road Test 1 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A driver/rider of a vehicle on a public road should stop if. (i) Is in compliance with a direction conveyed by a traffic sign. (ii) He was signalled by a person leading or driving any bovine animal on the road. (iii) Animals are seen crossing the road and can only move on when all the animals have crossed and the road is safe to continue.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i)', false),
  ((select id from q), 'b', '(i) and (ii)', false),
  ((select id from q), 'c', '(i), (ii) and (iii)', true);

-- freek53.xyz - Rules of the Road Test 1 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A driver/rider of a vehicle shall not enter/cross a public road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'There is obstruction and moving traffic.', true),
  ((select id from q), 'b', 'The vehicle can cross the road without obstructing or endangering any traffic.', false),
  ((select id from q), 'c', 'The road is clear of moving traffic', false);

-- freek53.xyz - Rules of the Road Test 1 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You can tow another vehicle on the public road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The length of the tow-rope, chain or tow-bar between the two vehicles is less than 3.5 metres.', false),
  ((select id from q), 'b', 'The length of the tow-rope, chain or tow-bar between the two vehicles is 3.5 metres', true),
  ((select id from q), 'c', 'The length of the tow-rope, chain or tow-bar between the two vehicles  2.5 metres', false);

-- freek53.xyz - Rules of the Road Test 1 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'Which of the following vehicles are not allowed on a freeway? (i) Vehicles drawn by animals. (ii) Pedal cycle. (iii) A tractor', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i)', false),
  ((select id from q), 'b', '(i) and (ii)', false),
  ((select id from q), 'c', '(i), (ii) and (iii)', true);

-- freek53.xyz - Rules of the Road Test 1 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You shall not stop on a freeway except. (i) In compliance with a road traffic sign. (ii) Ordered by a traffic officer. (iii) Any reason beyond your control.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i), (ii) and (iii)', true),
  ((select id from q), 'b', 'i) and (ii)', false),
  ((select id from q), 'c', '(i)', false);

-- freek53.xyz - Rules of the Road Test 1 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A speed limit of... should apply in respect of every freeway.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '120 km/h', true),
  ((select id from q), 'b', '100 km/h', false),
  ((select id from q), 'c', '60 km/h', false);

-- freek53.xyz - Rules of the Road Test 1 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A vehicle is deemed abandoned if it is left for...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '5 days in an urban area', false),
  ((select id from q), 'b', '7 days  in the same place on a public road within an urban area.', true),
  ((select id from q), 'c', '1 days  in the same place on a public road', false);

-- freek53.xyz - Rules of the Road Test 1 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A cellular or mobile telephone or any other communication device should... while driving.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Not be handled with either hands or any other part of your body.', true),
  ((select id from q), 'b', 'Be handled with one hand.', false),
  ((select id from q), 'c', 'Be handled with  both hands', false);

-- freek53.xyz - Rules of the Road Test 1 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A driver of a vehicle or rider can disobey any road traffic sign or rule of the road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Ordered to do so by a traffic officer.', true),
  ((select id from q), 'b', 'She/he feels like', false),
  ((select id from q), 'c', 'When She/he is under the influence of alcohol.', false);

-- freek53.xyz - Rules of the Road Test 1 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You should not park a vehicle on the roadway of a public road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The vehicle would obscure any road traffic sign', false),
  ((select id from q), 'b', 'It will obstruct any private or public vehicular entrance.', false),
  ((select id from q), 'c', 'Both A and B', true);

-- freek53.xyz - Rules of the Road Test 1 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You should not park a vehicle on the roadway of a public road within an urban area if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You are within 5 metres of any intersection.', false),
  ((select id from q), 'b', 'Both A and C', true),
  ((select id from q), 'c', 'You will be on a traffic island or in a pedestrian mall or pedestrian lane.', false);

-- freek53.xyz - Rules of the Road Test 1 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A driver/rider of a vehicle can exceed the speed limit when overtaking/passing another vehicle', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'False', true),
  ((select id from q), 'b', 'True', false),
  ((select id from q), 'c', 'Neither', false);

-- freek53.xyz - Rules of the Road Test 1 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'The driver/rider of a vehicle shall not pass other traffic moving in the same direction on a public road when approaching...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A curve', false),
  ((select id from q), 'b', 'The summit of a rise', false),
  ((select id from q), 'c', 'Both A and B', true);

-- freek53.xyz - Rules of the Road Test 1 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A load that projects more than 150 millimetres to the side, or more than 300 millimetres to the rear must be marked by a...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Red flag or flags (30mm x 30mm) during the day and retro reflectors at night', false),
  ((select id from q), 'b', 'Red flag or flags (300mm x 300mm) during the day and retro reflectors at night', true),
  ((select id from q), 'c', 'Red flag or flags (100mm x 100mm) during the day and retro reflectors at night', false);

-- freek53.xyz - Rules of the Road Test 1 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'Goods should not be loaded on the vehicle in a way that it may...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Both B and C', true),
  ((select id from q), 'b', 'Come into contact with the surface of the road.', false),
  ((select id from q), 'c', 'Obscure the drivers/riders view of traffic to the front or on either side or rear view.', false);

-- freek53.xyz - Rules of the Road Test 1 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A speed limit of... should apply in respect of every public road other than a freeway situated outside an urban area.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '60 km/h', false),
  ((select id from q), 'b', '100 km/h', true),
  ((select id from q), 'c', '120 km/h', false);

-- freek53.xyz - Rules of the Road Test 1 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You can tow another vehicle on the public road if...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You are using a draw bar or a tow-bar travelling 30 km/h', true),
  ((select id from q), 'b', 'You are using a tow-rope or chaing and travelling 30 km/h', false),
  ((select id from q), 'c', 'Neither.', false);

-- freek53.xyz - Rules of the Road Test 1 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A vehicle is deemed abondoned if it is left for...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '20 hours in the same place on a public road.', false),
  ((select id from q), 'b', '12 hours in the same place on a public road outside an urban area', false),
  ((select id from q), 'c', '24 hours in the same place on a public road outside an urban area.', true);

-- freek53.xyz - Rules of the Road Test 1 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'You shall not drive a motor vehicle on a public road while the concentration of alcohol in your body is... in a case of a professional driver', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '0.01 grams per 100 ml of blood or more', false),
  ((select id from q), 'b', '0.02 grams per 100 ml of blood or more', true),
  ((select id from q), 'c', '0.002 grams per 100 ml of blood or more', false);

-- freek53.xyz - Rules of the Road Test 1 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'An SABS approved number plates(s) shall be affixed to a vehicle...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'In an upright position or within 30 degrees of such position.', false),
  ((select id from q), 'b', 'In such a manner that it is not easily detachable.', false),
  ((select id from q), 'c', 'All of the above', true);

-- freek53.xyz - Rules of the Road Test 1 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'A speed limit of... should apply in respect of every public road situated within an urban area.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '120 km/h', false),
  ((select id from q), 'b', '100 km/h', false),
  ((select id from q), 'c', '60 km/h', true);

-- freek53.xyz - Rules of the Road Test 1 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'Displaying an emergency warning triangle shall not apply to a vehicle being stationary on the roadway of a public road... (i) in a place where a road traffic sign authorises the loading or unloading of goods. (ii) in compliance with a road traffic sign or direction given by a traffic officer. (iii) on account of other traffic and the driver occupies the driving seat of such a vehicle. (iv) in the course of events accompanying the carrying out of a state or municipal function.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only (i) and (ii) are correct', false),
  ((select id from q), 'b', 'All of the above are correct', true),
  ((select id from q), 'c', 'None of the above are correct', false);

-- freek53.xyz - Rules of the Road Test 1 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'How many windscreen wipers must light and heavy vehicles have? When in operation it must wipe the outside of the windscreen continuously, evenly and adequately.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Atleast one windscreen wiper, to wipe the windscreen directly in front of the driver', true),
  ((select id from q), 'b', 'Two windscreen wipers, to clean the entire windscreen', false),
  ((select id from q), 'c', 'Three windscreen wipers. Two fitted to the front windscreen and one fitted to the back window of the vehicle.', false);

-- freek53.xyz - Rules of the Road Test 1 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'When must you use your emergency warning triangle?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'When you want to stop for a lunch break next to the road.', false),
  ((select id from q), 'b', 'When parked outside your friend''s house on the wrong side of the road, facing the traffic.', false),
  ((select id from q), 'c', 'When your vehicle has broken down', true);

-- freek53.xyz - Rules of the Road Test 1 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 1', 'Pedestrians must cross a roadway only at a pedestrian crossing or an intersection or at a distance further than... from such pedestrian crossing or intersection.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '9 m', false),
  ((select id from q), 'b', '12 m', false),
  ((select id from q), 'c', '50 m', true);

-- freek53.xyz - Rules of the Road Test 2 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'When should the vehicle''s headlamps be kept on? (i) During day time. (ii) Between sunset and sunrise. (iii) When the road is not clearly visible from 150 m ahead.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(ii) and (iii)', true),
  ((select id from q), 'b', '(ii) only', false),
  ((select id from q), 'c', '(i) and (ii).', false);

-- freek53.xyz - Rules of the Road Test 2 Q2
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'At what distance should the main-beam brighten objects ahead?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '60 metres away', false),
  ((select id from q), 'b', '100 metres away', true),
  ((select id from q), 'c', '80 metres away', false);

-- freek53.xyz - Rules of the Road Test 2 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'The dipped beam should not brighten more than...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '60 metres away', false),
  ((select id from q), 'b', '45 metres away', true),
  ((select id from q), 'c', '10 metres away', false);

-- freek53.xyz - Rules of the Road Test 2 Q4
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'If your vehicle is in motion...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You may not light your parking lamps.', true),
  ((select id from q), 'b', 'You are allowed to have a passenger.', false),
  ((select id from q), 'c', 'You may not drive at 60 km/h.', false);

-- freek53.xyz - Rules of the Road Test 2 Q5
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Your vehicle is not allowed on a public road if... (for motorcycle, light vehicle and heavy vehicle)', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You drive at a slow speed.', false),
  ((select id from q), 'b', 'You play loud music in your vehicle', false),
  ((select id from q), 'c', 'It does not have a rear lamp producing a red light to the rear.', true);

-- freek53.xyz - Rules of the Road Test 2 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What are the rules regarding the stop lamp? (For all the vehicle types) (i) If your vehicle does not have a stop lamp then it is not allowed on the public road. (ii) You may drive a vehicle without stop lamps. (iii) Stop lamps must be visible from 30 metres away in normal sunlight.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(ii)', false),
  ((select id from q), 'b', '(i), (ii) and (iii)', false),
  ((select id from q), 'c', '(i) and (iii)', true);

-- freek53.xyz - Rules of the Road Test 2 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Number plates must be...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All vehicles on a public road must have a number plate that has clear letters from 20 metres away.', true),
  ((select id from q), 'b', 'Drivers may remove their vehicle''s number plate when driving on a freeway.', false),
  ((select id from q), 'c', 'You may not drive a vehicle without number plates on a public road.', false);

-- freek53.xyz - Rules of the Road Test 2 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'You may not drive on a public road if the turn radius of your vehicle is more than..', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '6 metres.', false),
  ((select id from q), 'b', '13.1 metres', true),
  ((select id from q), 'c', '15 metres', false);

-- freek53.xyz - Rules of the Road Test 2 Q9
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What do you do when an emergency vehicle approaches you?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Stay in your lane and block it', false),
  ((select id from q), 'b', 'Race it', false),
  ((select id from q), 'c', 'Give right of way to the emergency vehicle', true);

-- freek53.xyz - Rules of the Road Test 2 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What is the rule regarding the hooter?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'You may use your hooter for safety reasons and it must be audible from 90 metres away.', true),
  ((select id from q), 'b', 'You may use the hooter to get attention from pedestrians', false),
  ((select id from q), 'c', 'You may use the hooter for other drivers on the road.', false);

-- freek53.xyz - Rules of the Road Test 2 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'When is it not compulsory to wear a seatbelt? (i) When moving in or out of a parking area. (ii) When reversing your vehicle. (iii) When driving below 60 km/h', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i) and (ii)', true),
  ((select id from q), 'b', '(ii)', false),
  ((select id from q), 'c', 'All of the above', false);

-- freek53.xyz - Rules of the Road Test 2 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Your vehicle''s windscreen must... (i) Provide you with enough visibility for safe driving. (ii) Have visible light transfer through the windscreen at least 70 percent. (iii) Be of safety glass.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(iii)', false),
  ((select id from q), 'b', '(i) and (iii).', false),
  ((select id from q), 'c', 'All of the above', true);

-- freek53.xyz - Rules of the Road Test 2 Q13
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'The wipers of your windscreen should...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the below.', true),
  ((select id from q), 'b', 'Wipe the windscreen sufficiently and clearly.', false),
  ((select id from q), 'c', 'Wipe the outside of the windscreen directly in front of the driver.', false);

-- freek53.xyz - Rules of the Road Test 2 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'A vehicle that... is not allowed on a public road.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Causes excessive noise.', true),
  ((select id from q), 'b', 'Moves at a low speed', false),
  ((select id from q), 'c', 'Carries 20 passengers.', false);

-- freek53.xyz - Rules of the Road Test 2 Q15
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Unless otherwise indicated by a traffic sign, what is the speed limit in an urban area?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '120 km/h', false),
  ((select id from q), 'b', '100 km/h', false),
  ((select id from q), 'c', '60 km/h', true);

-- freek53.xyz - Rules of the Road Test 2 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What is the length limit for a trailer (not semi-trailer) with a GMV of less than 12 000 kg?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Less than 5 metres.', false),
  ((select id from q), 'b', 'Less than 8 metres.', true),
  ((select id from q), 'c', 'More than 10 metres.', false);

-- freek53.xyz - Rules of the Road Test 2 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'If the GMV of a trailer (not semi-trailer) is more than 12 000 kg, then the height should be...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Less than 12.5 metres', true),
  ((select id from q), 'b', 'Less than 5 metres', false),
  ((select id from q), 'c', 'Less than 10metres', false);

-- freek53.xyz - Rules of the Road Test 2 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What is the length limit of any other vehicle', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Less than 10 metres', false),
  ((select id from q), 'b', 'More than 20 metres', false),
  ((select id from q), 'c', 'Less than 12.5 metres', true);

-- freek53.xyz - Rules of the Road Test 2 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'If you are towing a vehicle with faulty brakes, you must...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Not drive faster than 30 km/h', false),
  ((select id from q), 'b', 'Use a tow-bar or draw-bar and not a rope', true),
  ((select id from q), 'c', 'Not carry more than one passenger in the towed vehicle', false);

-- freek53.xyz - Rules of the Road Test 2 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'How long is a learner''s license valid for?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '24 months', true),
  ((select id from q), 'b', '12 moths', false),
  ((select id from q), 'c', '18 moths', false);

-- freek53.xyz - Rules of the Road Test 2 Q21
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Any other vehicle with an overall height of... may not be driven on public road.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'More than 10 metres', false),
  ((select id from q), 'b', 'More than 4.3 metres', true),
  ((select id from q), 'c', 'Less than 10 metres', false);

-- freek53.xyz - Rules of the Road Test 2 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'If the overall height of a double decker bus with any load is..., then it is not allowed on public road', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'More than 4.65 metres.', true),
  ((select id from q), 'b', '5 metres', false),
  ((select id from q), 'c', '9 metres', false);

-- freek53.xyz - Rules of the Road Test 2 Q23
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Any load carried on a vehicle must', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Be covered with sheeting', false),
  ((select id from q), 'b', 'Have red triangles or flags tied to it', false),
  ((select id from q), 'c', 'Not obscure the driver''s view.', true);

-- freek53.xyz - Rules of the Road Test 2 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What is the ideal frequency for checking your rear view mirror(s) whilst driving?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Only when you intend on changing direction, slowing down or stopping.', false),
  ((select id from q), 'b', 'Every 5 to 8 seconds', true),
  ((select id from q), 'c', 'Every minute', false);

-- freek53.xyz - Rules of the Road Test 2 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Before you reach the exit where you will be leaving the freeway, how should you position', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'In the left-hand lane.', true),
  ((select id from q), 'b', 'In the middle lane.', false),
  ((select id from q), 'c', 'In the shoulder of the road', false);

-- freek53.xyz - Rules of the Road Test 2 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Which rules apply to adjustable spotlights? (i) Vehicles of medical doctors, vets or breakdown contractors may have adjustable spotlights. (ii) Adjustable spotlights must light up other vehicles or persons at least 100m ahead of your vehicle. (iii) Adjustable spotlights are permissible on game-spotting vehicles.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the above are correct', false),
  ((select id from q), 'b', '(i) and (iii) only are correct.', false),
  ((select id from q), 'c', 'Only (i) is correct.', true);

-- freek53.xyz - Rules of the Road Test 2 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'If a person has been killed or injured in an accident and such accident causes a complete obstruction on the roadway, no vehicle may be moved from the position from where it came to rest unless', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'A certified tow-truck arrives on the scene and removes such vehicle(s) from the roadway.', false),
  ((select id from q), 'b', 'Its position has been clearly marked on the road surface by the person moving the vehicle or such removal has been authorised by a traffic officer.', true),
  ((select id from q), 'c', 'The driver authorises such removal', false);

-- freek53.xyz - Rules of the Road Test 2 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'Under adverse conditions such as rain, slippery road surface, poor visibility or when being followed too closely, the driver/rider of a vehicle shall', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Increase their following distance.', true),
  ((select id from q), 'b', 'Decrease their following distance.', false),
  ((select id from q), 'c', 'Put on emergency lights of their vehicles.', false);

-- freek53.xyz - Rules of the Road Test 2 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'What is the speed limit for passenger vehicles such as buses and minibuses?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '80 km/h', false),
  ((select id from q), 'b', '120 km/h.', false),
  ((select id from q), 'c', '100 km/h', true);

-- freek53.xyz - Rules of the Road Test 2 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 2', 'When are you allowed to park in a parking bay reserved for disabled persons? (i) If you are a disabled person or the driver of a motor vehicle conveying disabled persons. (ii) If such vehicle is issued with a sticker for disabled persons or conveying of disabled persons. (iii) If you are conveying elderly persons. (iv) If you have an emergency and there are no other parking bays available.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the above are correct', false),
  ((select id from q), 'b', '(i),(ii) and (iii) are correct', false),
  ((select id from q), 'c', 'Only (i) and (ii) are correct', true);

-- freek53.xyz - Rules of the Road Test 3 Q1
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Unless permitted by an appropriate road traffic sign, you may not park your vehicle on the left hand side of the roadway with the outside of any left hand wheel there of more than... within the roadway.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '450 mm', true),
  ((select id from q), 'b', '300 mm', false),
  ((select id from q), 'c', '550 mm', false);

-- freek53.xyz - Rules of the Road Test 3 Q3
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Which of the following vehicles may stop or park anywhere on a public road, in the execution of their duties and whilst displaying the applicable identification lamps? (i) Fire-fighting vehicles. (ii) Ambulances and medical response vihecles. (iii) A vehicle engaged in civil protection. (iv) A vehicle used for construction or maintenance of a public road,', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the above are correct', true),
  ((select id from q), 'b', 'Only (i) and (ii) are correct', false),
  ((select id from q), 'c', '(i), (ii) and (iii) only are correct', false);

-- freek53.xyz - Rules of the Road Test 3 Q6
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Which of the following is allowed on a freeway? (i) Stopping or parking within an area reserved by an appropriate road traffic sign. (ii) Being on foot in the shoulder of the road under normal circumstances. (iii) Giving hand signals.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the above are correct', false),
  ((select id from q), 'b', 'None of the above are correct', false),
  ((select id from q), 'c', 'Only (i) is correct', true);

-- freek53.xyz - Rules of the Road Test 3 Q7
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Under normal circumstances a combination of motor vehicles is restricted to... (i) a drawing vehicle and a maximum of two trailers. (ii) a drawing vehicle and one other motor vehicle, which is not a trailer. (iii) a drawing vehicle and two other motor vehicles, which are not trailers.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i) and (ii) are correct.', true),
  ((select id from q), 'b', 'Only (i) is correct.', false),
  ((select id from q), 'c', '(i) and (iii) are correct.', false);

-- freek53.xyz - Rules of the Road Test 3 Q8
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Any professional driver would be legally accused of driving under the influence when the concentration of alcohol in their blood is...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '0.05g per 100 ml of blood or more', false),
  ((select id from q), 'b', '0.02g per 100 ml of blood or more', true),
  ((select id from q), 'c', '0.2g per 100 ml of blood or more', false);

-- freek53.xyz - Rules of the Road Test 3 Q10
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Which of the following vehicles would be considered abandoned? (i) A vehicle left standing in such a way as to cause a danger or obstruction to other traffic. (ii) A vehicle parked on the street in a residential area and not moved for 48 hours. (iii) A vehicle left for 24 hours in the same place on a public road outside an urban area. (iv) A vehicle left in a car park for more than 8 hours without the parking fee having been paid.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i) and (iii) only are correct.', true),
  ((select id from q), 'b', 'All of the above are correct', false),
  ((select id from q), 'c', '(iii) and (iv) only are correct.', false);

-- freek53.xyz - Rules of the Road Test 3 Q11
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'When pedestrians are already crossing the road into which you are turning left, you must...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Wait and allow them to cross the road', true),
  ((select id from q), 'b', 'Sound your horn to warn them of your presence.', false),
  ((select id from q), 'c', 'Continue driving as it is your right of way.', false);

-- freek53.xyz - Rules of the Road Test 3 Q12
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Before you reach the exit where you will be leaving the freeway, how should you position your vehicle?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'In the shoulder of the road', false),
  ((select id from q), 'b', 'In the middle lane', false),
  ((select id from q), 'c', 'In the left hand lane', true);

-- freek53.xyz - Rules of the Road Test 3 Q14
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Pedestrians must cross a roadway only at a pedestrian crossing or an intersection or at a distance further than... from such pedestrian crossing or intersection', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '50 m', true),
  ((select id from q), 'b', '12 m', false),
  ((select id from q), 'c', '9 m', false);

-- freek53.xyz - Rules of the Road Test 3 Q16
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Any load carried on a vehicle must...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Be covered with sheeting.', false),
  ((select id from q), 'b', 'Not obscure the driver''s view', true),
  ((select id from q), 'c', 'Have red triangles or flags tied to it.', false);

-- freek53.xyz - Rules of the Road Test 3 Q17
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'An SABS approved number plate(s) shall be affixed to a vehicle...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'All of the below', true),
  ((select id from q), 'b', 'In an upright position or within 30 degrees of such position.', false),
  ((select id from q), 'c', 'In a manner that it is not easily detachable', false);

-- freek53.xyz - Rules of the Road Test 3 Q18
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'The number plate(s) of a vehicle should correspond with the...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Driver''s licence card', false),
  ((select id from q), 'b', 'Province the vehicle is being used in', false),
  ((select id from q), 'c', 'Vehicle''s licence disc', true);

-- freek53.xyz - Rules of the Road Test 3 Q19
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Which of the following vehicles are regarded as emergency vehicles? (i) A fire-fighting vehicle (with red warning light). (ii) An ambulance (with red warning light). (iii) A vehicle driven by a traffic officer in the carrying out of duties (blue warning light). (iv) A vehicle driven by a person while engaged in civil protection (green warning light).', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(i), (ii) and (iii) only are correct', false),
  ((select id from q), 'b', 'All of the above are correct.', true),
  ((select id from q), 'c', 'Only (i) and (ii) are correct', false);

-- freek53.xyz - Rules of the Road Test 3 Q20
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'The windscreen of a light motor vehicle must have visible light transmittance through the windscreen of...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'at least 70 percent', true),
  ((select id from q), 'b', '100 percent', false),
  ((select id from q), 'c', 'at least 30 percent', false);

-- freek53.xyz - Rules of the Road Test 3 Q22
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'Which statement is true with regards to a vehicle''s fuel tank', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'The filling orifice of the fuel tank must be fitted with an effective cap at all times.', true),
  ((select id from q), 'b', 'You may drive your vehicle with a cloth in the filling orifice of the fuel tank until you are able to replace the fuel cap', false),
  ((select id from q), 'c', 'You only have to put a cap on the filling orifice of the fuel tank if you don''t want to spill and loose fuel whilst driving', false);

-- freek53.xyz - Rules of the Road Test 3 Q24
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'What speed limit applies to vehicles or a combination of vehicles with a GVM greater than 9 000 kg or any breakdown vehicle that is towing another vehicle? Provided such vehicles shall not exceed general speed limits or as indicated by road traffic signs', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '100 km/h.', false),
  ((select id from q), 'b', '80 km/h', true),
  ((select id from q), 'c', '60 km/h', false);

-- freek53.xyz - Rules of the Road Test 3 Q25
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'What is the overall length allowed in the case of a combination of vehicles, consisting of a drawing vehicle and a semi-trailer?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '18.5 m', true),
  ((select id from q), 'b', '22 m', false),
  ((select id from q), 'c', '12.5', false);

-- freek53.xyz - Rules of the Road Test 3 Q26
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'The following motor vehicles may not be used on a public road if the overall height, together with any load thereon,... (i) in the case of a double-deck bus, exceeding 4.65 m. (ii) in  the case of a goods vehicle, exceeding 4.3 m. (iii) in the case of a motorcar (carrying goods on the roof), does not exceed more than half the height of the vehicle.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '(iii) only is correct.', false),
  ((select id from q), 'b', 'Non of the above are correct.', false),
  ((select id from q), 'c', '(i) and (ii) only are correct.', true);

-- freek53.xyz - Rules of the Road Test 3 Q27
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'If a light or heavy motor vehicle is fitted with brackets for the conveyance of goods, such brackets may not project more than... beyond the widest part of such vehicle, excluding side mirrors and direction indicators.', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '300 mm', false),
  ((select id from q), 'b', '150 mm', true),
  ((select id from q), 'c', '450 mm', false);

-- freek53.xyz - Rules of the Road Test 3 Q28
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'The driver/rider of a vehicle intending to pass a stationary bus must...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Be on the lookout for persons approaching or leaving or who might approach or leave such bus', true),
  ((select id from q), 'b', 'Stop behind such bus and wait for it to move off.', false),
  ((select id from q), 'c', 'Accelerate and drive past the bus as quick as possible, in case it moves off when your vehicle is next to it.', false);

-- freek53.xyz - Rules of the Road Test 3 Q29
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'When driving a motor vehicle on a public road which is divided into traffic lanes by means of road markings, the driver/rider shall not turn from one lane into another unless he/she...', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', 'Can speed up enough to take a gap between traffic', false),
  ((select id from q), 'b', 'Has a clear view of the road ahead for atleast 150 m.', false),
  ((select id from q), 'c', 'Can do so without obstructing or endangering other traffic.', true);

-- freek53.xyz - Rules of the Road Test 3 Q30
with q as (
  insert into questions (category_id, source, question_text, image_url)
  values (2, 'freek53.xyz - Rules of the Road Test 3', 'How far must a vehicle''s indicator lights be visible to a person of normal eyesight in normal daylight?', NULL)
  returning id
)
insert into options (question_id, label, option_text, is_correct) values
  ((select id from q), 'a', '90 m', false),
  ((select id from q), 'b', '200 m', false),
  ((select id from q), 'c', '30 m', true);
