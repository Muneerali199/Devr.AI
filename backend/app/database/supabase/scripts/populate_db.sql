-- Users
-- Note: These are mock/dummy data records for local development and testing only.
-- Replace IDs with actual values or use environment variables in production.
insert into
  users (
    id, created_at, updated_at, email, discord_id, discord_username,
    github_id, github_username, slack_id, slack_username, display_name,
    avatar_url, bio, location, is_verified, verification_token,
    verification_token_expires_at, verified_at, skills, github_stats,
    last_active_discord, last_active_github, last_active_slack,
    total_interactions_count, preferred_languages
  )
values
  (
    '<MOCK_USER_ID_1>', '2025-05-05 03:56:41', '2025-01-22 14:50:25',
    'blakeerik@yahoo.com', '<MOCK_DISCORD_ID>', 'donaldgarcia', '<MOCK_GITHUB_ID>', 'fjohnson',
    '<MOCK_SLACK_ID>', 'hoffmanjennifer', 'Jennifer Cole', 'https://dummyimage.com/696x569',
    'Bill here grow gas enough analysis. Movie win her need stop peace technology.', 'East Steven',
    true, null, null, '2025-05-14 15:04:01',
    '{"skills": ["Python", "C++", "Java"]}'::jsonb, '{"commits": 300}'::jsonb,
    '2025-04-19 03:34:26', '2025-02-12 15:28:51', '2025-05-13 22:32:01', 28,
    array['JavaScript', 'C++']
  ),
  (
    '<MOCK_USER_ID_2>', '2025-01-11 20:41:23', '2025-02-14 11:26:28',
    'jeffrey28@yahoo.com', '<MOCK_DISCORD_ID>', 'nadams', '<MOCK_GITHUB_ID>', 'jason76',
    '<MOCK_SLACK_ID>', 'josephwright', 'Deborah Richards', 'https://www.lorempixel.com/186/96',
    'Civil quite others his other life edge network. Quite boy those.', 'Kathrynside',
    true, null, null, '2025-01-01 02:39:54',
    '{"skills": ["C++", "TypeScript", "Rust"]}'::jsonb, '{"commits": 139}'::jsonb,
    '2025-04-27 07:17:02', '2025-03-04 22:40:36', '2025-04-05 21:04:03', 75,
    array['Go', 'Python']
  ),
  (
    '<MOCK_USER_ID_3>', '2025-03-01 17:07:10', '2025-02-16 11:55:43',
    'samuel87@gmail.com', '<MOCK_DISCORD_ID>', 'millertodd', '<MOCK_GITHUB_ID>', 'davidalvarez',
    '<MOCK_SLACK_ID>', 'ibrandt', 'Melissa Marquez', 'https://www.lorempixel.com/507/460',
    'Open discover detail. Remain arrive attack all. Audience draw protect Democrat car very.', 'Stevenland',
    false, '<MOCK_VERIFICATION_TOKEN>', '2025-06-21 12:00:00', null,
    '{"skills": ["Python", "JavaScript", "C++"]}'::jsonb, '{"commits": 567}'::jsonb,
    '2025-01-20 00:17:15', '2025-01-10 19:45:31', '2025-07-07 15:12:55', 77,
    array['Python', 'Rust']
  );

-- Repositories
-- Note: These are mock/dummy data records for local development and testing only.
insert into
  repositories (
    id, created_at, updated_at, github_id, full_name, name, owner, description,
    stars_count, forks_count, open_issues_count, languages_used, topics, is_indexed,
    indexed_at, indexing_status, last_commit_hash
  )
values
  (
    '<MOCK_REPO_ID_1>', '2025-05-16 10:34:41', '2025-02-16 08:54:52', 3728882,
    'jamessellers/repo_0', 'repo_0', 'jamessellers', 'Him task improve fish list tree high.',
    3032, 363, 26, array['C++', 'Python'], array['Java', 'C++'], true, '2025-05-09 21:00:50',
    'completed', '<MOCK_COMMIT_HASH>'
  ),
  (
    '<MOCK_REPO_ID_2>', '2025-01-08 04:31:26', '2025-01-25 12:21:00', 3741438,
    'gallowayjoseph/repo_1', 'repo_1', 'gallowayjoseph', 'Whole forward beyond suddenly between treat address.',
    3786, 388, 34, array['C++', 'Go'], array['C++', 'Rust'], true, '2025-01-28 23:48:46',
    'completed', '<MOCK_COMMIT_HASH>'
  ),
  (
    '<MOCK_REPO_ID_3>', '2025-04-02 03:59:05', '2025-02-21 11:05:44', 6292423,
    'fjohnson/repo_2', 'repo_2', 'fjohnson', 'Perhaps however bag forget purpose move.',
    3286, 274, 8, array['JavaScript', 'HTML'], array['Rust', 'C++'], false, '2025-03-03 11:44:52',
    'pending', '<MOCK_COMMIT_HASH>'
  );

