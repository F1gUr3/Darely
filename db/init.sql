CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(1) NOT NULL,
    category VARCHAR(150) NOT NULL,
    content TEXT NOT NULL,
);
-- Temporary questions for development, switch up for your questions
INSERT INTO questions (id, type, category, content) VALUES
(1, 'T', 'friends', 'What is the most embarrassing thing you have ever done?'),
(2, 'D', 'friends', 'Dance with no music for 1 minute.'),
(3, 'T', 'couple', 'What is your biggest fear in a relationship?'),
(4, 'D', 'couple', 'Give your partner a massage for 5 minutes.'),
(5, 'T', 'family', 'What is one thing you wish you could change about yourself?'),
(6, 'D', 'family', 'Do an impression of a family member.'),
(7, 'T', 'friends', 'Who is your celebrity crush and why?'),
(8, 'D', 'friends', 'Call a friend and sing them a song.'),
(9, 'T', 'couple', 'What is your idea of a perfect date?'),
(10, 'D', 'couple', 'Write a love note and give it to your partner.'),
(11, 'T', 'family', 'What is the most valuable lesson you’ve learned from a family member?'),
(12, 'D', 'family', 'Tell a joke and make everyone laugh.'),
(13, 'T', 'friends', 'What is one secret you’ve never told anyone?'),
(14, 'D', 'friends', 'Post an embarrassing photo on social media for 1 hour.'),
(15, 'T', 'couple', 'What is your favorite memory with your partner?'),
(16, 'D', 'couple', 'Recreate your first date.'),
(17, 'T', 'family', 'Who is your role model and why?'),
(18, 'D', 'family', 'Share an old family photo and tell a story about it.'),
(19, 'T', 'friends', 'What is something you’re really proud of?'),
(20, 'D', 'friends', 'Do a cartwheel or attempt one.'),
(21, 'T', 'couple', 'What was your first impression of your partner?'),
(22, 'D', 'couple', 'Cook a meal for your partner.'),
(23, 'T', 'family', 'What is a family tradition that means a lot to you?'),
(24, 'D', 'family', 'Play a board game with your family.'),
(25, 'T', 'friends', 'What’s the best piece of advice you’ve ever received?'),
(26, 'D', 'friends', 'Let someone draw on your face with a pen.'),
(27, 'T', 'couple', 'What is one thing you admire about your partner?'),
(28, 'D', 'couple', 'Plan a surprise for your partner.'),
(29, 'T', 'family', 'What is your favorite family vacation memory?'),
(30, 'D', 'family', 'Re-enact a funny family moment.'),
(31, 'T', 'friends', 'What is something you’ve always wanted to learn?'),
(32, 'D', 'friends', 'Do your best impression of a famous person.'),
(33, 'T', 'couple', 'What are your relationship goals?'),
(34, 'D', 'couple', 'Give your partner a compliment every day for a week.'),
(35, 'T', 'family', 'What’s a family recipe you love?'),
(36, 'D', 'family', 'Have a family photo shoot with silly poses.'),
(37, 'T', 'friends', 'What is one thing you’d like to achieve this year?'),
(38, 'D', 'friends', 'Let someone tickle you for 30 seconds.'),
(39, 'T', 'couple', 'What is one thing you want to improve in your relationship?'),
(40, 'D', 'couple', 'Surprise your partner with their favorite treat.'),
(41, 'T', 'family', 'What’s a memorable family celebration?'),
(42, 'D', 'family', 'Organize a family game night.'),
(43, 'T', 'friends', 'What’s the most recent book you’ve read and enjoyed?'),
(44, 'D', 'friends', 'Sing a song in public.'),
(45, 'T', 'couple', 'How do you express love and affection?'),
(46, 'D', 'couple', 'Create a romantic playlist for your partner.'),
(47, 'T', 'family', 'What is a family tradition you’d like to start?'),
(48, 'D', 'family', 'Cook a family meal together.'),
(49, 'T', 'friends', 'What is a hobby you’re passionate about?'),
(50, 'D', 'friends', 'Post a funny status update on social media.');

