-- public.items definition

-- Drop table

-- DROP TABLE public.items;

CREATE TABLE public.items (
	place_code varchar(50) NOT NULL,
	item_name_zh varchar(50) NULL,
	item_name_en varchar(50) NULL,
	item_name_ja varchar(50) NULL,
	"type" varchar(50) NULL,
	"location" varchar(50) NULL,
	CONSTRAINT items_pk PRIMARY KEY (place_code)
);


-- public.keywords definition

-- Drop table

-- DROP TABLE public.keywords;

CREATE TABLE public.keywords (
	keyword_id int4 NULL,
	value varchar(50) NULL,
	dimension varchar(50) NULL,
	description varchar(50) NULL,
	value_en varchar(50) NULL,
	value_ja varchar(50) NULL
);


-- public.shoe_language definition

-- Drop table

-- DROP TABLE public.shoe_language;

CREATE TABLE public.shoe_language (
	shoe_name_en varchar(50) NOT NULL,
	shoe_name_zh varchar(50) NULL,
	shoe_name_ja varchar(50) NULL,
	CONSTRAINT shoe_language_pk PRIMARY KEY (shoe_name_en)
);


-- public.ui_texts definition

-- Drop table

-- DROP TABLE public.ui_texts;

CREATE TABLE public.ui_texts (
	"key" varchar(50) NULL,
	zh_text varchar(50) NULL,
	en_text varchar(128) NULL,
	ja_text varchar(128) NULL
);


-- public.llm_keywords_map definition

-- Drop table

-- DROP TABLE public.llm_keywords_map;

CREATE TABLE public.llm_keywords_map (
	place_code varchar(50) NOT NULL,
	keyword_id int4 NOT NULL,
	CONSTRAINT llm_keywords_map_pk PRIMARY KEY (place_code, keyword_id),
	CONSTRAINT llm_keywords_map_items_fk FOREIGN KEY (place_code) REFERENCES public.items(place_code)
);


-- public.preference_rules definition

-- Drop table

-- DROP TABLE public.preference_rules;

CREATE TABLE public.preference_rules (
	shoe_code varchar(50) NOT NULL,
	keyword_id int4 NOT NULL,
	score int4 NULL,
	CONSTRAINT preference_rules_pk PRIMARY KEY (shoe_code, keyword_id),
	CONSTRAINT fk_shoe_code_ref FOREIGN KEY (shoe_code) REFERENCES public.shoe_language(shoe_name_en) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- public.shoe_feedback definition

-- Drop table

-- DROP TABLE public.shoe_feedback;

CREATE TABLE public.shoe_feedback (
	user_id varchar(50) NOT NULL,
	"timestamp" varchar(50) NULL,
	predicted_attr varchar(50) NULL,
	pred_conf float4 NULL,
	topk varchar(50) NULL,
	shoe_code varchar(50) NULL,
	shoe_name_zh varchar(50) NULL,
	was_correct bool NULL,
	image_path varchar(50) NULL,
	"location" varchar(64) NULL,
	keyword_id int4 NULL,
	CONSTRAINT shoe_feedback_pk PRIMARY KEY (user_id),
	CONSTRAINT shoe_feedback_preference_rules_fk FOREIGN KEY (shoe_code,keyword_id) REFERENCES public.preference_rules(shoe_code,keyword_id)
);


-- public.user_feedback definition

-- Drop table

-- DROP TABLE public.user_feedback;

CREATE TABLE public.user_feedback (
	user_id varchar(50) NOT NULL,
	"timestamp" varchar(50) NULL,
	"language" varchar(50) NULL,
	age varchar(50) NULL,
	gender varchar(50) NULL,
	pc_type varchar(50) NULL,
	selected_item text NULL,
	rc_type varchar(50) NULL,
	shoe_code varchar(128) NULL,
	shown_places text NULL,
	checked_places text NULL,
	correct_rate float4 NULL,
	declined int4 NULL,
	options_pic text NULL,
	options_rating int4 NULL,
	niimbot_label text NULL,
	recommendations varchar(64) NULL,
	keyword_id int4 NULL,
	CONSTRAINT user_feedback_pk PRIMARY KEY (user_id),
	CONSTRAINT user_feedback_preference_rules_fk FOREIGN KEY (shoe_code,keyword_id) REFERENCES public.preference_rules(shoe_code,keyword_id)
);


-- public.user_rec definition

-- Drop table

-- DROP TABLE public.user_rec;

CREATE TABLE public.user_rec (
	user_id varchar(50) NOT NULL,
	place_code varchar(50) NOT NULL,
	score float4 NULL,
	is_checked bool NULL,
	CONSTRAINT user_rec_pk PRIMARY KEY (user_id, place_code),
	CONSTRAINT user_rec_items_fk FOREIGN KEY (place_code) REFERENCES public.items(place_code),
	CONSTRAINT user_rec_user_feedback_fk FOREIGN KEY (user_id) REFERENCES public.user_feedback(user_id)
);