-- Interactions
-- Note: These are mock/dummy data records for local development and testing only.
insert into
  interactions (
    id, created_at, user_id, repository_id, platform, platform_specific_id, channel_id,
    thread_id, content, interaction_type, sentiment_score, intent_classification,
    topics_discussed, metadata
  )
values
  (
    '<MOCK_INTERACTION_ID_1>', '2025-03-10 12:14:30', '<MOCK_USER_ID_1>',
    '<MOCK_REPO_ID_1>', 'github', '<MOCK_PLATFORM_ID>',
    '<MOCK_CHANNEL_ID>', '<MOCK_THREAD_ID>',
    'Skill medical after them analysis hit health. Ground attack drop. Billion old series card good full poor store.',
    'comment', -0.07, 'help_request', array['C++', 'TypeScript'], '{"info": "capital"}'::jsonb
  ),
  (
    '<MOCK_INTERACTION_ID_2>', '2025-03-19 16:14:11', '<MOCK_USER_ID_2>',
    '<MOCK_REPO_ID_2>', 'github', '<MOCK_PLATFORM_ID>',
    '<MOCK_CHANNEL_ID>', '<MOCK_THREAD_ID>',
    'Song risk bad own state. Family bill foreign fast knowledge response coach. Goal amount thank good your ever.',
    'pr', 0.6, 'help_request', array['JavaScript', 'TypeScript'], '{"info": "already"}'::jsonb
  ),
  (
    '<MOCK_INTERACTION_ID_3>', '2025-05-06 06:40:36', '<MOCK_USER_ID_3>',
    '<MOCK_REPO_ID_3>', 'slack', '<MOCK_PLATFORM_ID>',
    '<MOCK_CHANNEL_ID>', '<MOCK_THREAD_ID>',
    'Off morning huge power. Whether ago control military trial. Energy employee land you.',
    'message', -0.16, 'feature_request', array['Go', 'JavaScript'], '{"info": "security"}'::jsonb
  );

-- Conversation Context
-- Note: These are mock/dummy data records for local development and testing only.
insert into
  conversation_context (
    id, user_id, platform, memory_thread_id, conversation_summary, key_topics,
    total_interactions, session_start_time, session_end_time, created_at
  )
values
  (
    '<MOCK_CONTEXT_ID_1>', '<MOCK_USER_ID_1>',
    'discord', '<MOCK_THREAD_ID>',
    'The user asked about getting started with the API and had questions about authentication. They were provided with a link to the documentation.',
    array['onboarding', 'api_keys', 'authentication'], 8, '2025-06-20 10:00:00',
    '2025-06-20 10:25:00', '2025-06-20 10:25:00'
  ),
  (
    '<MOCK_CONTEXT_ID_2>', '<MOCK_USER_ID_2>',
    'slack', '<MOCK_THREAD_ID>',
    'User reported a potential bug related to the repository indexing service. They provided logs and a repository URL. The issue was acknowledged and a ticket was created.',
    array['bug_report', 'indexing', 'repositories'], 12, '2025-06-21 09:00:00',
    '2025-06-21 09:45:00', '2025-06-21 09:45:00'
  ),
  (
    '<MOCK_CONTEXT_ID_3>', '<MOCK_USER_ID_3>',
    'discord', '<MOCK_THREAD_ID>',
    'A general discussion about the future of Rust and its use in web development. The user shared an article and asked for opinions.',
    array['Rust', 'web_development', 'discussion'], 5, '2025-06-19 14:30:00',
    '2025-06-19 15:00:00', '2025-06-19 15:00:00'
  );
