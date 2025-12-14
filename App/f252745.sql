prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>93917529026065949146
,p_default_application_id=>252745
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXMALEK'
);
end;
/
 
prompt APPLICATION 252745 - App Manamgements Novifications Automatic
--
-- Application Export:
--   Application:     252745
--   Name:            App Manamgements Novifications Automatic
--   Date and Time:   01:27 Sunday December 14, 2025
--   Exported By:     MALEK.M.EDRESI@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     32
--       Items:                   57
--       Validations:              6
--       Processes:               29
--       Regions:                 76
--       Buttons:                 46
--       Dynamic Actions:         19
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         2
--         Authorization:          5
--         ACL Roles:              5
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.11
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_APEXMALEK')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'App Manamgements Novifications Automatic')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APP-MANAMGEMENTS-NOVIFICATIONS-AUTOMATIC')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'888FED8DEE3B150E5925E158ACBE5F48A9929E408AEFE4A11670CCBFA11D7CE9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(119813421834118807443)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'App Manamgements Novifications Automatic'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(119813428905681807456)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'App Manamgements Novifications Automatic'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>9
,p_version_scn=>15683132258771
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(119813923224806809542)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(252745)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(119813422609865807444)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(119813423711941807447)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_252745_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(119813923224806809542)
,p_name=>'App 252745 Push Notifications Credentials'
,p_static_id=>'App_252745_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813422609865807444)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15683132258763
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813440122823807472)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813441699004807474)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Data Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plus-circle'
,p_security_scheme=>wwv_flow_imp.id(119817595207119037753)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813460798541807670)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Data Restaurants'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(119817595207119037753)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813472095499807690)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Data Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_security_scheme=>wwv_flow_imp.id(119817371933364344697)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119814937784484210761)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'adding and Referesh Oders'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_imp.id(119817595207119037753)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119823465878238799299)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Details of all orders'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(119817595207119037753)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813890974645808874)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(119813428839731807456)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813423711941807447)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15683095476350
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813687190407808870)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813687570878808871)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813687845506808871)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(119813426875952807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813688355618808871)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(119813687845506808871)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(119813426875952807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813688783416808872)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(119813687845506808871)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813689143337808872)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(119813687845506808871)
,p_required_patch=>wwv_flow_imp.id(119813426875952807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813689413427808872)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813922949612809542)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(119813689413427808872)
,p_required_patch=>wwv_flow_imp.id(119813916555165809536)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813689926372808872)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(119813689413427808872)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813890343795808873)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(119813689413427808872)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813503008477807727)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15683095433215
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813503446346807728)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Data Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-plus-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813503840499807728)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Data Restaurants'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813504267976807728)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Data Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813892099956808875)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813426531609807453)
,p_version_scn=>15683095459751
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813892414561808875)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(119813426531609807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813892708152808875)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813426938386807453)
,p_version_scn=>15683095459760
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813893113805808876)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(119813426938386807453)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813893496090808876)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_version_scn=>15683095459786
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813893877429808876)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813894252658808876)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813894685321808877)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813895099115808877)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813895492395808877)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813895832542808877)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813896197687808877)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_version_scn=>15683095459802
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813896592053808878)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813896956117808878)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813897294612808878)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_version_scn=>15683095459809
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813897640654808878)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(119813920183550809540)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(119813916555165809536)
,p_version_scn=>15683095476278
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(119813920562918809540)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(119813916240158809536)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000002B7494441545847ED954D4814611CC69F99D98F7166D5B55CB5D53621D615C28212A288A843D07609093D4A90658788B212A95307B12F0F51E24189EA50040652';
wwv_flow_imp.g_varchar2_table(2) := '1E3AD96D3D7588825A135273FD5877CD9CF66B7676DE663733D775F7DD5841827D8FEFBCF3FFFFE679FEF3BC8CFFE661824D5C4C1E20AF405E81FF4E015951219B2CE02A1CE08A4A1309A24A3E28D36E1883F3D073EC3FA54AD639105309FC9C1995CE73';
wwv_flow_imp.g_varchar2_table(3) := '30D51D051826B9115121BD1FC6F49B3E94AA3FC0B26B9EA7C1CA0A40D59AFB441BEC2D77C18AC52BA5829F5C00CB4170EC5FD953253F46FBAEA22C32A331D221B202F0AA226AAE3C050881EC1D87D1B66BDDEF21C12580D3699EC4F0A5BB19165D986A07';
wwv_flow_imp.g_varchar2_table(4) := '15201C5521382FA1B8DE0965611ACAF719F03BF7A51426E100C65FDE4375C365304211164706210FF75267820AE0550C70DC184CF57C15029143987AF51055275A13CD134B9B89AFB74EC1CC6456810A2055EC86EDF4EDF4522A323CAF7B603DDE02A6A0';
wwv_flow_imp.g_varchar2_table(5) := '30E99CE7713B84D90F196DA002C87B4EA2DC791EC1CF23106A0F241573F75E442420A1EEC20330BCE9EF702E9F9D1BEA81E1E3506E0021C731581BDA5200484882BBBF031CCFC37EB63BA9C91F58CFC01D08636F730390AC7B616BEE4C2932F1BC133B1A';
wwv_flow_imp.g_varchar2_table(6) := 'AF013A43DA06138FDA51E4CDD182D910507B7D008C51A4FE52AB0F90D012DC5D8D28173227237506225AF41A8F9C41C9A1A6E5E9269A1D2EFCF48C250199AAECDA8C1C5CD9F30F3F81E27A06832E478078C5D92081BDF53EB8926D987CD105B180478179';
wwv_flow_imp.g_varchar2_table(7) := '6B124068D18F4038025B530794F9098CF5B7A142D44289B2A80AC4DF8F47F1B78811BCC58ACAEA1AB03AFDBA6555250ACFF82822F353D8CE47372E8AE3DDE297D15C9881A5B61EE296F27501820B73F08DBE439941DDD8CB6875B7C475AC17C1165A10C5';
wwv_flow_imp.g_varchar2_table(8) := '6F7FF588812CF9608805A8D1BB963C2B0B683EE6F23C0F905720AFC0A62BF00B447B3A9079826DC40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119813424733067807450)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B80000152F49444154785EED9D09741455BAC7FF55DD9DA59374F6842404D9978020A2613321A24705177446C771D771C3DD711B87E784262AC38C0A2A9C273ABE519F3E';
wwv_flow_imp.g_varchar2_table(2) := 'F7E7B8CDC8E8434300911D81B00E0402816CDDD93BE9ADEA7DB742330112BBBBAA37EC7BCFE9D390AEEFDEEFFEEFAF6EDDBAAB001EB8021A141034D87253AE0038401C024D0A708034C9C78D39409C014D0A708034C9C78D39409C014D0A708034C9C78D';
wwv_flow_imp.g_varchar2_table(3) := '39409C014D0A708034C9C78D39409C014D0A708034C9C78D39409C014D0A708034C9C78D2312A0EFCC25FA123488874D265D6C6BAC4E1FA7D789729728CAB16234149924D8254988935C5D2EB7DD6477F76F6D759723533ADF5CEE8AB4FC87152019102C';
wwv_flow_imp.g_varchar2_table(4) := 'E6921110A489803C51845828431E4B2219224DA808F1C72940D82AC9F25A1A065F07595C9B6E2EDF4D85485286278414A0A3F38B32F50E61B28E609145144216CEA56C278727EB3F9B545B20C8EB0559584BF7E35A9DEC589D6C5E630D55EE42069052DB';
wwv_flow_imp.g_varchar2_table(5) := 'CC2BBA82EEA0272873534295C1284B67B5204B0B52CDABFE1EAA5A29E800C9774D3058F3126FA55AF6312ACCE15156A061CAAEBC9BEED7E7D26A3AFE5B786DA333984E0415A0C667A6E7896EF767D4AE9910CC4CF0B8FB546083C320CFCC99B3B221581A';
wwv_flow_imp.g_varchar2_table(6) := '050D208BB9A80082F035399E172CE779BCDE15A09B779F2048B3D24B57577ABFDAFF2B820290D55C729E2C485FF206B2FF0512248B16519067A596AE5C11E8F8030ED0B19A673D396A0CB4B33C3E4D0AD820B80B035D130514A023E609C6582181C153A0';
wwv_flow_imp.g_varchar2_table(7) := '29ABDC38480AC89576D956986BDE680B54020105C832AFF84D72EC964039C7E3098A026FA5CFADB8355031070CA0C6B2A25BA933EB8D4039C6E3099E02B220DF9651BA92DDEC9A4340003AB47072BCB1CD5043DEA46AF68847100A05AC76B9233F108FB2';
wwv_flow_imp.g_varchar2_table(8) := '8000642D2B9A2DCBC22BA1C8394F23300A08827C4F5AE9CAA55A63D30C101BA2B0CE2BDA495F23B43AC3ED43AAC0CEB4B915A3B50E796806C8623EEF1208E25721CD3A4F2C300AC8D28C74F3AA655A22D30ED0BC62E6C0C55A9CE0B66153E09FF4467689';
wwv_flow_imp.g_varchar2_table(9) := '96D4350154652E893309520739101513BDB4081DA1B6922DC99998FFC89A4EB5FE6902A8C15C52220AD2776A13E776E1574092C5F333CDE5E56A3DD10490B5ACF84959C61FD526CEEDC2AF8020E0F769A5150BD47AA20DA079C59FD25BD82CB58973BBF0';
wwv_flow_imp.g_varchar2_table(10) := '2B40007C466F6357AAF5440B4034C3B098CD3349579B38B78B0805EAA821DD4FAD27AA0192A9016D1524D58D2FB50E73BBC02B603018324C73965BD4C4AC1AA02673498A24484D6A12E53611A680E01EA3769A876A805AE75F90EE743A1B234C0AEE8E0A';
wwv_flow_imp.g_varchar2_table(11) := '05644128CC285DC1A6E1F81D5403D4669E92E510F4757EA7C80D224E0151C6B4547345851AC75403D4609E9A2B0A3A3602CFC3E9AE8086210DD500599E29CE871BD5A7BB76DC7F40827045E6DC155FA8D1423540CD4F170F724BD8AF26516E13590A5067';
wwv_flow_imp.g_varchar2_table(12) := 'F02F33CC159FA8F14A3540754F4F19A297F4FF529368A4DAB824196EFA38DD32D8BF3DFFD789020C3A017AFAF67CD8DF7E2E41026ECC9C5BF13F6AF2A35A859F430D64774968ED72A1CDEE46BBC30DBA137D0E220D1F27C5EA618AD5C114A757C03A5D83';
wwv_flow_imp.g_varchar2_table(13) := '2CCB37659857BEA3C67FD5B93E5D016290583B9DB0DA9CB039E8DE3B16629392913DF21C98F206C3909002312E013AF6898983DB6E83BBAB03AECE7638DB9BD1726007EAF66C81CBDE75DCDE14A743BAD1A0C074BA050E900F25464F2434763850D7EE80';
wwv_flow_imp.g_varchar2_table(14) := '748C9BAC61639173CE85481A7A36F49967F810CB8997D80FED44FBBF36E2C0AACFD1D67054F931562F223B2906A9F1A70F481C202F45DFD4E9424D8B5D69DFC4242462D0944B9139F132E8B306FA0D4D5F065DFB36E1E89ACF51BD7EB9F2288C37881890';
wwv_flow_imp.g_varchar2_table(15) := '128738FA8EF4C001EAA3845863F8507397D2C661A1E0B25B9159723D8498F8A095A9BBB916D55F2EC5C175CB9534586DD48F3E911C3840BD944E638713475AED4A6D7046E1851870D9DDD0A5A81E74F6BBFCEDD595D8F3D142580EEE41428C0E83D2E210';
wwv_flow_imp.g_varchar2_table(16) := 'A96F6E1CA0938A97D53A569B0B867823C6DFF2148C05457E03E03170355453FB68806AFBBA65AF61E73FDE56BA0106A7C547E4238D03D4A3780F3675A199DA3CA67EFD31F6AE3F439F91AFAAF0A5963A6C5C740F3AAC0DC81C3A06A31F54BFECCDB66325';
wwv_flow_imp.g_varchar2_table(17) := '36BFF934BDB575524D144FAFFF3A553E05CB8803744C590F3C39051330FCB6F91062D56F10D2B6E51B6CFC6BD9F1323BAFF45DD530B2485CF507B069C943B0355B95C75924BDEE7380A8800ED35B9685DA3D19834761F4BD2F5343394ED30D2BB536E287';
wwv_flow_imp.g_varchar2_table(18) := '3FDE0C47471BD2060CC5D8C7B42FFB77D55761EDC27BA83FA90343D3E361A4B6512484A807883598D96B7A72EE1938EBA15720C42705A45CDC2DF57035D5222667A8A6DAACA733F6EAEDF8E1857B68F33660646682D2360A77886A80BA9C127637D81097';
wwv_flow_imp.g_varchar2_table(19) := '6442E1136F404CCE0A7779784DDFB67315D6BDF27BAA81440CCB50FF98F59A908F17443540BBEA6D60635AE7DC310F8963A7F72A99B366173A6BF622897E1768782212C2C1F79E41D59A7F22C71483ACC4F0F613452D409E4757FEF8F330E4B6DE97A739';
wwv_flow_imp.g_varchar2_table(20) := '8FECC1EA05B72BCC24676663FC1F3E0E3A3FACFDB4F9E5FB696C6D02FA5FFD78AFE9C99D6D58FBECF5B0B735A3203B21AC83B15109101B96D851DF013DB57726CD791B6252EFAB8B9A567D881F3F5C7CBC10A73DFF8DE606F64F11D80DCF7D68AB3F82D1';
wwv_flow_imp.g_varchar2_table(21) := 'B3EE40E6057D6FD8D6B1ED5BACFFCB5CA41AF5CAB047B842540274947A99EBDB9D18FB8BD9482BB9A14FEDA5360B36BD7027DAA93F67E4CC9BD1EF923B83564E3DE11979C90DE83773B6D7B4762CBE17F57BB76164965119880D47883A8058ED535947B5';
wwv_flow_imp.g_varchar2_table(22) := '0FB567A6947D12B037242D85E76EAEC396C50F28A3F2C32FFC1572AF78C0A7E83AF7AEC3DAC58F86B5168A3A80EA694AC6D1560746D15D9EEDC35DEE53496AB888C1B3E9C57BA9D7BADE2F783C496E5F74271AAB766174BFF0B485A20E20CF9B57F1FCCF';
wwv_flow_imp.g_varchar2_table(23) := '2026A669287AEDA60A3C2F113C967AF8FAD83A3955DBAE3558F79F4F202F39161909A13FE92AAA00EAA47E9F3DD4EF93CB862B66BFA89D000D31F4AC7946CDB811D933EE561DDB0F736642747484A55F28AA00AA6DA35985F4197FED83489E7A8DEA02D3';
wwv_flow_imp.g_varchar2_table(24) := '6A184878982F87DE2DC3BE1FBEC1187A8C857ADA475401B4B7D1A6CC652E9AFB2E74E9EA46DA230D1EE64F3B0DDE6EA0C1DB3352E39012E2E9B05103109BD7BCED683B92B3F330FE3FDED7CA812A7B36E370D34BF7296D9E5197DE82EC8BEF5015CFC946';
wwv_flow_imp.g_varchar2_table(25) := 'B2AD052B9EBC0CE9D406EA4F6DA15086A801C8464B6FF6367662E039251878F3D3A1D458492BD08FAD9333B07EEE95903B9A42DE0E8A1A802CB414E770B31D05336E40D60CEF9D745A09933B9AE16A6D80216718C14335CF8B54F3D0AB7A01D53C5901AA';
wwv_flow_imp.g_varchar2_table(26) := '797AFAB86BC97DA8DBBB15637312B5BAEE977DD400E4E97D3EFBC627602ABCDC2F91FCB9988D53ED7BEF591CDEB25A3133C453FF4C4C0C3A5B9A9489F95917758FAD053A54BFFF2CF67FBF2CE4FD415103109BF3C30650273EB010F1C3D881CF2706B7B5';
wwv_flow_imp.g_varchar2_table(27) := '06ED7B372069D41488A64CD5E5EB19294F4ACF422ACD31AADBBF0B769A58963FBE88066DE7AB8ED759BB0F369A6C6F1A5302C1683A259EFA6FDEC08E2FFE8AE19946655950A842D400E4997538F99125881D38EE047DDD96C35855769DB20A431F1B87A9';
wwv_flow_imp.g_varchar2_table(28) := '6C8843C5C432D9D189158F5D8494EC1C8CBCBCBB812C39EDD8F4DE8B30A665E1EC39EFA92A577BD516AC59D43DBC614CCB44A1F9D4BD0CACE5EF60EB27AF867CCA6BF401F4D08B881D72E239BEB65DDF536FEEEF8E17EE94C75F454CBEFFE7DEB15A62F5';
wwv_flow_imp.g_varchar2_table(29) := 'FC5BD17F344DC5983CF3787C957F5B8A364B034A5E5EA90AA0A6359FE0C7F7161DB72D7EF6D35366105896BF896D9FFD17F253629146CBA44315A20620B6CEAB8146E027DEFF3CE2874F3C415FD6E05DFFA75B9449EBC939F9388BE6300B06FF5F8759FB';
wwv_flow_imp.g_varchar2_table(30) := 'A7E2C999884B34E1CCABEE864873AB9D2D0DD8F4F152A4D0BAF9714FBCA5AA5C5D8D87B0F6CFB7C3D9D589ACE1E35070FF9253E269F8FA75547EF956C8FB82A206204F2F74E1BD7F8271E494530A804DDD705A6A10933D48D5E34B795CB55BB1F1B9DFA0';
wwv_flow_imp.g_varchar2_table(31) := 'A3C902A32905F1A654B4361EA182B7A370F67C4D6BCCDC4D47E1221863F246F40A77DD57AF62E757EFF04798AA5BD40723CF0CC4F1373D89E4732FF5C1C2BF4BDC34817ECB123625A316FDCF9A8AFA3D3FC2493B72640C1E8DC1336FEFB5E1EE5F0A3F7D';
wwv_flow_imp.g_varchar2_table(32) := '75F5FBF3E92DEC2BEA070AED8A8DA8A981D85E3E55D62E555326BC153483471955A78967434BAE44FF5F3CEACD24E0BF6F5F78071A0FEC0EF97858D400C426CFB3A91CB9A3CFC5F0BB1706AC00D9EBFF065A85CAFA79064F9D8101D7CE0958DCFE44B4E2';
wwv_flow_imp.g_varchar2_table(33) := 'A12288B4DE870DA88632440D404CD4AD3416169F9C8EC2B24F03A6F1CE577E8BBA9D1B3070D2451878FD1F0216AF3F11B16E8895F3AE53963D0FA64587A10C51055095B593B6A573A3C8FC3E74697901D1B9E9FBFF85ADEE20F2AE7A2420F1A989A465DD';
wwv_flow_imp.g_varchar2_table(34) := 'E7D8FCCE73C8A5653E99215EE6135500791AD2675E7517D2CFBF494D5945A4CD9EA5BFC5911D1B42DE0BCDC4882A803CEDA0D4FC2118F7F89B110983BF4EB13EAC8A39972B13C946D31AB15087A8028889CBA6B4B2A9AD5A77CC087541F5955ED39ABF51';
wwv_flow_imp.g_varchar2_table(35) := '2FF5425AA16AA095AAFE777E6ACD47D401E4798C0D2E9E8501573FA655BFB0DB6F28BB06ED8DB5615B1B167500B199899575EDCA6EAB91B032430B81AD349575134D650DC7DB97C7EFA80388659C4DAC67431BC32EB81A79B31EF2BB0C3BF7AC85A5F27B';
wwv_flow_imp.g_varchar2_table(36) := '345555A2F9C801B81D76BFE3603BBEA6E40E42C6F0B3917A66310CB9C3FD8E63F3821BD172E460C87B9F7B3A1A9500B1D5A93BA953917D17957DE4F3069A6C3BDE1D1F3C87D6DAC37E17B63783DC31851872F5A3D4BD90EBED52E5F7964DCB68EBBB6769';
wwv_flow_imp.g_varchar2_table(37) := 'B732B6096768FB7EA21E202680A72D94466355631F5EEAB5D03C9B19B00B4D29A9C8C81F8CC4E454DA3B3A1982CEFF8DC16597139DB4737D678B0535FB76C3DED585381A7C9D70FF2218FA0DF9497FD814D9EFE7DF423BE0DBC2D6F689EA479827F36C73';
wwv_flow_imp.g_varchar2_table(38) := '29B6C9D48819372167C65D7D165AC7B6EF68278C520874C8C5A0D1E3919E3FD42B70FE5C20BB695BE13DDB70A46AAFB299F9B90FBEACCCA5EE2BFCF8FC6FD054BD376C6F5EBC063AA600EB176210B19988850F2C8271D839A79459FBD6E5D8F0BA193ABD';
wwv_flow_imp.g_varchar2_table(39) := '0E0593A6532D11BCE5D02D470F60CFE6B5DD103D4010E59E0A51F5674BB07FF907CA6E1C2368FA2ADBEE2E9C212ADB403D05F7ACD66093BF263DBC1831FD471EFFB967CD5330E97C185332825E56D6C3FBB06FEB865E6BA2868A0F51F9F162051A064FB8';
wwv_flow_imp.g_varchar2_table(40) := 'B674E135D0491878E64BEBE38C287CF02505A2E3F05061154C9E4EF0A89F68EF2F7596437BB17FDBA613206A5EFF776C797B81024F24ED171DF53590A770AB6987FA266587FA048CB8F87A6CFFF42FCA4F0513A721213D74C71C78FC69A4364ED5760651';
wwv_flow_imp.g_varchar2_table(41) := '12864EBF9A565C746F151C8EE5CB3F750370807AA8E319AD677F62777A4161318CE939FE562001BBBE7EDF761CDC5D793CBE48838739C6013AA9B83D3BD6B33FE70F1D817E43CF04C4D06FEACD96031DD8B60E96DA230ACC0C9EE4083C908E03D44B7DD1';
wwv_flow_imp.g_varchar2_table(42) := 'F3B41E636212868C2B445C72F01BD01E57D8DB5855E526381D4EA5A1CCE009E562417FAA500E501F6A39E8BCB06A3A7CA583366560216FD030640F1E099D863334BC154C57AB154768D34C4B5DAD7269B846D8BDF9D9F3770E9017B5D86B3E5B53E639EA';
wwv_flow_imp.g_varchar2_table(43) := '3223270FD90387C3981AB85DED5B6B0FE268D56EB4363529DEB05DE8D9D6BD91F09AEE0D260E903785E8773666D640EBEA1BE8DC540F48C6A424A465E52091962C27D03C6BD68FE46B70D8DA68116323DA9A1A61ADAD81C3DE3D18CB8EB864271446625B';
wwv_flow_imp.g_varchar2_table(44) := 'A7AFBC71807C2D75BA8E4D05612736B35A890D81F40C0CA8386322F47A03F486EE0F1B2373D39897DBE9844BF9D8D1DED24C6D1BC709B66C5731B61C39D2CE02F3451A0E902F2AF5720D03A8D5EE5226E97BDA49BE46C5A69F3258D8B95FECECF850EF6B';
wwv_flow_imp.g_varchar2_table(45) := 'E8AB9FBE5C1716802CCF14E7C38D6A5F1C3C5DAE7151F5E4A28637FB76D2873DF6241A64636BB5D8B14C06828681A23FF67DBAE4CB9B9F94C55F66982B4EDD2EC49B21FDAE7A18AFC13C35571474353EA4C12F897405646946BA79D532356EAA06A8CD3C';
wwv_flow_imp.g_varchar2_table(46) := '25CB21E8EBD424CA6D224B0151C6B4547345851AAF5403D43AFF8274A7D3D9A826516E13590AC882509851BA62BD1AAF5403D4642E499104A9BBD38387D35B01C13D26BD74F5BF07ECFCC88D6A80EACD25893A416AF3232D7E69842AA093A52129E655FB';
wwv_flow_imp.g_varchar2_table(47) := 'D5B8A71A20D95C126715A44E3589729BC852C02D8B3959E6F2EEB1173F830680205A85E20E4ACFF7EE5B3F9DE397874481AEB49A0E93F0DA46A79AD45403C4126B9C575C4E114C539330B7890C05A8637E45C6DC8A12B5DE6802C832AFD84C09CF559B38';
wwv_flow_imp.g_varchar2_table(48) := 'B78B0805E6A5CFAD60E5A82A6802A8C15C52220AD277AA52E64611A180248BE7679ACBCBD53AA309A02A6A489BBA5FE5793B486D0984D7AEAB5516530799CBBBD4BAA1092096283DC6D8B94BD7AA7580DB8555810FE8F1F56B2D1E6807C85C320982B446';
wwv_flow_imp.g_varchar2_table(49) := '8B13DC364C0AC8E2E47473F90F5A52D70CD0B15A883971E2D6F15ABCE2B6A150602DD53E93B426141080AC6545BF966541DD29245A73C0ED55292008F27569A52B351FFB181080A8575A4FBDD2559493FEAA72C38D42AD404D9A2C0E14CCE52EAD090704';
wwv_flow_imp.g_varchar2_table(50) := '20E644E3BCA2590284C06DDEAC3567DCBE4F05A89CAE489BBBE28B40481430808EB585D841EEFE6F1716889CF0387C55E0256AFB3CECEBC5DEAE0B2840F25D130CD6BC04764EE4A9C7097AF384FF1E7405A8E6D9985AD33E59EDB8576F0E0614209600CD';
wwv_flow_imp.g_varchar2_table(51) := '131A48F38436D33F5382AE084FC01F05EA449D7E62EA53DF1EF4C7C8DBB501074881A8AC783CCD476793B4077A7380FF1E0A05E483A220CF4A2D5DF563A0530B0A40CC4965CAABCBF13E64E1C2403BCDE3F3430101DF1AF4865F99E62CB7F861E5F3A541';
wwv_flow_imp.g_varchar2_table(52) := '038879205F738DCE32BA6E09AD8A09FE21EF3E6739AA2E7C216D7BF6EF848F3EEADE1C200821A80079FCA58EC6D9D4D1F812FD3F260879E0519EAA005B367B33BD6D7D106C71420210CB44E333D3F304C97D3BED66C4CED2CE0F76C6A2347EB6F9F5EBB2';
wwv_flow_imp.g_varchar2_table(53) := '4EFF7AC653DF8664CD5EC800F214A8F2581B537F8500F96EFADB45F409B90F3F33B8682D2DFE21427E35757BBF65C17C5CF5A65B580BCFBAE0C264A1CB314E12309E9C639FB3E9338A3EFEEFFAFD33A3A28FECB0A1879D828CCDB2286F1641DF31B15BD2';
wwv_flow_imp.g_varchar2_table(54) := '9EFCBF9670653FAC00F595E9DAE72E4A307638E25D7019DD3A395E9675469D8478893660099750A14C5784E4708BE81404B74DE7163AF5D0DB6C09319DFD1EFF9A2D6288A8109100459442DC999F548003C401D1A4000748937CDC9803C419D0A4000748';
wwv_flow_imp.g_varchar2_table(55) := '937CDC9803C419D0A4000748937CDC9803C419D0A4000748937CDC9803C419D0A4000748937CDC9803C419D0A4000748937CDC9803C419D0A4C0FF036541631835CF65870000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119813425066475807450)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C070000192D49444154785EED5D07785465BA7ED37B482F4020248009BD2BA2C8556C58D0B5F7C2B2765DD9ABBB0AA8A88B2822825705AFBA2A8875BDE22A620129A2F44E';
wwv_flow_imp.g_varchar2_table(2) := '1248801012D27BCFCC24F7FFCEC94C2621712661CECC9973BEFF79CE1348CEF9CBFB7DEF397FF98A47E9BCC92DE0C208E814010F26804E25CFC396106002B022E81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF8367';
wwv_flow_imp.g_varchar2_table(3) := '02B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AE';
wwv_flow_imp.g_varchar2_table(4) := 'C5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A';
wwv_flow_imp.g_varchar2_table(5) := '012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF836702B00EE81A012680AEC5CF83670228A4032D2D40A3B119F5E2A29F0DE2329A5A60127F3035CB3F9B9BE5C63D3D012F0F0F78798A4B';
wwv_flow_imp.g_varchar2_table(6) := 'FCF4F6F24080B727FCC4E54F978FB8818B220830011C086B6D9309D58D741951D7D4AADD0EA85F7002813E5E08F193AF405F2F07D4CA5510024C8033D003F1224765831115F50649F1E9ADEF8C4284E8E5EF8DB0006FE927979E23C004E80176A4F4E5F5';
wwv_flow_imp.g_varchar2_table(7) := '46548AEB8F4A589F01884C1E8EC0E8BEF0090E83776028BC5A2FCF8010780647488F37D794A1B9AE0A267119E9677D150C3515A82D3C89D2A3FB51999FD365334406224278808FF475E0D23D049800DDC0ABA4D680A29A2618C45CBE63F1F2F543F4C0E1';
wwv_flow_imp.g_varchar2_table(8) := '88481A869001C3E19F30041EFEC1DDA8BDEB5B5BEAAB519F7308D5D9075196B51F8587F7747A33AD1962827D1011E8E39076F5500913C00E29170BA52F12CA4F8BD88E256EC878244CBA1241A9E703DECE51BC1643236A0E6E40CEE6D528CE3A705A9F7C';
wwv_flow_imp.g_varchar2_table(9) := 'C4223A36C417914C049BD26502FC014435625E7FB2B2014DC6F68AEF171C8AA4C9D31175F655F00A8FB709B29237188B7350BCF51B1CDBF22D0C75B5ED9AA2DDA37E61FE08E05DA4AEA790A5F3263B69E9A6A41A38B66EA358DD9EAA6A44795DFB397E48';
wwv_flow_imp.g_varchar2_table(10) := '6C1F0CBE620642465DECD8061D519BB109957B7FC2E1FFBC87BAF2E276354605F9203ED40F6297954B0704F80BD001902AB1C03D51D160D9A3A73F7BFAFA63D8D5331031E97AB161AFEE5D9796A60614FDB212877F588566A3C1323A9A162586FBF3162A';
wwv_flow_imp.g_varchar2_table(11) := '13A0EB97605E652368A16B5D064CBC1409573E00CF9048B77A7B9ACAF290F9F9AB2848DBD9AEDFF1A1BE62A1ECEB566351B2B3FC0510E83689C5EDF1B27A3418DA0EAF82A36231ECF639F04F1AA524FE8AD75DBDEF671CFA62091AAA2A2C6DD176697FF1';
wwv_flow_imp.g_varchar2_table(12) := '35A09367BD17DD13804E6F8F09E5379B259042F43F7B2A126FFC073C7CFC34A11F2D759538B2E279E41FDADE6E4A941C1920995BE8B9E89A0015E2202B47CCF7CD27B8DE622F7FC46D4F2074F4A58AEB44C9FA1538BEF1DF523B49FF750322A7DCA6789B';
wwv_flow_imp.g_varchar2_table(13) := 'A51B3EC681AF9659DA211BA4E488005DAF0B744B003AD0CAAF6AB2284340AF708C7968317CE2921557C4C2EFDE42FA0F9FB46B67C855F720E6E27B156FBB216B2776BEF3348C0DF5525B74924CD321BD9A54E892001D953F34AE2F463EF83ABCC2621557';
wwv_flow_imp.g_varchar2_table(14) := '406A60EB9CABDACDC9E97781E1519830EFFF9CD2BEA1E028762C7D144D355596F61223F44902DD11806C7872CA1B2C828F4A4AC5D0FB16C143D8E638AB6C7F663AEA2ACADA351718168909CF7FEDAC2EC0549A87DD6F3C82DA32F9CC80BE0403C59A406F';
wwv_flow_imp.g_varchar2_table(15) := '96A6BA22009DECD282D73CE78F193C12A9335F81875FA0D3148F1A2A5CFB0ED2D7AC683F0512E70C3153EF766A3F9AAB4AB04790A0BA30576A97D60483A30275B530D60D01C829E570719D45F9E352C72065E64261BFE39A3DF152715895B5FE0B78F9F8';
wwv_flow_imp.g_varchar2_table(16) := '2069CAF588987CB35395DFDC18ED10ED5E7CBF85047460765674A06EB6487541007AE36714D75A6C7A42E2FB63F4E3CBE1E91FE412A5535BA3C6F2026C5F38C3B22608F5F7C200B13BA487A20B029C145B9D65AD763DBEA1E138FBC9F7E1151AA507F9DA';
wwv_flow_imp.g_varchar2_table(17) := '3DC6C69369D8BAF861B4B49A4FF4E9E507B221D27AD13C0168AFFF44EBA2D7C3CB0B67CF5A266CF553B42ED71E8DAF6CFB77D8BF7281E5599A0A69DD1F59D30420C795F4A25ACBBC3F65FA5F1077D11D762B07D9DD1BF233E11393E830E716BB1B77D18D';
wwv_flow_imp.g_varchar2_table(18) := '87FF3507F97B364AADD329714A8C7337089C3D6C4D13E068693D68E7874AE4A05118FEC81B76E35B77641BF67DF8221AAB651B9AE40BA623E1BAFFB6FB7935DC58B9FD1BC9923564D4257677A7A5A106DB5EBA130DAD26D55A379ED32C013AEEF79FF7DC';
wwv_flow_imp.g_varchar2_table(19) := '67F08EE86D9722B434D462F3ECABD16C683B29A607C7DCF53442C75E6E571DAEBE296FF55264AEFB42EAC6D819CF2264E454BBBB547D702376BD3347BA9FCE0752638240BB435A2C9A2400C5DD4913531FB3815BCAB43B1177D94CBBE55777782BB6BFF9';
wwv_flow_imp.g_varchar2_table(20) := 'C469F70F125F813E6EF01538F5CD1B38F2F3E796FE4F78F01504A64CB47BFC7463FADB8FA3305D36A5EE259CEEC997408B459304206FAEE21AD9AE3F383206639F5ED52DCBCEA69387F0DBC2FB4F93F7881B1E46C4F937A95A0FF2562F116FFE2F2D7D1C';
wwv_flow_imp.g_varchar2_table(21) := '3CF546F4BEFA916EF7D9549A8BCDF36EB13C37284A9BA7C49A2300BDFD0F15B62D7CC7DE331721A3ED9F039B257E7CF9A33871A82DFA429870871CF9C407F010736AB596BCAF5F47E67AD9C294CAE0A93708E57FB4C7DDCDFB6A113237C8E619C1C28780';
wwv_flow_imp.g_varchar2_table(22) := 'CCA7B55634478082EA26148A8B4A78DF0118F9E4473D9659E5AF9FA1286D1BC21206234A982B3BD35EA8BB9DCE15CA9AD5AAAC8E507EAAA3B9BA145BE6DD0853938CA716BF029A2200456A3B54586399FB4F786001025327755797DCEEFE93FF7E154737';
wwv_flow_imp.g_varchar2_table(23) := 'AE3EE3694F67032F5CB30CE96B3FD6EC57405304207F5EF2EB953ED9115118F7EC57F23686568BB0F1C8F97C810889B2C632C241175E873ED7FCD561236EA9ADC0A6B9D78A13623942C6607138A6A5302B9A22C01161EC56DFEAD73BEC9A9988BAF04E87';
wwv_flow_imp.g_varchar2_table(24) := '2982EA2A7282F29BC79CFBE542646DFA46FA2F9947909984568A6608408EEDE962F12B15F1D23FFFC5D5F00A91636F6AAE08E5CFFEE445646FFD51B137BF3566D28ED0F36247484C31C9647A789C63423EAA412E9A2180F5E25732757E60891AF055A40F';
wwv_flow_imp.g_varchar2_table(25) := '399FCEC7B1DFBE778AF29B1BC978EB311464EC96FE9B247683B4128857330448136F7F73D0DAD177FC1DBDC65FA988F2B9B4D24EDEFCC993AF964D34145EEB9059C59E95C27F42148A464D7EC45A289A200039BB6414D5C9F210DFE8C92F7D0B0A3FAEA9';
wwv_flow_imp.g_varchar2_table(26) := '228EB5B33FFD67BB698FB3949F70A4F0ED9B9EBA4273D3204D10C07AF727366534521F5CAA29DDA7C11CFF781E4E6CFBD932AE8153AE41DF3FFDCDA9E34C7BE3211465EE97DAD48AA9B426084051DDAA1A64ABCFA1D3FF8CE88BEE72AA6228DA9878F31F';
wwv_flow_imp.g_varchar2_table(27) := '5BF92C72766EB034E3CC37BFF5D88A7E781769DF7D28FDAAB708B118AD81108B9A20C0FEFC1A8BCDFF398F2D817FF2184575D26995AB48F969CCF599DBB1ED0DF9ABA315B749B72700C5F324677773B960D1CFDD327C739A32F7A0A1632B9E43CE8E756D';
wwv_flow_imp.g_varchar2_table(28) := 'D31E618DDAD785D6A82D8D75D8F8841C358FD6DC23E2DD7F3BD4ED09606DF71F9E902C19ACB97D693621EB83D9C8DDBBC5E5D39E8E58EE997F0B2A0BE4302A43E382E0EDE60176DD9E00D6FBFF03265E82FEB7CC756FFD57B1F213B0C73F9C8D13BB3649';
wwv_flow_imp.g_varchar2_table(29) := '180F1426D2416E9EB2D5ED09902D1CDECDD91A875FF700222FB8D57D09D089F20F987819FADFFCB4E2FBFCF68256F4E37B48FB56FECAF60DF373FB3C646E4F009AFF9BE3FA8F9F390F41C32FB457962EBBAF62EBD738B6EE335489886CFEA161C26C7B20';
wwv_flow_imp.g_varchar2_table(30) := '62469C8FF2CCDDC8D9253BA453493E6F1A126E7CCA65FDECACE1AA9D6BB0FBA397A43F458B8C94BD45EA25772E6E4F00727E31676F9C38EB7FE0973852B5F268AE2AC6FEB767A1222FDB661FD5A8FCD4E9FAC3BF63DB9B4F4AFDD782ABA4DB13E040419B';
wwv_flow_imp.g_varchar2_table(31) := 'FDFF79CFAC827754824DE572D50D0717CF44C9F10C9BCDAB55F9A9E386BC0C6C7959F6AFD6829798DB13C0FA0CE08297D7D8E5B555B2FE23919C42F80A88E2ACE41434EDD9BB6A91D4A687D8434C1A7F0122078F96FE5F92B10BC7776D16671972C2CEB1';
wwv_flow_imp.g_varchar2_table(32) := 'F73EE3944C943DC1C1549E8FCDCFDE28F5938266D189B03B176D11E0D59F6CFAEC167CFB26327EFCB49DCC865C7937622E99A1A81CF72DBC1BE5278F4A6D0C9E781122869EDBAEBDD283BF2173ABBCE71F3F642CCEBAFF7545FBD3531C28A2F4A639D74A';
wwv_flow_imp.g_varchar2_table(33) := '7DF316A15286C6BA777C55B727C0BE5335164599B2F8179B694C7F7FFA0A345A2586A0879D919C62C36393852199FC869F70FBACD302F39A442CA21D2B5F93DFAC21BD70CE3FBF5594003DC5813CC4363E7595D4372D1C86B93D01ACA74053966EB6A934';
wwv_flow_imp.g_varchar2_table(34) := 'AE4A4E61AD70B608E0E31F8049AFB439BBD81C540F6EE8290E4C801E80ADE423D68BE00BEC9802B92A3945C6DBC2A1245D7628E96C0A5472700BB2B6AE97FE1E336838863CF29692B0F5384947734521363D2312868B4269568789D360772E6EFF05B076';
wwv_flow_imp.g_varchar2_table(35) := '84993C7F353C836DBB4152B6C4AC759FCBC9294486466704BBAADEFB1376BDFF7CEBD4412C82C79D8FC8B3C64AB3A2E2F4ED38B1E737A72F827B828351E417FB75FEDDD238285CE2105E03B896FFE408430E3154D4BC0D9A239C598EFDB6D62658B16709';
wwv_flow_imp.g_varchar2_table(36) := '7F8687D4EBCFD094BD1FBFBDF690340EDE05B2294EE56FC82CA9435D934C8073FFF6267CFB8F50BED16EB690F399F0E1DDD2E6C3DBD5E391896761D87DAFC22328AC9B2D38EFF6FA431BB06DB96C6F15E8EB298265F136A8F3D0EFA4256B67987162FF3C';
wwv_flow_imp.g_varchar2_table(37) := '78D4C52EED4FC7C6AD438AD0DFFA8D9D82E0F8441CF9E953181BE56C95BD7AF747F2D45B113A6E9AAAFADE59672A36ADC2DE2FDF96FBAD81A0B96EBF06C81781708B5A03E1AACA1B4C4CEEA5886DADF17424E51F370549B73F27FC96BD54AFE85D7530FF';
wwv_flow_imp.g_varchar2_table(38) := 'EBC538BC5E3E448C0DF1459CB8DCB9B83D014AEB0CC8AD90A3C1254DBA1CFD6E1296932A281D03D5269E7331126F7D46053D3BB32E642E9F85BC433BA44AFA89C810E1E22BE0CEC5ED0950DB249C474AEA2519A8C521A6A3F24B7E0A378B84130A872E71';
wwv_flow_imp.g_varchar2_table(39) := '8622EE983D0DB5D5D552535A0893E8F604A070E8070BE48870A45F9317DA36875052518A7E7A1F69FFF997A589812E766374E4583BE60C182E5C22DDDC210C6E4F00123025C26B32CA6606AE3689DEF28FCB60A89309395804AAEDEDC040B58E54E69ED4';
wwv_flow_imp.g_varchar2_table(40) := '55BBF747EC78FF05E9512D6C814A2FCDD2799365CD71E3922B2242978AC8D054865E3D03D153EF76D9684AB67C85AC1F5688A47AD7682B3C8B4034F7F3F9C8FA55DECED582338C6608609D0B383A7928863EB6CC6504D06CC362576BE7B3D35153512E0D';
wwv_flow_imp.g_varchar2_table(41) := '714084BF088DE2DE0B60CD10C07A1D4091A127BFBCF6346B4BCD2AA6930666C83B2C1C61FE2CB5466BAD612242B4BBCFFF3543001A88F589F0983B9E44E878D964978B631028FE7E190E7D2F678AA1C8D014215A0B45136B001284757C509E063958354D';
wwv_flow_imp.g_varchar2_table(42) := '466C7FEE5AD455CA49C31344348888401F0737E29AEA34438076D32081A59A0DE35C23EA9EB75A9FB609DB96CDD6DCF4475353201A8CB55DD0E08BAE47EFE98FF55CEAFCA40581A3EFCCC2C983F2E9AF967203688E00D661127DFCFD71EE0BABE1E1E7DE';
wwv_flow_imp.g_varchar2_table(43) := 'D68AAEE6A1B12407BF3E7F9BA51B5ACA0EA33902D080ACE3040DBFE9AF889C749DAB75C8ADDBB74E96EDEBED81D418F7F600EB280CCDAC01CC03B35E0C0744C4E0ECE7DA32A7BBB526BAA0F314C86BF3DC3F5942CF6BC1F84DF304201743FA0AD0A2988A';
wwv_flow_imp.g_varchar2_table(44) := 'D226D2C6929328DBFD234A0EEF427D55191AAA2A60A86FCD56E960A5F50908924229068446204AB853468EBB0C5E117D1CDC4A5B752756CCC5F11D1BA45F68C1FDB133A034F705A04116D53421BFAA491AAFB7AF1FCE9DBB0A9EBD621CAA28D5FB7EC689';
wwv_flow_imp.g_varchar2_table(45) := '5F3E47C9B17487D6DBDDCA68CB37F1C21B1D1E13B5F1E82EFCBEA42DE136E506A61CC15A2B9A2400BDFC3384819C396B64C2A84948BE77814364579FB903699F2D4275519E43EA735425A1717D31F496BFC36FC02887547960C16D283D9523D5E5E7ED89';
wwv_flow_imp.g_varchar2_table(46) := '94186D6E2668920024B4EA46138E95CA7E0254263CB00081A993CE4839AA76AFC5EE0FE75B025C51655EDE5E888E4F4084B87C028241317D3CBC947953B6980C3034D48B29560DCAF273509C9F0B9351CE8D2615912173EC3D73113272EA198DB374DD07';
wwv_flow_imp.g_varchar2_table(47) := '38B0FA3D4B1D5AB0FBEF0A10CD1280067C42E40E2043392A8162413C61CE273427EA917214AFFB108756BF6B79D6D7CF0F7D07A620A26FB2620A6FABA34488D29C2CE41E4D87A149B686A57226EB1E5AD36C79E156CBC297A63D34FDD16AD134018C622E';
wwv_flow_imp.g_varchar2_table(48) := '44BE0222D79C54064C9A86FE37753FDE7EE1F7CB91FEFD4A8B0E8447C72279CC2497297E47656C3634216BF7AFA82C2DB6FC29F5F2DB117BF97DDDD35B61F27068C97D28CE3E223D470B5FDAF6D480235B9738689A0034EAAA06A3382196A32F50197DF7';
wwv_flow_imp.g_varchar2_table(49) := '6CF41A7399DD8AD151F9E3FB0D40DF6113EC7EDE9937E61EDC8EFC9CE33D26C1A9AF5FC791F56DDBC683440AA440374F81640B7FCD138000C8130E33743E40C553EC0A4D7CF25DF8C424DAC20685222F6E7A6B5E5CBA394E287FC2B0F1E25FC21E589545';
wwv_flow_imp.g_varchar2_table(50) := '44A210260B05D6241091AF63ED887C5DB37F1D76BEFB9C6554F1220F708C06F200DB12932E084067034744002D732AA580F0288C9BB51C5E7FB0355AB0661932D6CAE6BF547A2726A38F085BAE5EE537F7B4057969BB702A5B0EC54E25E5B2DB1037EDFE';
wwv_flow_imp.g_varchar2_table(51) := '2E75A1317B1FB62D7D1CCD46F925A185C417B614DFFC775D1080064BE113299F586B8472F48A4BC0A8C797779A50A3E3B4A78F50FEDE43C6D98BA92AEE3B95B613795624E86A4D602838861DAFDD8F26B1BB448562FE53D20B774F7F6AAF107443000284';
wwv_flow_imp.g_varchar2_table(52) := '42A81C155BA3661284F71B84110F2F85877F5BC2E7C2B5FF8BF4351F7578F3BB97F29B3B9F274860FD2548BDE22EC45E2A7B75513116E760D7EB0FA2BEBA52FA3F2D7649F969DF5F2F45570420A15AFB0FD3FFC3FA2661E4C36FC02330149D4F7BDC53F9';
wwv_flow_imp.g_varchar2_table(53) := 'BB2281793A642A2FC08E457F11A61BB28F2F297FB2F0F272F7BCBFDD25AEEE084000150B538953ADA612F4FF5EF1FD10376C220EFFF49905BFBE4983119F22E7F072F7929FB107B9C7E4AD4D2A2997DC8CBC3D1B515D9C6FF95D7F11E58D6CFDF5567449';
wwv_flow_imp.g_varchar2_table(54) := '80CE48602D782D29BF795C1D4960FE3DBDF9FB85E953F9A52F9F16E202F5F4ADD5713A44F504858662C87997F7B44A553F972662FAD4565559FA282C279014A1BF698FB590744D0002A28E16C665F596D362FA5D487804068E3E17DEFEDA70FE308A047C';
wwv_flow_imp.g_varchar2_table(55) := '5922034D75799945F6B4DB3350CCF9F5B4E0EDECEDA47B0210284DA616640B12D41B5A6D26C4EFBCBCBD3170C47884C6F553F55BDD56E72AF3B371F4C02E613427DB44490417614DC8B9452F5B9D7F841113A0151DDA1A3D25720D984F8C2DCA22BE06FD';
wwv_flow_imp.g_varchar2_table(56) := '534723202CCA96AEA9EAEFF515253891BEA7DD5B9FE6FB14CF5F0F27BCF60A8309D001A94A613B9453D1D06E4A44B744F74940EF81C3E01B146A2FB62EB9AFB1A612A7320FA024BFBDBF0219B6258AB7BED66D7BBA0B3A13A013C4C88A94EC87CCA6D4D6';
wwv_flow_imp.g_varchar2_table(57) := 'B7C425F447BC4863AAB6F581A1AE5A28FE4114E5C94E2CD68502D9C687F869DAAAB3BB8A6FBE9F09F007C89153CD49F135307B96752442649F01C2CF20B6A7D83BE4B9DAD27C14E766A3B813C50FF0F194B63829943997CE116002D8D00C298F6F6D9394';
wwv_flow_imp.g_varchar2_table(58) := '87CCEC686FFD889F708C891156A2A1D1BD111816ED143DAB2B2F428570C92C3A992D1C6164DF67EB42D31DCADF15A991F0854A82CA04B0135D2202E5232B14A7C846B16BD459A19DA388D8788408EFB3A05E11228283EDA4DD369B6F36A1A1BA02B595A5';
wwv_flow_imp.g_varchar2_table(59) := 'A82C29444571214C262B3748AB0AE84D4F0B5C77CFDB65131307DEC004E80198B43628AF3708679BCE15D1BACAD08848040485C05F5C7E81C1F00D08145BACBE224BBDB87CFDA55B4D4D0D3009AF2EA3A1510AA9D25857830671D55557A1BA351E7F57DD';
wwv_flow_imp.g_varchar2_table(60) := 'A49D1D3261080FF091B637B9740F012640F7F06A7737459FA05DA30A41065A2F98AD4CCFA04ABB1EA513DC503F527A6F4D24A9B06BD00ADDC4047010B0A4FC646E5DDD6894C8607DA876A64DD05B9EAC34E90D1F22149F16B75C1C830013C031389E560B';
wwv_flow_imp.g_varchar2_table(61) := '7D1DC809A7812E8398C78B9FB4BD6A1287CDCD822D2671999DF5BD44AA15CAB6423FBD84B6D32296949CCC14FCC5A577730585442455CB0450125DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883BA824024C0025D1E5BA558F0013';
wwv_flow_imp.g_varchar2_table(62) := '40F522E20E2A890013404974B96ED523C00450BD88B8834A22C00450125DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883BA824024C0025D1E5BA558F001340F522E20E2A890013404974B96ED523C00450BD88B8834A22C0045012';
wwv_flow_imp.g_varchar2_table(63) := '5DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883BA824024C0025D1E5BA558F001340F522E20E2A890013404974B96ED523C00450BD88B8834A22C00450125DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883B';
wwv_flow_imp.g_varchar2_table(64) := 'A824024C0025D1E5BA558F001340F522E20E2A890013404974B96ED523C00450BD88B8834A22C00450125DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883BA824024C0025D1E5BA558F001340F522E20E2A890013404974B96ED523';
wwv_flow_imp.g_varchar2_table(65) := 'C00450BD88B8834A22C00450125DAE5BF5083001542F22EEA092083001944497EB563D024C00D58B883BA824024C0025D1E5BA558F001340F522E20E2A890013404974B96ED523C00450BD88B8834A22F0FF137C13974A6CD3D90000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(66) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119813425392122807452)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000200049444154785EED7D097C94D5D5FE796726937D9BAC100221C82E8455D604D48ADAFEFBB5F6AF2D54AD5B55AC5F15B58A289009A2207E5AB7D6B575A1B6563E';
wwv_flow_imp.g_varchar2_table(2) := '15B7BAA10D612750D9F725400809D9F7CCFA7EE74E98250BC9CC64E6BECB9CFB730C99BCF79E739E7BEFF3DEF51C012811028440C8222084ACE56438214008001100350242208411200208E1CA27D3090122006A0384400823400410C2954FA613024400';
wwv_flow_imp.g_varchar2_table(3) := 'D40608811046800820842B9F4C27048800A80D1002218C00114008573E994E081001501B2004421801228010AE7C329D102002A03640088430024400215CF9643A214004406D8010086104880042B8F2C97442800880DA002110C20810018470E593E984';
wwv_flow_imp.g_varchar2_table(4) := '001100B50142208411200208E1CA27D3090122006A0384400823400410C2954FA613024400D40608811046800820842B9F4C27048800A80D1002218C00114008573E994E08842C01D4ACFC513C984D97825D335A04713480384A14845108487F6A16EA45';
wwv_flow_imp.g_varchar2_table(5) := '4004A81044F128807044D4C051B08B8700B487928D85F833F492EA09A06EC5CC44BB49371A34D8C1EDD8D1F12788C228AC6AEAE8A1D7DE7BB2B816FFB8033BC4763B88C57651BB2DD55858AE7688544B00EC0D6F3759FE4B00F13AACC4ABF113A5F6CA24';
wwv_flow_imp.g_varchar2_table(6) := 'FB028A801D4BDB892385AF04C1FE75E2DEF4ADC29A35B6804A904161AA22804AE38CFE5A41FB5351805F80089723BE6132C09854500702E7D08CD76CA2E635358D0C54410035C69903ED82E62934661E5692461DED8DAC902902169C427E2868EC2F1B96';
wwv_flow_imp.g_varchar2_table(7) := '6ED824531DBD564BD10450F9646E3FAD45780CDFF877A1C57AAFADA6070981402020C0BFF06DB3387169D10F81284E8A32144900B5C6D90976B03F8EB18DEF45D022A5008E6412021710C08D05F8084471699271C301A5A1A22802386F9C1DA3D188F7E1';
wwv_flow_imp.g_varchar2_table(8) := '36CEC3087482D2C0267D558D800DDBE5D389652D46E1F59D16A558AA1802A832CE1E81ABB15F22B0594A0197F40C3D047038F003AE42DD98BCA4E8A012AC570401541BF3A6E3709F75FE3825804A3A863C022DA20837271B8B3E923B12B227809A82BC1B';
wwv_flow_imp.g_varchar2_table(9) := '9155FF4A8B7C726F4AA45F2704706D1A1619F28B9E963332B22500ECF4426DC1AC27F198EE22390348BA11023D212088F06E2254DF2918F79BE588946C09A0AA206F252AB7508EA0914E84802F08E050E0D3247BD1758211D8E942592559124075C1ACDB';
wwv_flow_imp.g_varchar2_table(10) := 'F0720E1BF653220454810076B43FE174E0BFE5668CEC08A07AD9AC69B8A7BA1E81A263BC726B2DA44F9F10C069EDD3C9F9458FF6A99000679615019C7F226FA8D60E9BD1C6E400DB49C51102B2404010C4797884F87D5928834AC88600AA8D53E24008DF';
wwv_flow_imp.g_varchar2_table(11) := '813A0D950B38A407211004046AB51A9898B0A4E86410CAF6B94859108078D7C4B09A8CE82F50FBAB7CB680321002CA43609B41ACCE93C3CE802C08A06659EE7C51145E515E3D92C684807F0808029E11585AB4D2BFDC81CB2539015C18FAA38B26480D9C';
wwv_flow_imp.g_varchar2_table(12) := '59541221207B041A05D17EA9C1B8F1B4949A4A4F0005794604205F4A10483621201102FF4CCA2F9A2B916C87584909A0DC383D354CD0B1B73F9DF197B215906C091110E624E5AFFF562A05242580EA82BC57D1F0BBA5329EE412023240601B8E02A64AA5';
wwv_flow_imp.g_varchar2_table(13) := '876404804E3DB2EC82FD181AAE95CA78924B08C8020151332DC958B8550A5D2423007CFBB3C310BF92C268924908C80C01C9D602242100F4EC93AE15EC6552AF41C8AC11903AA18B801544CD601C0594F286401202A07D7FDED54CF214804001AE051879';
wwv_flow_imp.g_varchar2_table(14) := 'EB290901E0F0FF2B349405EBA0440810020E04C4C349F91B46F006833B01543E3D2356D3A6AD4243C98D37EFDA2679B24640236AC6271A0B77F154923B01542DCBBD551085B7781A49B20801252020C57561EE0440C37F253445D2511A0484DD7828681C';
wwv_flow_imp.g_varchar2_table(15) := '4FD95C098086FF3CAB9664291001BB4EB4A4C41BB7D4F0D29D2B01E0EAFF5CBCF5F70F5EC6911C4240690888A2785DB271C35A5E7A7325003AFACBAB5A498E82117801B70317F0D29F2B01A0A7DF4214388B9771248710501E027CD701B812008E00CAB1';
wwv_flow_imp.g_varchar2_table(16) := '42D2945729A43121C00D019B4DD424A41A0B9B7848E446008E88BE82BD9687512483105032023CCF037023806AE3ECA920D8B728B9624877428007023C3D077323804A63EE7C8D407EFF78342092A16C04781E08E2460038FF7F1EABE57E65570D694F08';
wwv_flow_imp.g_varchar2_table(17) := '041F01EC949F6014A19F075F124797607402904775920C7520C06F2780DB0800B700CB5118ED00A8A3859215C145A002CF02A40757447BE9DC0800470038B5A1440810025E2060460288C0E782DE678800BCA80D7A8410E08DC01E511376B9B1D01A6CB9';
wwv_flow_imp.g_varchar2_table(18) := '4400C14698CA2704FC4000438785F3081D4604E047E550164220D80898C4E6E8FEC69D2DC1964304106C84A97C42C00F048800FC008DB210026A418008402D35497610027E2060888A88111EFEA6D98FAC3E65A129804F70D1C384001F04ECCDB6B89455';
wwv_flow_imp.g_varchar2_table(19) := '9B1A832D8D0820D808CBA87C1177956DF83F3BFEB4E3FFECF86FB6D1ACC560F5F81F683502E07D0DFCC848E950554534C52719B73504DB7C6E554D0781825D95EEF2DB2C7668B5DAC1849F36FC982FFC6404E06D0AD769205C274004FED4E327123F517A';
wwv_flow_imp.g_varchar2_table(20) := '0AE3E82D7E7D7D4E08D727181E5D57DFD7727ACB4F04D01B420AF83BEBE88D261B7EACD06CB6838DBDE28390D82821064920365C0B31E13A880CD304410A15C9102002A076D02302669B08352D16C7C782FF9622B1294362A40E92A2C22082C820A05540';
wwv_flow_imp.g_varchar2_table(21) := '04105038D551181BC2D7B45AA0B685BDE96D3D1A15161109C9432E858481C3411F9F02BAA858D046B24F0C7EE240833F351131003A3D88CD75606F6B025B4B03D8F0A7B5A5113F0D6069AA83863387A1F2D85E3035F53C1D65046040323020193062A0D4';
wwv_flow_imp.g_varchar2_table(22) := '37048800FA869FEA72573699A1A2C972D1E1BD2E3C02FA8D9A04C9A3A642F4E01CD0A5660514035B5D39B49CDC03D507B742D9DE2D606EEEDE651D9B26A4C6E821259A88A02F154004D017F45494B7AAD9821DDF0CD66E86F99A303D644DBE125227CD81';
wwv_flow_imp.g_varchar2_table(23) := '884B2671B5DA746A1F54EDFA0E4A367F0996D6AEDBD54E226064400302DFAB8608C077CC5495A3AED50A671B4CDD767CC3C04B20EBF25F42EC98CB41D0B35BA3D2A6C6DDDF41E9C6B55071B86B5C4B0DAE13F68B0D87641C1150F21E012200EFB152D593';
wwv_flow_imp.g_varchar2_table(24) := '6C45FF4C9DA9DB397EC698299079C53C8818325196369B4B0FC2D9EFFF0EA7761476D18FAD110C4C88A09D032F6B8E08C04BA0D4F45819BEF12B719EDF39654DF911645C712384F5BB4411E65AABCEC0B9EFDF83E31BBFE8A2AF214A0719F111342DE8A5';
wwv_flow_imp.g_varchar2_table(25) := '26890014D1D403A324DBD22BA96985563CC0E399B2A6CE81CC6BEE00ADA17F6004712EC5DE500965DFBC05C78A3EEB20598F078CB20D9178D088CE115CAC4A8800383756A9C4B1033C25B5AD7834D7AD41445C22E4DCBC0822874F934AAD80CA6D3BFE1F';
wwv_flow_imp.g_varchar2_table(26) := 'D8B77A3934D554BACA658B8499382560E708287545800820045AC5391CF29FEF34E41F34693664DDF00808B867AFA6249A5BA1F4E3E7E0F8A6AF3A9895848B8303E2C3D5646A406C210208088CF22C841DE83955D706F5B8D2EF4CEC8D38F6FAFF86C4DC';
wwv_flow_imp.g_varchar2_table(27) := '5F71539AEDEDDB4DAD109636989BCCFAAD6B61D73F9E05CF7B09EC6871164E0968BBD05D0D4400DC9A245F41EC98FE499CEF37E1D0DF992262E361FC5D2B207CD0182ECA88AD8D70F4DD7C28DB5FEC9017DF7F108CBDEB695C6BC8E0229FED16EC7A7D11';
wwv_flow_imp.g_varchar2_table(28) := 'B4D455BBE4B17B05D94991A0231670604204C0A529F21562C5DE7FBCBA15D86D3D674ACC1C0263B0F369E2F9854C38F9EE52DCAAFB7707E3130664C3B847DEE10688BDB11A0EBCF10854951C71C9648B834392A240AFA5A3C44400DC9A221F41ECCD7FB4';
wwv_flow_imp.g_varchar2_table(29) := 'AAA543E7CFCC990ED937E523DB47F1518249B19AA1F0C12BBB9537FD91D7413F6024375D448B094AFEBE0C4EED2CEA4002C392A342FE3E011100B766C847107BF37B0EFBB3A75D0D03E72DE623BC93948D0F5F0556535B17D9B9F9EF833689CF34C053F8';
wwv_flow_imp.g_varchar2_table(30) := 'D90F9F81A3EB3F757D15A5D7C025381260EB22A19A88005454F3A76ADB801DED7526293B3FD3E1FC377F81039FBFDD01E18CB1D360E86F5749867A6712888BD0C2605C180CD54404A0929AAF683443397E9C69C88C6B21F3578F496E5DD577EFC0A9CD5F';
wwv_flow_imp.g_varchar2_table(31) := '80192FF20CC40B45FDFFDFBD208449BB1D7776CD4A38BAC17D7A3025260CFAC749AB93541545042015F20194DBD066C5157FF750BBDFC88930FC1E16259DD2C51038F2EA02283BB0D3F5E72C4304C44784DE6121220085F71176A9E770658B6BBF3BBE5F';
wwv_flow_imp.g_varchar2_table(32) := '268C7BF04DBE0B7E0AC45034B5C0EEE7EE84BA73A71DDAB37580E1295121776C980840818DD7A972E7157FE69D67DAA36F8186D33EBB82A173A86EAF390B5B56DC021693C9F13BDB1E1C9E121D520785880014DC8ACFE029BF1A74DBE54C936E7D1C6226';
wwv_flow_imp.g_varchar2_table(33) := '5CA3608BF8ABDEB4F30BD8F1CE4A97E004BC333028517ADF07BC902002E0857480E5B01B7D4770E8EF4C5993AF80AC9B0B7C9252BBE17D38FAD56AB0E20DA10139B990F9B3DF2BFA6E800DDFE8FE9C322C79E77128F1382330044F0AC6E0B1E150484400';
wwv_flow_imp.g_varchar2_table(34) := '0AAD6536EF779EF48B4A4882C98B56FBD4796B377E00BB3F78A983F5294346C3E8FB5F552422A56B9E86631B3E77F82B1C76C74A9F761AD891E5E2A77E0D2DF5750EDBD9F5E111A91C0F4D498838118084E0FB2B9AF9EF3B5BDF3E6F65E9B2BB9743D4E8';
wwv_flow_imp.g_varchar2_table(35) := '593E15B77DF14FA1A5A1BDC17BA6690FBE0CE159393E9525F5C3257F7F024AB67EE35263EAFDCFFBECCDA879CF3A287ED33D82EA17A777381D557B220250580DB373FE072A9A5DABFE8326E4C2E05B9FF2D98AC2FB72BBCD73D9DD4F2299E4F95C9E5419';
wwv_flow_imp.g_varchar2_table(36) := '4EBE5700A7B6AD7389EFCB28E6F89B7F80337BB639CA62BB02A3D2A2557F69880840AA96EBA75C76D8871DFA7136D2DC273E064D5CB2CFA51D7EF50138776047977C79CBFD2BCF67050290A173E74FCE1E09A3E7FF11848868BF4AB7D7964151BEFB9A74';
wwv_flow_imp.g_varchar2_table(37) := '281C102202F0ABA94893896DFBED2B6F72BDFD47CC990BE978B2CE9FC416CC8A9F9B0F6D1ED38009B72E86B80957FB531CF73C9D87FD8ECE8F879FFA7AE1E9EC47CFC2D1C2B52E821D8DA3003507202102E0DE74FD17E879DC57877BFE338C6B40888AF7';
wwv_flow_imp.g_varchar2_table(38) := 'BB4011A3F334FEF035D84180D86197E1059D017E97C53363A0DFFC9EBADB1BAB60C3E2EB5C249B16AB8774FCA835110128A466D9DB7F7F4593CBA7DF881FFF06D2AFB95321DA074ECD6E3B7F00DEFC9E1A967DFA121C59F781E32B166F60741A863753E9';
wwv_flow_imp.g_varchar2_table(39) := '8D412280C0B5CDA096548DC1394BD18FBF33E52EFB5FD026F073EE1154E3BC2CFCC4BB4BE0B4472C80A4ACE170E9BD2FF679D8DF593C1B05143D7E9DEBEB0CF425A8D6802344005E363EA91F3B56D5EA0AE2918E977D4684D8651F5E9DDF59CF9E6B0CD1';
wwv_flow_imp.g_varchar2_table(40) := '18AAFC9264755E19260290BA677B219F85E5665B7FCE34F18E7C88CDF9911739D5F108EFCECF50B3569C848D4FFEC60520DB120C53A10B31220005F411CFC53F76E167FA939FF974D24D01265E54C5602EF8F586CBBE3FDE0955270F391E630B816C4150';
wwv_flow_imp.g_varchar2_table(41) := '6D89084001357AF07C3398ADB80A88691086EF1A7C63BE02B4EEBB8A52BCF93DB5AE5EFF0FD8FBE19F1D5FB19B822353FD3B5FD077248257021140F0B00D48C92C9CD7418FE1FFE4F92B207AD4CC80942DE742A4EEFC0C1B5BFD79D8B0E4FFBB601A89D3';
wwv_flow_imp.g_varchar2_table(42) := '00B57912260290732F40DD3C57FFB5E11190FBCCB732D7B8EFEA751DF68FC2433E78C28FA757E30B66EC79EEB7505372D8F1DB808470488A5257F8712280BEB7D7A096E0E9E83363CC54187AE73341952775E17278F37B6250F1E56B70F0CBBF39BE4AC4';
wwv_flow_imp.g_varchar2_table(43) := '88C32CF4B89A121180CC6B735F7933D8D829204C63AEBF1792F2E6CA5C63FFD5935BE76796B41CD90EDB5F7EC861940E7701D8D1603525220019D726F3F777E8BCDBE9C7F4856F823E63B88C35F65F3539767E660D0B36BAFE0F735C86313F016A0A374E';
wwv_flow_imp.g_varchar2_table(44) := '04E07F9B0D7ACE7AF4F65BE2E1ED77F68B1B822E530A0172EDFC4E2C76ADBA05EA4A4F387E559BF7602200295ABC9732CF3799E15C43FBD55F03C6F61BFBF0DB5EE654CE6372EFFC0CC912F4395072C1E780DA1C851001C8B8AF782E00AA71FF5F099D9F';
wwv_flow_imp.g_varchar2_table(45) := '358F4A0C6EB2FF93371D2D456D4E438900644C00CCE92773FEC9D2E89FDD092957BA8FA6CA58ED2EAAD96ACBC18E7EF7C25207E14A5AFB69BA937F434F3EDBDD9E7C92078F68BFCFEFA7338F60E2D1BCF7DF50FCC6528708165E7C18C60F504B22029071';
wwv_flow_imp.g_varchar2_table(46) := '4DEE39E776FE31F1B6C5103B5E19CE3A18A496B2A37066DD6AF43AB41D2C2DEE7B0C69C3C7210744C0D9BD5B5DC8F7D5934FB0ABD0747A3F6CF99FF90E31CC55D8D87E31C116C9AD7C22006E50FB2E687759932BD394DF3F07914327FB5E8804394CA7F6';
wwv_flow_imp.g_varchar2_table(47) := '41F1CB0B3032B0FBFAF2C5D490F39BDFA973675761639000D4E21F800840820EE28D48B6F5BF174700CE34E3B177202C3DDB9BAC923EC3DEFC5B9FBB076CE6DE3B7F424616E42C784D92137EBE80245A4CB0FE21F7ED4B35DD0C2402F0A525707C9679FF';
wwv_flow_imp.g_varchar2_table(48) := 'DD8F87809C29F7C9B5A08D4DEA5503B1AD19CE7CF2029CDDBD09F451B13078F62FC030F397BDE60BD403C7FEB2104A776F7615973D311792868DC7DB8B7A683C73148E6EFA12ACE6F69D8DC8F84498F2C4A78112DD6B392D0737C1B12FDE84C6CA32481B';
wwv_flow_imp.g_varchar2_table(49) := '360E065FFF1068E3537BCDC71EF0F4A2CC620846E05A801A1211804C6BB1B30F80592B3FF7CAFFDFE15716C0B983EEA8B7CCBCB1BFFC3D1712B0E3E599228FCB3343A7FD0892464FEB807073D909D8FBAFF75CDF4DF9FDB338B5B92CE8B5D07AB418B6BD';
wwv_flow_imp.g_varchar2_table(50) := 'F460073931C96930F1D1BF81806B12BDA5CD0BE76088F356C763CC39087312A286440420D35AEC7C0A70D6AA2F7185BCE7C52773E921D8BCAAAB9F407D740C4C5FF165D02D6D3BBE13B6BEB0C02147A3D5C2E4DF3C0282B66BC8EDFD6BDF80C6AA72C773';
wwv_flow_imp.g_varchar2_table(51) := '39731F80C4E9BF08BA6E875EB91FCA0FFEA78B9CF1373F0AF1937FD2ABFCAD8FFD04DA9A1A1CCFA9E930101140AF552FCD039DAF01CF7A765DAF4E40D8E2DB9667EFE9A2B02E3C1C663EE3DE720B9645A6537B51FEEF1CC56BC3C260D24D0F210174BD3D';
wwv_flow_imp.g_varchar2_table(52) := '77F09337A0BEB29D00788D4E0EBC742F9C3FBAA78BE939F39080A6F54E40DB976024A50BA1C388007C6F41DC7CAA5617E4B5DF9C5178621780D84520679AB5EA2BAFF6C8772EBBC1F57675E61D92FB53C8BCE191A023626FAC46679A3F77C9B9F4EA5F41';
wwv_flow_imp.g_varchar2_table(53) := '4CE6B00E72AD4DB5B0E3FD975DDFF19A02D46EFE0876BFFFC70EBAE8F07AF5B4C5EF79B50EB0F9D16BC1DCD2BE289B8DC1436355123C94460041EF16FE091091C6D8390067CA7DE2236CA829BD1666AD38017BDE58040DE7CB1CCF0E189F0B436E5C82F3';
wwv_flow_imp.g_varchar2_table(54) := '5C3E4E2D0FBF8A6B1007DAD720C222A360E415D74154BFF6DD0B4B7D251CF9FE2368AC3EEFF83D22361EA63EF979AF3605EA81739FBD0C87BFFDA7A3B8F09838C8B9351FA2301E8237C973117028AE0144D11A8037B0B99EA111804F70B53FEC790E60C6';
wwv_flow_imp.g_varchar2_table(55) := 'E2D578922ECBEB522C4804DAC8580C1BD63B69785DA8170F9E7867319CDEB9BEC393510906D0E9C2A0A1AAA2C3F7136F5B82879BDC37EDBC28BECF8FB048C0563C9918D67FA8D765B13CEB17FED8F5BC9A6E04D208C0EB66C0FFC1BD1806CCDE7E1218A6';
wwv_flow_imp.g_varchar2_table(56) := '3EF46788183486BF123E483CB366151CDFF0995739465E7B13A45D7BB757CF4AFD50E783406A720D46042075EBEA41BEA733D009B72F85B87157C956DBD20FFF078EADFFC4A51F0BDA21DA6D5073FA58079DF5D1B19073E323107DE96CD9DAD25931D389';
wwv_flow_imp.g_varchar2_table(57) := 'FFC096E7EF777DCD8E02B323C16A48440032AEC59335ADD0D066736838FA67BFC5CB40B7C852DBB36B9F87A3DF7FE8EEFC8386C2A5BF7B01049C82984EEF83B6F29360B759213A7324E8078C90A50D3D29D550FC39FC67F5D38E47D4E615880840C6CDB1';
wwv_flow_imp.g_varchar2_table(58) := 'ACC104954D16878659D3AF85ACB98FC94EDBCE9DDF71BCF7BE3F3B3ABF5A92A75FC0185CFD1F82BB006A49440032AE494F8FC0061C528F7DB0FD4EBA5C52F9E77F8243DFBCEF52272E7D008C5FF0AA572716E56283377A1CC7E3CD672E1C6F4E8A0E8301';
wwv_flow_imp.g_varchar2_table(59) := '182B502D890840C635D96CB6018B09E84C72720956F1ED5B70F0B3BF76E8FCE3F0CDAF89499431A2FEA9B6FDB11F434B53A323B3DA02851201F8D726B8E4EA7C1868C6C237202C43FA3974E30F5FC3CEB796BB3B7F5A068CBBEF65D0C42673C185A790CE';
wwv_flow_imp.g_varchar2_table(60) := '3B006A3A03C0702402E0D99AFC907518BD02B55DF00A9433EF413CB6EA0E5BED477101C9E219B82336A51F0EFBF1CDAFC2CECFC06ADAF31DEC78D3E8C04D6DCE40880002D21D825BC8D97A135435B72F04668C9B09436F5F115C815E946E397B08F6AC7E';
wwv_flow_imp.g_varchar2_table(61) := '0A620DA930E4863F803631DD8B5CCA7CA4F48315706CE3BF1CCAAB6D01900840016DD2D335B80E2303CF5CF58D02B4568F8AC54BFE0B9AEB6B1D06A9CD2330118002DA69E77580690B5E84F0ECF10AD05CF92A5ACB8EC0C69577B80C51DBFC9F0840216D';
wwv_flow_imp.g_varchar2_table(62) := 'F468550BB498DBCF040FBDFC179071DD030AD15CD96A567DFD3AECFB62B5C3080D3A001A93AE1E67A0CE9AA1454005B451B606C0D602580AC369C08CA7F006DD05F7DA0A505FB12A7A0EFFD5B6FF4F04A0A066D9791A30F10E23C4E65CA9200B94A76AEB';
wwv_flow_imp.g_varchar2_table(63) := 'A1CDB0EDCF0B553DFCA7298082DAA5E7BD80D4E1E361D4BD2F2A487BE5A97AE2AF0BE1F4AE76E7A66118159879025663A22980426AB5AED50A2C549833CD781CDD84A7C9DF4DB842E0EDA0A6BDE62C1419DD61D8D363F590861F3526220085D42AF31074';
wwv_flow_imp.g_varchar2_table(64) := 'E07C33586DED1ECF064EBE12B26F362A447B65A9E9B9F7CF0EFFB0B7BF4E2D91403A5505118082DA6625460B2EBB102D98A99D5BF0011EC2E9A7200BE4AFAABDBE02362CBD1E18E1B2A4D6C53F674D1001C8BF4DBA34648D727F4533B04541C728E0B2AB';
wwv_flow_imp.g_varchar2_table(65) := '20FBA6F6A0953C92E9E42E604E3D2DCDF5606D69C04E123CFFAB3ABC4EAC8B8E8730FC84A30F81DE5CA207CA7ECFB73F2B534DDE7FBAC3880820502D875339E7711470CE63143063D15B10D6EF92A0496F39BC152A8ABFC648431B31D69F7B0D2268022F';
wwv_flow_imp.g_varchar2_table(66) := '5270C6D8E9903EF92ADCFD7087E80AB40ED6F32761E37277046643940E32137A0F1A12683D78964704C013ED00C8626F7FB616E0F415983EFA321871F7B30128B963112CC8C7918FFF842EBD8E06BCECBE14C8A2F98CF8F93D103336F0DBA0C7DE7C044A';
wwv_flow_imp.g_varchar2_table(67) := 'F76C71A9A726E79F17C39C08A02FAD51A2BC9E8E42980A13EFC80FD89B5134B7C189F70AE0CC0F1BBBB52E4C1F067A3C8CA4D387E3EDB8E039C663F1034D6DAD60B94884E19421A361E46DCBD1EB7160AE2037EFFD3714BFE19E4EA5C684E1D97FF538FE';
wwv_flow_imp.g_varchar2_table(68) := '200290A8B3064BEC11BC26DC7AE19AB01E7DDC4F5BF27E9FDD70D9EACA61EF6B0F43DDD9920E6AC71B9220396310C4A564802E222A5826755BAEDD62C6402765507DEE3454979FEBF00C8B2B3061FE2AD0678EEA934E62731D6C7FEA26686DAC7794C3FC';
wwv_flow_imp.g_varchar2_table(69) := 'FE8D4A8D568DE3CF9EC0A111409F9A8E749959E76724E04C83265D0E837FB3CC6F852CE78EC18E97EE07D385F877ACA0488C293868640EC4A60EF0BBDC40666CADAB8292FD3BA1E942882E67D993EF5A8E5E8667F92DEACCEA2570BCB8D0957FB02102E2';
wwv_flow_imp.g_varchar2_table(70) := '22BAC634F45B808C331201C8B8727A53AD14EF07545FF015C09E9D74CB228899E80E60D15B7EE7DF2DE5C761FBF3F782A5C51D8A2C2D330B068E99E26D115C9FAB3CB11F4A0EEDEB2073F2FC15103D6AA6CF7A34EFFC1C8ADF69F7F8CB525C8416061BD4';
wwv_flow_imp.g_varchar2_table(71) := 'E3F4B3374088007A4348E67FF7F418C4E6E55317FE05742983BCD6BABBCE3F64CC0430647A1F39C76B61017CB0B9A6020E1517A1BBF10B9153B06C5F49C05A791AB6AFBA1DCC17D619D891DFE12951A055E9A19FEEE027020860A394A2281645F870A57B';
wwv_flow_imp.g_varchar2_table(72) := '5720367D204C78F8AFBD461266BA5ACE1D85E217EF0373B33B06E1B00953213EDD7B0291C266A74C534335ECDF5A0836ABD5A5C6A4DF16E00EC115BDAA259A5B61D7B37740FDB9338E67D97AE6D0E428880CC37BBF219488005450D94D261B1CAF767B0F';
wwv_flow_imp.g_varchar2_table(73) := '4E1F330D46DCB9AA47CB2C670F43F14B0B5C116FD9C34AEAFC4EE3CC8DB5B06FCBF71D4860F29DCB207ACCE53DDA7FE8D507A1FC40B1EB99CC84703044750D65AE82E6D1A30944002AA9E18A463394E3C799064EBD06B27FFD78B7D6B1CEBF1DDFFC9656';
wwv_flow_imp.g_varchar2_table(74) := 'F722E28889D321362D539168989004F6FB400227FF5600A7B6AF73D9AAF6E3BE3D552A1180229B7CF74A97E06DC17ABC35E84C43AE9A07993FFD5D8787CDA5071D6F7ECFCE3F72D27488495566E7F71C09ECDFFA3D582D9ED30163970343A59FBC08C7BE';
wwv_flow_imp.g_varchar2_table(75) := '5BE3C2241623FD64AB28D28FAFCD9908C057C464FC3C3B9ACFFC0634E294C03D12B81A47028B1DBF9ACF1C80E2971FE8D0F9475D960BD1C9FD656C95F7AA999BEA7124B0AE0309784E07CE7CF82C1C5FBFD655209BEFB3797F10CF3379AFBC444F120148';
wwv_flow_imp.g_varchar2_table(76) := '047CB0C4B27B42CC87A033960093D31FCFD10F9C7D03EC7CFD31B0E0E93A675253E7778D0490040EE048C08227099D69C22D8F41FDC97D70BCE853D777A1B8E2DF5D9B230208564F94B05C2BB2005B14F42481CEEA8CBC2C0F6292D57995D8DCDC0007B6';
wwv_flow_imp.g_varchar2_table(77) := '7CD781043CED679DFF127CF3EBF167A827220095B6003612385EEDF626EC34930D7759E78F4E5267E777DA69C1EBCAFB37772581081CF6B3E8BE6A75F0E16B732602F01531053DCFD6044A6A5BA1A1CDBD26C0D41F387C34A40DB9544196F8AE6AFDB912';
wwv_flow_imp.g_varchar2_table(78) := '38B16F6787F500B6E09785A7FC42E89C4FAFC01101F40A91F21F286B304165537B7831678A898B87EC71D3203C265EF9067A5860B798E0D4DE6D50D5E9E250286FF5F554C14400AA6AFE1737868518634E453B3BF1C91A351652B246AA0205F6D63FB9FF';
wwv_flow_imp.g_varchar2_table(79) := '870E737F36E5614E3D122343E3728FAF154904E02B620A7E9E1D1B66DB849D170763E213203B670A8E061214699D0D7D18B0B77E75457907FDF53A01B271C81FAE0BADE3BDBE542211802F68A9E459CF88C39E260D1C360A5207A3FF3DAD728EC4D69C3E';
wwv_flow_imp.g_varchar2_table(80) := '823703F776380ACC6C62EEBC32E22368BEDF4B9B25025049A7F6D50C93D50EA7EBDA5C31079DF9B53A2D64640F87D4ACE120C835FC98DD0AD5A527E0ECB103E835A83D649A33B1C33D6CC81F6A977A7CAD7FE7F34400FE22A7927C352D1687AB71A7A761';
wwv_flow_imp.g_varchar2_table(81) := 'A7591AAD06D233074362BF811095982A0B6BDB1A6AA0AEFC34549C29715DE17511172EEDF78FD387E4859EBE540E11405FD053495E7666A0BA192F13A1C761A7B3514FD3C2F47A481D900589E90320322185ABD5ECA24F5DF919A8283D05268FCB4B2EA2';
wwv_flow_imp.g_varchar2_table(82) := 'C2E97D5A8C1E92A3F534DCF7A3668800FC004DAD591811542111545C840898DDFAF07048EE37000C3832888833E07A416057D745BB0DDAB0D3D79F2F83AAB2D3D0DAECF652E4893B0BD79D8A9D3E053B3FEDEBFBDF228900FCC74EB5391911B0A901FB38';
wwv_flow_imp.g_varchar2_table(83) := '1D8F5ECCD8C89818884D3040746C02E8A363D163301EB18D8C064D58CF1E7599B3F2B41F540000080B494441544F8BA905CCADCDE893A0115A1AEAA1B1BE169AF1674F89CDEDD9BD7DF6A18EDFF7264804D0770C555D025B2C644450DD62EDB24ED09BE1';
wwv_flow_imp.g_varchar2_table(84) := '6CB4A0C3E9830E1713057C655BF1900EBBA4636EF32DC00873D19584ABFAACD3D3965E6FA8FBF6772200DFF00AE9A7D9F9814693159ACC36C7A7BBF5824000C486F7317AADE3131BAE03767E9F5270102002080EAE21512A9B1EB45A6CC00E18B5E14881';
wwv_flow_imp.g_varchar2_table(85) := '8D16D8C7DB9081EC941E7BA3B34F047ED8EDBCC8302D6DE1716C3D44001CC10E15516C0DC18E2CE0F889FF63FF6649833D9E757A36A467FFA639BCF42D820840FA3A200D0801C910B037DBE252566D6A0CB602DC3C2F5417E4052F6675B051A2F20901CE';
wwv_flow_imp.g_varchar2_table(86) := '0818A222628487BFE97EAF3580BA100104104C2A8A1008140226B139BABF71A7DB3D74A00AEE540E11409080A5620981BE204004D017F4282F21A070041A444DE46063A16F0733FCB09946007E804659088160236010ABC305E37EB70BE5200924020812';
wwv_flow_imp.g_varchar2_table(87) := 'B0542C21D017040CE2155AC168744758ED4B613DE425020812B0542C21E02F02B85D664ACE2F8AF037BF2FF93812406E09C67A5546785B5F10A46709818023209E4ACADF9015F062BB29901B015415E415A2B0593C8C221984809211C011C07A1C01CCE6';
wwv_flow_imp.g_varchar2_table(88) := '61034F02781B85DDC2C328924108281C817F26E517CDE561033702C093804634289F87512483105032023802781A47008FF2B0811B015419736F1504E12D1E46910C4240C908088238CFB074C3FB3C6CE04600B5C6D9E3EC82FD071E46910C4240C90888';
wwv_flow_imp.g_varchar2_table(89) := 'A26664B2B1F0100F1BB8118068044D8D90D7844645F2308C6410020A45A0C52016C50A4608FA1900860F370260C2701D602BFE98A2D08A21B509011E086CC305C0A93C04494100CFA3D0FB7919477208010522F01A12C07C5E7A731D01D42CCB9D2B8AC2';
wwv_flow_imp.g_varchar2_table(90) := '3F781947720801A521800B80F7E002E0ABBCF4E64A0095C619FD3582B694F7D4831798248710E82302A25DB40D48316E2AEB63395E67E74A00B40EE075BDD083218980B03B297FFD389EA67327809A65798FA22FCA153C8D245984801210E07900C88907';
wwv_flow_imp.g_varchar2_table(91) := '7702A832CE1E2108F6834AA810D29110E08A80A89996642C643B65DC127702689F06CCDA0520E670B392041102F247E0B441D40C118C85569EAA4A4300CB72178028FC91A7A1248B1090390205B8FD67E4ADA32404D0609C9D6C11EC25686C346F83491E';
wwv_flow_imp.g_varchar2_table(92) := '21204304AC82681F62306E3CCD5B374908A07D1A90F736FEA0EBC1BC6B9CE4C90E01EC849F18F28B7E2E8562921140EDB299397651B3138DD64A6138C92404E48200F683CB538C858552E8231901D028408AEA26993244E06B9CFB5F23955E9212409D71';
wwv_flow_imp.g_varchar2_table(93) := '66B64DD01CA1518054D54F72A5460063B18E352C2DDA2B951E9212008D02A4AA76922B0704A49CFB3BED979C00AA965F9121D8AC7B5021831C2A857420043821D06CD55873D2966C3ECE495EB762242700A655D53274172692BB30291B02C9E68B00EF5B';
wwv_flow_imp.g_varchar2_table(94) := '7F17B34E160470612AF039FEFC09DF6A2069848024086CC285BF999248EE24543604405301393407D2810302B218FACB660DC01370BC237015DE11F802BF0BE35011248210E08D805D04E1FAE4FCF51FF3162CFB29805341F41A341FBD06BD221780480F';
wwv_flow_imp.g_varchar2_table(95) := '4220600808E203494B3730B778B249B29902741C09E491EF40D9341152244008BC80F3FE05012A2B60C5C89200D03182506DCC7B0A0F4970898E123034A92042A07B043E4657DFD7F372F5ED4B25C89200DCD301F21EE44B65D2B3F243801DF669139B7F';
wwv_flow_imp.g_varchar2_table(96) := 'DDDFB8B3457EDA718E0BE00F003505B3EE1141FC13E6953559F9631BE551370202082B12F3D73F8E0D1707B5F24C8AE854381D9883DDFF5D84304D9E30925684400704CCD8B16EC72BBEEFC91D1745100003B1E2C92BD37436CBBBC8A573E40E2AE917D2';
wwv_flow_imp.g_varchar2_table(97) := '08ECC5EBBDB7E3F5DE1D4A40413104C0C0742C0E16CCBA49007115FE9AAE048049C79041C082CD73A5E16CD313C2EB3BF1DFCA488A220027A4D5C6297100FA7C1084FBF03B9D32A0262D558A002E51091FDA4058946A2C3CA6341B1549004E90CF1B675F';
wwv_flow_imp.g_varchar2_table(98) := 'A205F17110C49B880894D6F494AFAF2888855A101E4C5C5AA4D8B0F78A26002202E57722A55980D35013EAFCBF1A417C0563F86D529AFE9DF5550501388DAA5D7EC520BBCD7A1BAE16CCC5F9D870A5570EE92F2B044EE04ED42B6176CDDB71C6C22A5969';
wwv_flow_imp.g_varchar2_table(99) := 'D607655445009E38D41A678FB3816D9E2008D7E2F763FA8011650D5D04CE6018BBCFB00DADC5987DDFAA1106D512806765953F33275AD7DC320D04CD140DC0641CC64DC4BF0F506385924D7D42A01973A3A76A719D46D47E96682CC40856EA4E214100DD';
wwv_flow_imp.g_varchar2_table(100) := '55E1B9A77253C22D9A4976419CA80161A2288AD9F81CDB5A4C557795937588000BBF7D1E1BFF29ACF7DD784577B74D6BDD2DB57B2E296A266409A027B045E36C5D096E2F8643A34607B11A2DB46A3410A911C2AD82460CC7410425B92260174C76D1A413';
wwv_flow_imp.g_varchar2_table(101) := 'EDD06AB7B7E8C4E494687BA9B6D13EA0A1C106FB47D984356B6C72D55D0ABD8800A4409D64120232418008402615416A1002522040042005EA249310900902440032A90852831090020122002950279984804C102002904945901A84801408100148813A';
wwv_flow_imp.g_varchar2_table(102) := 'C9240464820011804C2A82D42004A4408008400AD44926212013048800645211A40621200502440052A04E3209019920400420938A2035080129102002900275924908C804012200995404A94108488100118014A8934C424026081001C8A422480D4240';
wwv_flow_imp.g_varchar2_table(103) := '0A048800A4409D64120232418008402615416A1002522040042005EA249310900902440032A90852831090020122002950279984804C102002904945901A84801408100148813AC9240464820011804C2A82D42004A4408008400AD4492621201304FE0F';
wwv_flow_imp.g_varchar2_table(104) := '363608D3E4E8337C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119813425691959807452)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA0000200049444154785EED9D079C5D55B5FFD7CC2DD37B4B269349AF248140E8A1284DFE8A282AA83C94224508011E0A280F0514101E48090F1115459F8AC2B3A22828';
wwv_flow_imp.g_varchar2_table(2) := '350448808424A4F76492C9F45E6E99F9EF3D3148C9BD67DF7EEF39DFFDF95C2766D62EEBBB76D8BF7BCEDE6B67B5DE72FCB05020000108400002107014812C0480A3E28DB310800004200081110208002602042000010840C0810410000E0C3A2E430002';
wwv_flow_imp.g_varchar2_table(3) := '108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C01084000021040003007200001084000020E2480007060D071190210800004208000600E400002108000041C480001E0C0A0';
wwv_flow_imp.g_varchar2_table(4) := 'E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB1080000420000104007300021080000420E04002080007061D97210001084000020800E600042000010840C08104';
wwv_flow_imp.g_varchar2_table(5) := '10000E0C3A2E430002108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C01084000021040003007200001084000020E2480007060D071190210800004208000600E4000021080';
wwv_flow_imp.g_varchar2_table(6) := '00041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB1080000420000104007300021080000420E04002080007061D97210001084000020800E600';
wwv_flow_imp.g_varchar2_table(7) := '042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C01084000021040003007200001084000020E2480007060D07119021080000420';
wwv_flow_imp.g_varchar2_table(8) := '8000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB1080000420000104007300021080000420E04002080007061D972100';
wwv_flow_imp.g_varchar2_table(9) := '01084000020800E600042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C01084000021040003007200001084000020E2480007060';
wwv_flow_imp.g_varchar2_table(10) := 'D071190210800004208000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB1080000420000104007300021080000420E040';
wwv_flow_imp.g_varchar2_table(11) := '02080007061D97210001084000020800E600042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C0108400002104000300720000108';
wwv_flow_imp.g_varchar2_table(12) := '4000020E2480007060D071190210800004208000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB10800004200001040073';
wwv_flow_imp.g_varchar2_table(13) := '00021080000420E04002080007061D97210001084000020800E600042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C860004200001082000980310800004200001071240003830E8B80C0108400002';
wwv_flow_imp.g_varchar2_table(14) := '1040003007200001084000020E2480007060D071190210800004208000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C7650840000210800002803900010840000210702001048003838ECB10';
wwv_flow_imp.g_varchar2_table(15) := '80000420000104007300021080000420E04002080007061D97210001084000020800E600042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C8600042000010820009803108000042000010712400038';
wwv_flow_imp.g_varchar2_table(16) := '30E8B80C01084000021040003007200001084000020E2480007060D071190210800004208000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C765084000021080000280390001084000021070';
wwv_flow_imp.g_varchar2_table(17) := '2001048003838ECB1080000420000104007300021080000420E04002080007061D97210001084000020800E600042000010840C0810410000E0C3A2E430002108000041000CC0108400002108080030920001C18745C8600042000010820009803108000';
wwv_flow_imp.g_varchar2_table(18) := '04200001071240003830E8B80C01084000021040003007200001084000020E2480007060D071190210800004208000600E400002108000041C480001E0C0A0E3320420000108400001C01C8000042000010838900002C08141C765084000021080000280';
wwv_flow_imp.g_varchar2_table(19) := '3900010840000210702001048003838ECB108000042000010400730002194E2030342CFEA0FE0C89FE73507DF4CFFD1FF5D732343CAC3EEFFFA9FE6AA464658964ABFFC9FEC04F57B6885BFDE5FE8FEB5F7FF6A85F785CFBFE9E020108642E010440E6C6';
wwv_flow_imp.g_varchar2_table(20) := '8E913B84805EA8070343D2AF3E3EF519542BBA5EF07DEAA72FF0AF553C052CB470D04220E75F82C0AB7EE6B8B325577F3C4A3D50200081B426800048EBF03038A711D0DFDA7B0683D2E70FEE5BF4FDFB16FB4C2C5E77D63E31A03EF95E9714AA8F7E8A40';
wwv_flow_imp.g_varchar2_table(21) := '810004D2830002203DE2C0281C4AC0A716F79EC180F4FA82D2A33EA9FC469F8C10E8270485392E295062A048FDE4354232A8D307040E4C0001C0CC80401209E8C7F9DD6AC1EF52DFF2F54FBB2FF85668B52028CE7549718E7B4414E8D70A140840203904';
wwv_flow_imp.g_varchar2_table(22) := '1000C9E14C2F0E26A0BFE5770D04F62DFC0341079308EFBA5EFCF55381925CB712056E9E0E30532090600208800403A6796712D0EFED3BFAFDD2A116FE3E9FDA864F8998807E55A0C540599E9BBD0311D3A30204AC092000AC1961010123027A035F477F';
wwv_flow_imp.g_varchar2_table(23) := '40DAD5C29F2E8BBEFE56BDFF989F7EBAFEDE3FEBA37FBAE823827A9BE1C84FF587F7FD394DF61F6A31A0858016046C24349A8E1841C0920002C012110610084FA0537DCB6FEBF3AB47FCC19105345965FF31BCFC824229AAA997FCCA319257592B391563';
wwv_flow_imp.g_varchar2_table(24) := 'C45D5A2359DE3CC97279D4617E8FFAE916517F1EF9FFFAA7FA3B717BF70D35E093E1805F24E89761F5D9F733A0FE7EDFFF1FF6F549A063AF0CB434C840EB6EE9533FBBF7EE94BEDE9E91130AC9F6598B808A7CCFC866420A0420103D010440F4ECA8E960';
wwv_flow_imp.g_varchar2_table(25) := '02FA885EAB5AF4DBD537FE40128EE9E9237525D5B552563F4D0AC74C166F659DB8CB6AC5A53E5979452989C4705F9704DB774B407D069528E869D8281D3BD64B67F39EA46C6ED44CCAF33C5251E061BF404A66009D663A010440A64790F1279580DECCD7';
wwv_flow_imp.g_varchar2_table(26) := 'D2BBEFDB7EA28A4EA2533A6AAC948C9D26057553246FCC5471D74C96ACFCE2447519D77687FB3A25D0B849FA1B3648EFAE0DD2B173BD7434368CE4354844D14F424AD5EB819A42EF4822220A04206046000160C6092B0713D08FB8F5B77DBDF0276211CB';
wwv_flow_imp.g_varchar2_table(27) := '530B7ECDB443A46CCAA15230E160718D9E2A5939F9B6223E3CA85E23EC5E2FBD5B5648DB8637A569D32A1950498EE25DB41018558410883757DAB3270104803DE38A577120A073EA37AB45BFB9D72743715CAB72D579F7AAF1D3A56CEAA1523469AEB8C7';
wwv_flow_imp.g_varchar2_table(28) := 'CE1A795FEFA4A205817FC72AE9D9FCD6882068D9BE490982F83D55D1B9054617E59092D849930A5F23268000881819159C40A0B9C7278DEA13AF85BFB4B444EA0E3F598AA71D219EFA3992955BE8048CC63E0EF7778B7FFB0AE958FBBAEC7CE39FD2DDDD';
wwv_flow_imp.g_varchar2_table(29) := '635C379C2142202E1869C4A6041000360D2C6E4547406FEADBD3351897FCFB05F9795277C8715271E8C9E29D74B8DA7DAF76E2532C090CFB07C5B7E975697EF3596958B944FA077C9675AC0C10025684F8BD130920009C18757CFE1001BDA9AFA17330E6';
wwv_flow_imp.g_varchar2_table(30) := '77FC5E8F4BEA661D21D5879D2A39D38EB1DDBBFC644F1DFD64A07FEDCB236260D7DAB7C41FE346422D046A8B73D82C98EC40D25F5A124000A465581854B208E84D7DBBD537FE5853F456D7D649FD899F95823927ABDDFA25C91ABEA3FA19EA6993DEB79F';
wwv_flow_imp.g_varchar2_table(31) := '95EDCFFF565A9A9A62F2BD3CDF2DA39510E032A298305239C3092000323C800C3F3A023A6B9F7ED4DFD6A712DE4459F4F1B3BA2933A5EEA473D5B7FDF922D91C418B126564D55492A281775E90EDCFFE421A776C893A11918E9F3E315055E0E512A2C822';
wwv_flow_imp.g_varchar2_table(32) := '80B54D0820006C1248DC3027D0A437F875ABEC775166EDD3A968C7CF9D2FA34FFCBCB8C7CD31EF18CBF8125001F46D7E43F6BCF06BD9BE7A59D41B36DDAE2CA92BC91949334C8180930820009C146D87FBDAAFCE9D6F6F1F88FA3D7F4E8E47261D73BA54';
wwv_flow_imp.g_varchar2_table(33) := 'CC3F5B5C55E31C4E33BDDC0FECDE20CD2F3D2E5B973D27BE288F13EA1C025A0870D7407AC596D1248E000220716C69394D08E8F3FCFA3D7FB48FFB3DEA1BE2B4933E2BE5277C51B28B2AD3C42B86712002432A2D71F3733F970D2FFF5574DC232D7AF11F';
wwv_flow_imp.g_varchar2_table(34) := '57963B722D31050276278000B07B841DEE9FBE9D6F97DADD1FCD62A05FE94F39EA14A939F522C92E1FE3709299E57EB071B3343CFD43D9BAE2D5A85EF5F03420B3E2CD68A3238000888E1BB5D29C80FEF2B7A363403A950088B4E8CD61F533E7CAD83316';
wwv_flow_imp.g_varchar2_table(35) := '88BB766AA4D5B14F2302FEEDAB64FB9F1649C3A6B5110B01BD3760BC7A1A50A03237522060470208003B46D5E13EE9A37D5BDAFAA3BA91AE76FC2419FFC92BC43B5925EEA1D88380DA2C38B0E605D9F2D423D2D4B02B629FAA0A3D236985B530A440C04E';
wwv_flow_imp.g_varchar2_table(36) := '041000768A26BE8C5CD8A313FA445A4ACACA65C6595748EEC1A7465A15FB0C22D0BBF40FB2F68F3F949E08530DEB5B06F5D3007D5323050276218000B04B241DEE47B48FFCF57BFE191FF9B4549E7AB164E515399CA233DC1FEA6E913DEAB5C0A6A5CF45';
wwv_flow_imp.g_varchar2_table(37) := 'FC5AA0B658E50D50D70E532060070208003B44D1E13E44FBC8BF66EC38997CCE0DEA729E590E27E84CF707372E95758FDF29EDCD916515D4E984C795E5893A30408140461340006474F8187CD74040B6A9B3FD9124F5C9CDF5CACC8F9F2FC5C77E5EC4ED';
wwv_flow_imp.g_varchar2_table(38) := '01A28309E86B89DBFEF1A8ACFDC71312089ADFF9AC8F864EAAC8E34E0107CF1D3BB88E00B043141DEA837ED7AFDFF99B16BD896BECF48365FC39DF54C7FA6A4DAB61E700023A91D096C76F97DDDB361B7B3B725AA43457F491410A04329100022013A3E6';
wwv_flow_imp.g_varchar2_table(39) := 'F031EB33FD5BDB06A4D7173426A18F74CD3DF7EB5230EF0CE33A183A8F40E70B3F97B7FFF0A388D20A571678648CCA20488140A6114000645AC41C3E5E5F705836B7F64574C4AF724CBDCCB8F076D2F73A7CEE98BAEFDFF98EACFCC98DD2DDD66A5A45F4';
wwv_flow_imp.g_varchar2_table(40) := 'BE80F16A5F0047058D91619806041000691004866046A04F7DE3DFACCEF70F99BFAA95E9279E29359F582059DE5CB34EB082802230DCD725DB1EFFAE6C5799044D4B9E3A223851ED0BE08A615362D8A59A000220D511A07F23023AA5AFCEEC67BAD9CF9B';
wwv_flow_imp.g_varchar2_table(41) := '5F2073CFFB86E41D748251FB4E310A763649E7CAE7A569F51269DBB171C4EDF2FAA9523367BE94CC3E51B28BB9EBE0BD73A173C993B2E237F71BCF3BFDAA69329B039DF2CF29E3FD4400647C08EDEF40B3BABE777797CFD8D1AA893364C6F9B74A76E928';
wwv_flow_imp.g_varchar2_table(42) := 'E33A7637D4BBDDB7FEFA36D9F1D64B615D1DAFEE3E18F7B9EB25CBC33BEDFDA0FC0DEB65D54FBF255D4DBB8DA689CE2D31A93C4FF249216CC40BA3D4114000A48E3D3D1B1068ECF6C95EF5312D53D5AD7DB5675E656AEE08BB61FFA0BC7DEF25D2B16B8B';
wwv_flow_imp.g_varchar2_table(43) := '91BF151367CAECAB7F6864EB14A31101A54E09EC78F3452397F55E80894A041472ABA0112F8C52430001901AEEF46A4040DFE2D71AC131BF43CEBE524AE79F6DD0B2B34C76A8856BCB92A723727AEA299F97DA33AE88A88E138CF7FCE90159AF72069814';
wwv_flow_imp.g_varchar2_table(44) := '2D0274FAE0E25C8E099AF0C226F9041000C9674E8F060476AAF7FD6D7D6637F9B9DC6E39ECA25B24FFA0E30D5A769649A07987BCF2DDFF50EFB0D5F58811946C9520E9D85B9E1457517904B59C61DAF1D2AF64C5933F3072568B80714A049420028C7861';
wwv_flow_imp.g_varchar2_table(45) := '945C020880E4F2A6370302DB55663FBDE9CFA4E41614C8A197DD25DE71734CCC1D6713C937D60FC29975D6655279E2B98E6366E270CFCA7FCAF29F7E478241B35C14F54A04949130C8042D364924800048226CBAB226A077FAB71B7EF32FAEA89483BF7A';
wwv_flow_imp.g_varchar2_table(46) := 'AFB8AAC75B37EC508BB7EFF882B4EF89FC0A5C8DAB7AEA213273C1228792B376DBB7E52D59FEC80DD2DFD76F6DAC2C2694F33AC008144649238000481A6A3AB22210496ADFEAB11364FAA5DFE7D89A05D457BE7E8AF80707ACD01FF0F73985C572F4ED7F';
wwv_flow_imp.g_varchar2_table(47) := '89AAAE532A051A37CBCA1FFCA774B5B759BACCC6404B44182499000220C9C0E9EEC0049AD451BF3D8647FDEA671C2C132EBC4BB272F2C1694160C9F5A789AFBF2F2A4EDEFC4239E67B916D1E8CAAA30CAF34A4722BAC7DF86A696ED869E98916013A4F00';
wwv_flow_imp.g_varchar2_table(48) := '47042D516190040208802440A68BF0045AFBFCB2AB63D008D3D8997365A25EFCC9EC67C46BE5DD17A8843F9B8C6C3F68543961BACCBAE64751D5755AA5A1EE1659F3D055D2D2B0C3D2759D27606A653E37095A92C220D104100089264CFB6109E8CD7E7A';
wwv_flow_imp.g_varchar2_table(49) := 'D39F4919A36EF29B7CF13D24A93181F52F9BBD4FFF50D63EFDBF11D4F8B7E9CC332E94EA532E88AAAE132B0D75B5C8EA87164ADB6EEB2701AEEC2C995A952F5E953990028154114000A48A3CFD4ACF6050B6A8DCFE2627D46AD5E23F85C53FE259136C6B';
wwv_flow_imp.g_varchar2_table(50) := '90C5B77E4186D50D8A91946C974B8EBDF9B7E22AA98EA49AE36D877ADA65D5A22BD4C64B6B11E0752B11A09E0468314081402A08200052419D3E65303024EB9BFB8C16FF31330F93295FB94BC4ED855C1404763D71A76C7AF9A9886A4E3DF96CA9FDE495';
wwv_flow_imp.g_varchar2_table(51) := '11D5C1781F81E1DE0E59B96881B4EFDE6E89445F20344589006E11B44485410208200012009526C313D057FA6E508B7FD0E05BE9E899F364EA45DFE3B17F0C936AD837202BEFBB44DA776D356AA56AF22C3968A159A21BA3061D68A49F046811D0B1C77A';
wwv_flow_imp.g_varchar2_table(52) := '4F40914A17AC6F11A44020D9041000C926EEF0FEF4A2BFA1A54F7C01EB47D2A3D537FFA917DDC9E21F8739333CD02B5B7EFD5DD9B97C71D8D6C61F759A8CFBECD7D8641907E62322E0412502765B8B808A028FD4957001531CB0D3440404100011C0C234';
wwv_flow_imp.g_varchar2_table(53) := '76025B5AFBA55BBDFBB72A65751364CE550F73D4CF0A5484BF0FB6374AE7AAE765EFAA57D513818D92ED724B69DD64A99E739C94CE3E41B28B2A226C11F37004863AF6CAB2FFBE48FABB3B2D41E994C1A5640BB4E48441FC082000E2C792962C08985EEB';
wwv_flow_imp.g_varchar2_table(54) := '9B575422F3AEFFA9B88AAB600A818C27E0DBF98EBC7EEF020906C2A7B7D6FB00A6A99301396E754E900281241040002401325D88F4F982B2497DFBB7DAF1EFF6B8E5886B1E126FDD0CB041C036047AD5DD01CB7E7CB3A53FFA64C0B4AA02E16080252A0C';
wwv_flow_imp.g_varchar2_table(55) := 'E240000110078834119E807EEFBFB6C96CD3DFE117DF2205B33F0A5208D88E40F35F1F9277FEF66B4BBF4AD46B007D8D30050289268000483461DA97CDEA9BBF3EF36F55667FFC3CA938ED122B337E0F81CC24A01E7F6DF9F1B5B263D532CBF1D795E648';
wwv_flow_imp.g_varchar2_table(56) := '45BEC7D20E0308C4420001100B3DEA5A1230CDF13FE190A365DC05770A07A22D916290C1048607FB64CDFD974AF3AE6D61BD603F4006073983868E00C8A06065DA50FBFD4323E7FDAD4ACDB88932FD4AB5E3DFCB59682B56FC3EF3090C7534CA5BF77C45';
wwv_flow_imp.g_varchar2_table(57) := '7A3AC39F0CC8554982F4A6400A04124500019028B20E6F57E7F859D7D42B7E95F4275CC9CDCB93C3F58EFFF2310E2786FB4E2230B871A9BCF6E0B5969B62AB0A3D525B4C7E0027CD8D64FA8A0048266D07F5B5B36340DAFAAC8F3D1D71E14D9277F0A90E';
wwv_flow_imp.g_varchar2_table(58) := '2283AB10D847A0E52F0FCAEABFFFC612C7E4CA3C29F0BA2CED308040A40410009112C3DE9240E74040B6B559DFF037EDD85365F4393759B68701046C49201890750F5C228D5B378675CFAD6E0C9CAE5E057069902D67414A9D4200A414BFFD3A373DF257';
wwv_flow_imp.g_varchar2_table(59) := '595B27075DF3939467FA1BF60F4AA079BB64E7178BAB7494FD028247694D60A86DB72CBDF37C19E8EF0F3BCEF27CB78C2DE568605A073303078700C8C0A0A5F3904D1EFDEB6F32C7DCF0A8B8464D4E992BED6FFE5D762D794A5A37AE78770C2EAF57CAC7';
wwv_flow_imp.g_varchar2_table(60) := '4E91FAE3CF92A2B9BC964859701CD671FFDBCFCAD2476FB5DC0F3045BD0AC8E75580C3664762DD45002496AFA35AD7D9FE36B684FF26A381CCFBE2355278D45929611350DFB856FFE236E9D8BC326CFFB5B38E9029E7DD2C5979452919279D3A8B40E313';
wwv_flow_imp.g_varchar2_table(61) := 'B7CBBA979F0EEBB44E113CBD9A5301CE9A1989F516019058BE8E6A7DADDAF56F75CBDFA4C3E6CBD82FDF91122EC1AE66597AF7A532D8D16CD47FD58469EA35C58F8D6C31CA1C02C3BD1DB2F5C97BA44589C0BE8E36A99E325B267F6A8178C7CE4C9913FA';
wwv_flow_imp.g_varchar2_table(62) := 'CAE635F75E28CD0D3BC38EA1A6C82BA3D487028178104000C483226D4863B74FF6AA4FB852505828F36EFCB5641594A684D8F23BBF2C9D0D5B22EA7BC6699F979A8F5F11511D8CD39780DEEFF1D6A285230BFF07CB91577E5FF2A61C9EB2C1FBD5A5414B';
wwv_flow_imp.g_varchar2_table(63) := 'EEBECCF255807E0AC08541290B93AD3A4600D82A9CA971C6A7CEFAEB33FF5617FD1CFEA5EBA460DE19291964C7B2A764C52F54A6C1088BCB9B23F3BFF37B5E0544C82D1DCD032D3BE48DFB16C84057FB0187377AE63C9976D9BD291D7AE3EFEE92752FFC';
wwv_flow_imp.g_varchar2_table(64) := '39BC9056FB00F4D1400A0462258000889520F5656B5BBF740D84CFF55F374D3D66BDE2A194D17AF3F62F4A7763F8C7ABA10677E897BF29C5879D9EB2B1D371EC04F437FF37EED78B7F47C8C674FADD13EE7F39F6CE626861B8BF5BDEBCED0BD2D3153E4B';
wwv_flow_imp.g_varchar2_table(65) := 'E0F8F25C29C975C7D0135521A032AFB7DE727CF8546D5082401802FA921F7DD94FB832B2EBFF9B8F89AB7A424A580EFBFAE5C5AF45BFAB7FD2FC8FCBD8B36F48C9D8E9347602FB16FF2B437EF3DFDF833B374FE6DFF54CEC1DC6D842DFF2BFC9D29FDE16';
wwv_flow_imp.g_varchar2_table(66) := 'B6158FCA0D30A3BA80AB336264EDF4EA0800A7CF8018FCD78FFCD7355B6FFC9B75FA17A5F2F4AFC6D0536C55038D9B64F1ED1744DD48FD21C7C8C40B237F7D107587548C1B01ABC7FEEFEDA8FEF08FCAC4F36E895BDFB134B4E5E12B65C79A7F1F513D50';
wwv_flow_imp.g_varchar2_table(67) := '5B7A33A0DE14488140B4041000D192A39E98DCF4575A552307DFF04BC9F2A42E9F79B0B3595EBE29FA6387E3D4C230214D1606A69D39814816FFDCE23239E2BA9F48767195790709B40CB6EE9425DF39577462AD5045BFB2D04F01F4D3000A04A2218000';
wwv_flow_imp.g_varchar2_table(68) := '88861A7546FEC3F4CEDEF01BFFF47FA08EFAEAF72467FAB12927F6CA75A78A7FC03A47C181063AEB93174AE5C9D13F4148B9F30E1C80E9637F8D462FFEF3AE5A24EEAA716945AAED991FC9CAA77E1E764C652A43603D1902D32A6E993418044026452B8D';
wwv_flow_imp.g_varchar2_table(69) := 'C6BAA76B503D01F0871DD14475E6BF3E4567FE3F38B0ADBFF8B66C5FF65C54048F55590B3DB553A2AA4BA5E41308346D9365F75D21833D5D969D8F2CFE573F28EECA7A4BDB641BE834D52BEFFC0F696F6A0CDB35C702931D19FBF48700B04F2C93E689C9';
wwv_flow_imp.g_varchar2_table(70) := 'B77F972B5B8EF9AF5F8AABA22E69E30AD7917FD71A79E5AE4B231E4BDDDCE364F205B7475C8F0AA921E06F521BFEEEBBDC70F12F558BFF436AF11F9B9AC11AF4DAB7F21FB2F4C7E1F72594E4B9657C19F70418E0C4E4030410004C89880934740E4A4B6F';
wwv_flow_imp.g_varchar2_table(71) := 'F86FFFD34E3843467FE6BA88DB4E64855DBFBA4536BDF60FE32EDC3939232226BBA4C6B80E86A9231068DAAABEF92F305CFCD3F3B1FF81E8ADB9FBCBD2B4237C022B9E02A46EDE6572CF08804C8E5E0AC61E50EFFED758BCFBCFCE16997FEBEFD586AACA';
wwv_flow_imp.g_varchar2_table(72) := '148C307C975B7FB850B6BFB3DC725CFA0AD6C32EBC59F2667FD4D21683D4138864F1CF292C96C3F563FF141D4B8D94D6C0BA57E4B587C21F432DCE75C98472920345CAD6E9F60800A7CF8008FDDFA5BEFDB75A7CFB9FA9D2E756A771FADC8EE71F93754F';
wwv_flow_imp.g_varchar2_table(73) := '3D2A03FEA1037A3FBA7E9C4CFCDC75E2193727423A98A782807FEF969173FE26EFFCF5E23FEFAA07C553939A9C14D1F259F7C0A5D2B8694DD8EAD3AAF225D7A3D43705028604100086A03013A39DFF5E954CE5E89B9F94ACFCE2B44636D4BE477AD435AC';
wwv_flow_imp.g_varchar2_table(74) := '9D5B564ABFBAC5501FA5CA2B2A91B2833F2A39338E4BEBB133B87F138868C39F8AEF610B1765DCE2AFBDF56D794B96DC7755D8D097AABD00E3D80BC03F8F080820002280E574537DD98FBEF4275C997DE6455271D2F94E4785FF492010C9863FAF7EEC9F';
wwv_flow_imp.g_varchar2_table(75) := '81DFFCDF8B71E3C35749C39AB74292252F4012269DCDBA4000D82CA089724767FDD3E7FEC32526C92D2C92236FFE9D6479D9919CA838D0EE3E024E5BFC477C6E5827AFDC7971D8295055E891DAE2D425DD627E661601044066C52B65A36DEBF3CBCE8EC1';
wwv_flow_imp.g_varchar2_table(76) := 'B0FD1FFCB9055276DC39291B231D3B8340441BFED463FF7919FAD8FF40D1DCFAB31B65FB5B2F850CB4DE807B504DA1A8EB372810B0248000B044848126B0AEA94F060307DE34A77FEFF67AE5D8DBFE2C5939F9008340C20838F19BFF7B61FA76BC234BEE';
wwv_flow_imp.g_varchar2_table(77) := 'BE2C2CDF3125395259E049580C68D83E041000F68965C23C31B9F16FEA89674AED595F4BD8186818024E5FFCF7CF8035F75D2C4D5BD6859C105EF7BE9B022910B0228000B022C4EF655BFB8074F607C292987FC34FC45D3B155A1048080116FF7F63ED59';
wwv_flow_imp.g_varchar2_table(78) := 'F1ACBCF1E8AD61394FAAC893C21C57426241A3F6218000B04F2C13E28949DADFAAFA4972D0D77E9690FE6914022CFE1F9803434159FAAD33A5AFAB33E4E4203D30FF6E4C0820004C2839D8C6E4CADF79E7DF2885877ECCC194703D510458FC0F4CB6F5B9';
wwv_flow_imp.g_varchar2_table(79) := 'C764D51F7E1C12BB3E1238B3A640DCEC064CD4D4B445BB08005B8431714EE8B4BFFE60E83BC9F30A0BE5C85BFFA47601B2E92871517066CB112DFE05852ABDEF431999E4279AE80EF776C8E29B3E25C1403064F5DA62AF54157AA3699E3A0E2180007048';
wwv_flow_imp.g_varchar2_table(80) := 'A0A371D364F3DF8C53CF919A4F2C88A679EA402024814817FF79573E205E875DD9DCF0DBDB65E3E2A74332643320FFC0AC082000AC0839F8F73B3A06A4BD2FF4E63FFD9871FEB77F23AEF25A0753C2F5781360F137231A68DC248B6FBF20ACF154753F40';
wwv_flow_imp.g_varchar2_table(81) := '1EF703980175A01502C0814137757955638F0C853EFA2FB55367CBD4050F9936871D042C09F8F76C9437165D6D74B18FB7A0480E5F78BF78464FB16CD7AE06EB175D267B36BE13D23D3203DA35F2F1F10B01101F8EB66BA56B20205BDB06C2FA75E817AF';
wwv_flow_imp.g_varchar2_table(82) := '91E2A3CEB29DEF38941A02FEC6CDB2ECBE05E2EBEBB11C8057BDF377E263FF0F82E97AF5FFE4AD5FDF179297BEE44A6F06A440E040041000CC8B0312D8AECEFE778439FB9FAD76171F77DB9F24ABA01482108899008B7F7408877ADAE5E51B3F29FAAE8E';
wwv_flow_imp.g_varchar2_table(83) := '5085D700D1B175422D048013A21CA18FFA3F26FAF17FB8FFA88C9D3957265DF640932FC8270000200049444154842D630E810F1360F18F6D566CFAC195B26BED8A908DF01A2036BE76AE8D00B07374A3F4AD533DFEDF66F1F87FDE7F5C2B85477C2ACA1E';
wwv_flow_imp.g_varchar2_table(84) := 'A806817D0458FC639F09DDAFFF5EDEFCE5F74336C46B80D819DBB50504805D231B835F56BBFF5DEABDE2FCEFF2F83F06C45465F18FDB1CD0AF015EB9E94C0986C9D7314D9D06C8E53440DC98DBA52104805D2219473F5637F68A4E011CAAD4CF9A27132F';
wwv_flow_imp.g_varchar2_table(85) := 'B9378E3DD294D308F0CD3FBE11DFFCF042D9B96679C84647ABA440D524058A2F741BB48600B04110E3E942BF7F483634F7856DF2B0F3BE2E45877F329EDDD2968308B0F8C73FD85DAFFF41DEFAE53D211B2EF0BA6472655EFC3BA6C58C268000C8E8F0C5';
wwv_flow_imp.g_varchar2_table(86) := '7FF07BBB7DD2A83EA14A96CAFE73DCF7FE22D97945F1EF9C166D4F80C53F3121DE771AE04CB57137F493BB59A30AC4C5DD0089094086B68A00C8D0C0256AD81B5BFAA4CF173AFBCFE8E987C8B4CB1725AA7BDAB53101FFEE8DB26CD155E2EBEDB6F4D293';
wwv_flow_imp.g_varchar2_table(87) := '972F472C7C403C63A659DA62B08FC0BA455F95C68DAB43E21857962BA5796E7041E05D02080026C3BB0402EABDFF3BEAFD7FB832E7CC8BA4FCA4F3A10681880844F2CD7FDFE2AF32FC8D991E511F4E376E7DF627B2EACF3F0B89A13CDF2D634B739D8E09';
wwv_flow_imp.g_varchar2_table(88) := 'FFDF430001C0747897804EFCA31300852BC75EA3BE954D980B3508181360F137461593E1E0A665F2EA03FF19B20D8E03C684D796951100B60C6B744E35740E4A4BAF3FF47F403C6E39F6CEBFABAB7FB962343AC2CEABC5E29FBC980F0FF6C92BDF385D02';
wwv_flow_imp.g_varchar2_table(89) := '81D0AFF0745A602D042810D0041000CC837709E8DDFFFA1440A842F63F264B240458FC23A1151FDB8DFF73B934AC5F15B231F601C487B35D5A4100D8259231FAA1370FAFDC13FE1296833F7591947DF4FC187BA2BA1308B0F8A726CAADCFFC48563DF5F3';
wwv_flow_imp.g_varchar2_table(90) := '909D571678644C494E6A0647AF6947000190762149CD807A0683B2B9B53F6CE7BCFF4F4D6C32AD5716FFD445CC6A1F40BE375BA654E6A76E80F49C5604100069158ED40DA6A9C7277BBA429FFFF7F0FE3F75C1C9A09E59FC531B2CBD0F60F10DA7ABB4C0';
wwv_flow_imp.g_varchar2_table(91) := '077E95A7D278C8EC5185A27F52208000600E8C10D8DAD62F5D03C19034EAD4ED7F93B9FD8FD91286008B7F7A4C8FF52A1FC09E30F900A6A88C80F92A332005020800E6C00881357B7BC51FE63291591FFF92549E7631B420704002FE8675B2ECC16B5492';
wwv_flow_imp.g_varchar2_table(92) := '9FF0FB4874657DCEFFF005F78A77EC4C68268040E3530FCABA677E13B265BD0740EF05A0400001C01C18B9F8475F0014AE1C71F1CD923FFB246841E043047C0DEB65D9030BC5DF1FFE0E89FD8B3F497E123B897ADE7A5ADEF8D9ED213BA9508B7F1D1B01';
wwv_flow_imp.g_varchar2_table(93) := '131B840C691D019021814AE4307B7D41D9D4127E03E07137FE4C5C359312390CDACE40022CFEE91734FFAEB5F2CA5D97841C181B01D32F66A91A11022055E4D3A85F9DFC4727010A55723C2E39FAAE7F88B8C8239E46614BF9502259FCDD39B972E4D58B';
wwv_flow_imp.g_varchar2_table(94) := '48EF9B84A80DFBFAE595EB4F934088577A7A03E09CD1854918095DA43B010440BA472809E3DBD931206D7D81903DD5D44F90195F0B7DB6380943A48B342310E9E27FF895F74A4EFDAC34F3C2BEC379FBB673A47DEFEE900ECE501901BD6404B4EF0430F4';
wwv_flow_imp.g_varchar2_table(95) := '0C016008CACE66561900271F7592D47DF1663B23C0B70808B0F847002B45A65B7F7A836C5FFE4AC8DE2794E74A712E4FF452149EB4E916019036A148DD40F40640BD11305499F3E98BA5FC235F4ADD00E9396D08B0F8A74D28C20EA4F96F8FC83B7FFD45';
wwv_flow_imp.g_varchar2_table(96) := '481B4E0264461C133D4A0440A209A779FB2629808FBCEC76C99B795C9A7BC2F0124D80C53FD184E3D77ECF8A67E58D476F0DD9202981E3C73A935B42006472F4E230F6417573D8BAA6F0C7B78EFBF6AFC45531360EBDD144A61260F1CFACC805F66C94C5';
wwv_flow_imp.g_varchar2_table(97) := '775C1872D0C5B92E99509E97594E31DAB8134000C41D696635D8351050590007420E5AEF183EE1FE9733CB2946FB2102C3FE41E9DBB8549A57BC20DD7B77C8607787F477B5894B9DEC28AA1E2379A555925F55274563A749E1AC1324CBF3EF0B637CEA58';
wwv_flow_imp.g_varchar2_table(98) := 'D9B245D7A873FEE17345E84EF56E7F9DE427671C1BFE52390D87077AE5C5EB3E167208B99E6C9956C59D00A98C513AF48D00488728A4700C5647000BCBCA65DE2D7F4CE108E93A1602433D6DB2FBEF8FCAB6D7FE2E81C1D042EFBD7DE84C7D138EFD848C';
wwv_flow_imp.g_varchar2_table(99) := '3EE93CF1B7ED1EC9F06792E46764F1BFE21EC9193F27962153374E04967CFD64F10D1EF8786F76F6BE3B0128CE2680007076FC47CEFF6B1110AA544F982633AFF9B1C32965A6FBCDFF7C4CD63DFD0B09FA42E77808E799CB9B23D9EA0901DFFC3333FE6F';
wwv_flow_imp.g_varchar2_table(100) := 'DFFE05696FDC1572F03A1700970265666CE3356A0440BC4866683BDBDA07A4B33F740E8071738F9509177C2F43BD73E6B087FBBB65CD235F97E6CDEF2405C0C8377FCEF9278575249D6C786881EC5EF776C82AD3ABF325C7AD1E05501C4B0001E0D8D0EF';
wwv_flow_imp.g_varchar2_table(101) := '737C736BBFF40C86BE0570DA09EA51F067AE7738A5CC713FD0B253DEFEC1B5D2DDBC272983E69D7F523047D5C98EFFFD966C59FA7CC8BA93D5AD8005DC0A18155BBB544200D8259251FAB1BEB94F06FC07BE3B5C3739FB8CF3A5E2948BA26C9D6AC92410';
wwv_flow_imp.g_varchar2_table(102) := 'EC6A91B7BE7FA9F4B63525A55BBEF9270573D49D34FEE90159F78F2742D61FAF920195900C286ABE76A88800B0431463F0E11D750D70A89CE1BAD943CFBD568A8FFC540C3D503519048607FB64D5A22BA46DC7A66474272EAF57F4AD7EA4F74D0AEEA83A';
wwv_flow_imp.g_varchar2_table(103) := '697BE17F65E5EF7E18B26E5D698E54E4732D7054706D52090160934046EBC6CA3D3DA29301852A475E769B4A02747CB4CD532F49041AFE78BF6CFCE79349E94D2FFE875F7E8FE44E3C2429FDD1497404BADFFCABBCF9D81D212B8F2EF64A75A137BAC6A9';
wwv_flow_imp.g_varchar2_table(104) := '650B0208005B84317A27DEDEDD13B6F231D73E24DE71B3A3EF20C29AC1CE26E95CF9BC34AD5EA2BECD6E1CA95D5E3F556AE6CC9792D9274A767165842DDADF3CD8BE475EFEF6D9468EE617974AF5E459523676B2784AAB47EAF8DAF74AC7AE4DB277D36A';
wwv_flow_imp.g_varchar2_table(105) := '951BA0D3B29D9CC26239EAE62725CB4B22990FC24AA7F9DBB7EE5559FAD07521E35955E891DAE27FE77BB00C3C06B6238000B05D482373C84A00CCBFE997E2AEAA8FACD128AC75E292ADBFB94376BCF962D8DAE38E3C59C67FEE7AB5F8E446D18B3DAB6C';
wwv_flow_imp.g_varchar2_table(106) := 'FBD5ADEA9CFFB3619DF3E4E4C8F48F7C4A0AC64C919067BFD4A3A09E5D1B64DD0B7F543903C21F1D9CF3B905527EDC39F6041A8557E9387F0777BC23AFDE7D59486FCAF2DD525FCABFA328C26D9B2A0800DB84323A47AC04C0F137FF46B2CB6BA36BDCB0';
wwv_flow_imp.g_varchar2_table(107) := '96CE52F7F6BD97A86FA15B8C6A544C9C29B3AF0EFD6ED3A8119B18E977FF2F7EFDB4B0DEE41495C8ACD3CF154F718591D7BECE1659F997FF95405F7748FBC2CA1A99F7ADE4BC72301A740A8DD275FEFA1BD6C92B775E1C920CE980533869D2A46B04409A';
wwv_flow_imp.g_varchar2_table(108) := '042255C3B01400B73E29D9A535091DDE8EC76F972D4B9E8EA88FA9A77C5E6ACFB822A23A7634EE5DFD822C7BE4A6B0AECD3CE92C299E705044EE776C5E29EB9E0F9F01F2E8AF3DAC360146D66E4483C810E3749DBF81C64DB2F8F60B428BB81C974CAAE0';
wwv_flow_imp.g_varchar2_table(109) := '354E864CB3840C13019010AC99D3A8A500F8EEEF13FADE3DB077ABBC72FB97C26E443C104D9DC16CFE77FF20AE22B36FB5991391C846BAFDD7DF95ADAFFE3DF47FE4552AE7599FFEAA88CEFD1A49191A523BC87F207D1D6D216BCD3CE342A93E25F40213';
wwv_flow_imp.g_varchar2_table(110) := '4977996A9BCEF337D0B455167F37F435DE79EA3E80A9DC0790A9532F2EE34600C40563E6366225004EB8E3CF9255509A3007F7A8B3CAEBC39C550ED7F1ACB32E93CA13CF4DD8D832A1E177EEBF5465FC5B1372A8D38E3945CA661E15952BCDAB5F95CDAF';
wwv_flow_imp.g_varchar2_table(111) := 'FD2364DD31738E96295FB92BAAB6ED52299DE76FB075A7BC7CCB1743A2F6BAB3644675815D42811F511040004401CD4E552C05C09D7F95ACBCA284B9FCF61D2A5FF99ED0F9CAC3755C3DF51099B96051C2C696090DBFF99DB3C366FD3BEC339788A72CBA';
wwv_flow_imp.g_varchar2_table(112) := '573803AD8DB2E2F73F0A89A1A8BA560EFBAFDF6402A6848D319DE7EF90BAC8E9A59B436FD4746567C9AC510880844D8E0C6818019001414AE4102D05C0DDCF24F4B8D72B5F3F45FC86B7D47D90833E8E76F4ED7F49249EB46F7BB1E217EE96BF23BF7CDD';
wwv_flow_imp.g_varchar2_table(113) := 'FBAEF68DC4A121B53973E963A1BFE17B72F3E4D8BB9E89A449DBD9A6F3FC1DEADC2B2FDDF4D990CCF56B347D2110C5B9041000CE8DFD88E75602E0C4EF3FA72E794F5CB6B025377C4C7C7DD6F7CC1F284CDEFC4239E67B916D1EB45BB85FFEDAC9616FFB';
wwv_flow_imp.g_varchar2_table(114) := '8B4500E8DDEDAF871300EADAE063EF0CBDFFC06EAC0FE44F3ACFDFA1EE5679E9C6F0593C0FAE450038619E86F21101E0E4E82BDFAD32019EF8C0CB0925B4F2EE0BA24E5F5B3961BACCBA26F423EA840E3C4D1A5F76F3592AF77F73C8D11CF6D94BDF4DF8';
wwv_flow_imp.g_varchar2_table(115) := '13E99007DB1A65F9EF42F32DADAD97436EF865A4CDDACA3E9DE7EF706F87BCF88D33780260AB19175F671000F1E59971ADAD6AEC11B5E13B6449B400D8FBF40F65EDD3FF1B15B799675CA076A15F18555DBB545AFBE002D9BB21F495AF538F3E45CA0F8A';
wwv_flow_imp.g_varchar2_table(116) := '6E13608BDA04B829CC26C051330E95E95FBDDF2E28A3F2239DE7EF504FBBBCF4CD4F86F44B1F0C993D8A27005105DE26951000360964B46EAC6EEC95E050E8CB004E48F026C060EB2E597CEB17A23B0678CB93E24A708E8268B926ABDE6E758A62439853';
wwv_flow_imp.g_varchar2_table(117) := '14856515EA18A0CA0617C531C0B7FFEF07D2DF19FA18E0948F7E46C67CEAEA64B99A96FDA4F3FC6513605A4E99B41A140220ADC291FCC158DD06787C121201ED7AE24ED9F4F25311393FF5E4B3A5F693574654C78EC6BDAB9E93653FFA7658D7669CF809';
wwv_flow_imp.g_varchar2_table(118) := '29993C3722F7DB37BE25EB5F0CBFC1F2C82BEF91BC294744D4AE1D8DD375FE06766F90C5DF0B7D95B7C79525336B380560C73969EA1302C094944DEDD6A8EB80FDC1D04F00E6FFD7CFC55D3D21A1DE0FFB0664E57D9748FBAEAD46FD54A9CB6C0E5AF803';
wwv_flow_imp.g_varchar2_table(119) := '235BBB1BE98D7AAF7CF3E36173F7BB3D1E9973E645E22DAD32C2E16BDB232BFEF4980C05FC21ED3D6C007C974DBACE5FDF96B764C97D57858C2179008CFE39D8DA080160EBF05A3BB7AEA94F0603A137011CA3D2BD7A9390EE555FA6B24565B5DBB97C71';
wwv_flow_imp.g_varchar2_table(120) := 'D8418F3FEA3419F7D9AF7119D07B2835FCE13ED9F8DCFF85E5E6C9C9FDD7654093C35F06D4B051D63DF70709F8C25F0634E52367C9984F5F633DC11C62918EF37760DD2BF2DA4337848C40AECA04388D4C800E99A107761301E0E8F08B6C6AE9975E5F30';
wwv_flow_imp.g_varchar2_table(121) := '2485643FE60DB6374AE7AAE765EFAA57D513818D92ED724B69DD64A99E739C94CE3E41B21D9EFAF740811AEEEB9225B79C2DFE7EEBE394FA3AE09AC90749E9D8291FB80E78B3BA0E7895D175C06E75B3E031DF7E42B20BCB1CFEAFE7C3EEA7D3FCED5DF1';
wwv_flow_imp.g_varchar2_table(122) := '7759F6E87743C6A8C0EB92C995DC05E0E4498C007072F495EF5BDBFAA56B20B40038FC92EF48C1AC131D4E29BDDD1FD8B242963D74ADCA07E04BCA40677EE27CA93E35F4BBE5A40C824E2C0974BEF60759FEAB7B42DA95E4B9657C19D7015B82B4B10102';
wwv_flow_imp.g_varchar2_table(123) := 'C0C6C135716D47C780B4F705429ACE3DEF062939FCE3264D61930202833B56CBD207AE4ADAE2AF732F1CB4E0C1A8B30BA6009163BB6C7DFE17B2EAF78F84F4BFA2C0237525398EE583E3EA6D60EB2DC787DE010621DB13D8DD3528CD3DA1377BCDFEDC95';
wwv_flow_imp.g_varchar2_table(124) := '5271DCD9B6E790890EEAC57FD9A26BC2A6028EA75F4555A3E5D06B7F2C59F9C5F16C96B6124460EF5F1F96B57F0B9DA8A9BAD023A38B110009C29F11CD220032224C891B64538F4FF674857E743CFDF4F364D4E997246E00B41C1581C1ED6AF17F30798B';
wwv_flow_imp.g_varchar2_table(125) := '7F69ED38997DE9DDE22A1B15D578A9947C023B7F7B876C5EFCD7901D8F51DFFE2BD553008A730920009C1BFB11CF5BFBFCB2AB23F48EEF71479E2C13CE0D7FCEDCE10893EE7EB2BFF9D74C5719FF2EBA43B272F293EE2B1D464F60C30F16CAEEB5CB4336';
wwv_flow_imp.g_varchar2_table(126) := '50AFDEFF97A97D0014E71240003837F6239E770D04D446C0819014C8B79F5E13C4B76B9D2C7B60A1F807FA2D07E6C92F5067F903612F0B0AD78827AF40F413A08A13CFB5EC0B83F423F0E62D6749776BE87B222655E449618E2BFD06CE88924600019034';
wwv_flow_imp.g_varchar2_table(127) := 'D4E9D991CE01A07301842ADE822239E68ED08F11D3D32B7B8E6A64F15F74953AEE173A5EFB3DD78BF7110BEF1357498DECF9C763B265F153C6424027F9197FF4E9527BEA85BCEFCFD4A914F0C98BD79E1436C5F6F4EA7CC971AB0B01288E258000706CE8';
wwv_flow_imp.g_varchar2_table(128) := 'F7393EACB680EA1B01C39544DF07E0F01018B91FCDE2EF1933FDDDB6877DFDD2ADF22B74ABDC0AFDCD0DD2D7D12CDD4D0D23BFCF2D2A951CF5291E355E2A0FF988E44F3FDA684C18A52F8140F37659FC9DFF083B40AE024EDFF8256B64088064914EE37E';
wwv_flow_imp.g_varchar2_table(129) := 'AC2E043AF61B8F8A67F49434F6C0DE43F3EDDE28CBEE5F60F4CDDF9B5F28F3AEBC4FBC63A6D91B0ADE852530B0E13579EDC1AF87B4E11E002690268000601EC886E63EE9F7874E077CC4A5B749FE41C7432A050446167FFDCEBF2FFC531A3D34BDF81F7E';
wwv_flow_imp.g_varchar2_table(130) := 'F583E21935290523A5CB7422D0F9EAEF64F9AFEF0D3924B200A653B45237160440EAD8A74DCFDBDA07A4B33F7432A0399FBD42CA8FFF7CDA8CD72903D18BFF1B8B168AAF97C5DF29318F979F8D7F5E24EB9EFD6DC8E6CAF2DD525F4A16C078F1CED47610';
wwv_flow_imp.g_varchar2_table(131) := '00991AB9388EDB2A19D0E4133F2D7567FD671C7BA4292B022CFE5684F87D38029B1FBD4176AE7825A4C9A822AFD4A80FC5D9041000CE8EFF88F7EDEADBFF0EF5142054A99A32470EBAF27F20952402FEBD5B65D97D97F3CD3F49BCEDD8CD9BDFF99C7437';
wwv_flow_imp.g_varchar2_table(132) := '3786746D7C79AE94E49203C08EB18FC427044024B46C6A3BA0DEFFAF57FB0042159737478EFBEF67435F236B532EA9706B64F1571BFE7C3D5D96DDF3CEDF1291230DF4ED902FDE10FEFE8E193505E2756539920F4EFF9B000280D9607414F0D86F3EA636';
wwv_flow_imp.g_varchar2_table(133) := '974D8456020944B2F8E71416CBBC850FB0E12F81F1C8D4A6FB37BC2EAF3FF8B590C3CF52EBFE9CD18599EA1EE38E230104401C61667253FA09807E1210AA1CF6E56F4AD161A767B28B693DF640CB4E59FAFDCB8CBEF98F2CFE573F249EEA7169ED13834B';
wwv_flow_imp.g_varchar2_table(134) := '0D81D67FFE4C56FDF127213BCFF766CB944AD23AA7263AE9D52B0220BDE291B2D16C577B003AC29C0498FA914F4BEDA7D908988800E9C57FD9BD97CB60778765F32CFE96881C6FB0F5A737C8F6E5A13700720DB0E3A7C8BB001000CC851102CDEA56C0DD';
wwv_flow_imp.g_varchar2_table(135) := '616E05AC9E385D665EFD2368C599C0F0408F2CBBFD5C9599AFCDB2E5DCA262396CE122F1D4F02AC61296830DDEB8E913D2D3D91992405D698E54E4730BA083A7080280E0BF9F40CF605036B786BE6046BF373CE19E7F8AB8393A14CFB9B3ED37DF936DAF';
wwv_flow_imp.g_varchar2_table(136) := 'FCC5B249BDF8CF5BF8A0B86B2658DA62E05C0243EDBBE5A56F9F1316C0B4AA7CC9F57007807367C9BF3DE70900B3608480C99D00C75CF78878EB66402C8E045EBBF51C1968D91DB6459DA75F67F87357F1CE3F8EE86DD954DFEAE765E923DF0AE91B1B00';
wwv_flow_imp.g_varchar2_table(137) := '6D19F6A89D4200448DCE7E15AD5202CFF9FC35527ECC59F6733C851E590980DCE232B5E14F2DFE95F5291C255D670A81C6A7FE47D63DF378C8E116A9EB7F27AA6B802910D0041000CC83770934740E4A4BAF3F2491B173E7CBA40BEE80581C096C7BF26E';
wwv_flow_imp.g_varchar2_table(138) := 'D9F6D21F0FD8626E71A9CCBB8A6FFE71C46DFBA656DD7D81B4EED814D24F3200DA7E0A44E4200220225CF636D6A700F4698050C5AD1202CDBFFB1FF6869064EF463601DE75A1F4B5EC795FCF05E5D53277C1BD7CF34F723C32B9BBA1CE2679F95B9F1979';
wwv_flow_imp.g_varchar2_table(139) := '9D17AA4C52DFFE0BD553000A047802C01C781F017F7058D6ECED0D4BE5A885DF97DCC987432E8E0486FBBB65F393F748D3FAE5E2CE2D90B147FF3F1975FCE724CB9313C75E68CAEE04BA97FD49DEFCC57F8775532700D2FB002810400030073E44606D53';
wwv_flow_imp.g_varchar2_table(140) := 'AFF802A1BF424C3FF51C19F5890590830004D28CC0F6C7BE295BDF7C39E4A848009466014B83E1F00A200D82904E43B0DA0750367AAC1CFC8D5FA5D390190B0420100CC892EB4F139FCF179205EFFF99261F248000604EBC8F40B7CA07B0254C3E006D7C';
wwv_flow_imp.g_varchar2_table(141) := 'FCCD8F4B76F918C841000269426070D33279F581F0993AA7AAF3FF799CFF4F9388A5C7301000E91187B41985DE40B4AAB127EC46A243BE708D941ECD71C0B4091A03713C81BD7F5E246B9FFD6D480EAEEC2C9935AAC0F19C00F07E02080066C487086C6D';
wwv_flow_imp.g_varchar2_table(142) := 'EB97AE8160483263661F29532EBE1B721080409A10587EEB67A4B3A529E468CAF2DD525F9A9B26A36518E9420001902E9148A371E85C007A2F40A8A277111F7FE7D39295CB95A269143686E2500281BD5B64F16D5F0EEBFDB8B25C29CD733B94106E87FC';
wwv_flow_imp.g_varchar2_table(143) := '6F79EB2DC78739350A382712F0A9E3806B2D8E031EF6A5EBA568DE279C88079F219056049A9F7E58DE79FA976105FBAC5185A2DE025020F03E023C0160421C90C0C6963EE9F30D85A4337AFA2132EDF245D08300045249406DDA79E3DB9F929E30B74916';
wwv_flow_imp.g_varchar2_table(144) := 'E7BA644239E97F5319A674ED1B0190AE9149F1B8ACAE07D6C33BEE96DF8AAB6C748A474AF710702E01DFE63764C9FDD7840550AF1EFF97F1F8DFB993248CE70800A6C5010998BC0698F3E94BA4FC23E74110021048118186DFDE2E1B173F1DF6F1FF6CF5';
wwv_flow_imp.g_varchar2_table(145) := 'F89FEC7F290A509A778B0048F300A5727856AF01CA5552A03924054A6588E8DBC104867D03F2EA8D9F10DF60E80DBB3CFE77F00431701D016000C9A92626AF018EBDEE11F1D4CD702A22FC8640CA08F4AE7846963DFA9DB0FDB3FB3F65E1C9888E110019';
wwv_flow_imp.g_varchar2_table(146) := '11A6D40CD2E472A0A9277D566ACFBC2A3503A457083898C0A647AE955DAB978624909D2D32AB86C7FF0E9E2296AE23002C1139DBC02A2990B7A0488EB9E3AFCE8684F7104832017DF5EF4B377D266CAF95051E1953C28D92490E4D46758700C8A870257F';
wwv_flow_imp.g_varchar2_table(147) := 'B05D0301D9DA3610B6E343CFFF2F293EF4B4E40F8E1E21E050024D7F7B44D6FCF51761BD9F5E9D2F396EF518800281100410004C0D4B02EFA8A44001951C285429193341E65EFF73CB76308000046227303CD827AF7EFB2CF1F5F5866C8CAB7F63E7EC84';
wwv_flow_imp.g_varchar2_table(148) := '1610004E88728C3EEEEDF649A3FA842B475D798FE44E3922C69EA80E01085811E85CF2A42C7FFCFEB066634B73A43CDF63D514BF7738010480C3278089FB269B01C7CC3A5CA65CF27D93E6B0810004A22530149437BF73B674B786BEF8479FF9E7EC7FB4';
wwv_flow_imp.g_varchar2_table(149) := '809D550F01E0AC7847EDEDB6F601E9EC0F84AD7FEC377F269E5193A2EE838A1080407802BD2BFF29CB7E7C7358A3EA428F8C2E66F31F73C99A0002C09A11168A409F2F281B5BFAC3B29878CCC7A4FEF337C20B021048108195775F206D3B36856C5D7FFB';
wwv_flow_imp.g_varchar2_table(150) := '9F515D201E1737FF242804B66A160160AB7026D619ABCC80592E97CCBFE509711557257620B40E01071218DCF296BC7A5FF89C1BFACA5F9DFC87020113020800134AD88C10E850AF00B6AB5701E1CAB4D3BE28A33FFE55884100027126B0F1C7D749C3CA';
wwv_flow_imp.g_varchar2_table(151) := '57C3FFFBABCA975C0F47FFE28CDEB6CD21006C1BDAC438B6461D09D49B024395EC9C5C39EEE62724ABA0343103A055083890806FD73A5972D7C5613D2FCC71C9A40AAEFD75E0F488DA650440D4E89C59B1A5D72F0D9DA12F1FD154261F7F86D47DF63A67';
wwv_flow_imp.g_varchar2_table(152) := '02C26B082480C03BF75E2CCD5BD7856D79A25AFC8B9408A040C0940002C0941476EF12B04A0CA40DE7DFF898B86B2642ED5F04821D7B6570CF26196C6F94FE96DDD2D7D22083DD1D2A994BF7C8A7BFB3DD51ACF24ACAC49B5F34F2C9292A9582AA3AC9AD';
wwv_flow_imp.g_varchar2_table(153) := 'A8959CF251925B375DB20BCB1DC5239CB3263BFF49FCC37489860002201A6A0EAF63F214A0F6A07932F5D27B1D4B6AD83F28FD1B974ADBFA37A479DD1BD2B96787635944E378E998F15235FD70299B7A98E4CF38369A26EC5127E093B76EFFA274B5EC0D';
wwv_flow_imp.g_varchar2_table(154) := 'EB8F7EF4AF5F015020100901044024B4B01D2130ACB600AC6D0ABF1740DB1DB9E06EC99B7AA463A8E945BF6FC36BD2F4D673D2F0F66209F8C2674F740C98181D75AB7D2575738F97EAB91F957C9D6DD2ED9C0C77ED2FFE52DEFEBF87C3122CF0BA647225';
wwv_flow_imp.g_varchar2_table(155) := 'EFFE639C668EAC8E007064D86377BAB5CF2FBB3AC2EF0528ADAD9743AE531796E87B496D5C746EF6B625FF27EB9FF995F87A7B6CEC69EA5DCB2D2E95A91F3B4FCA8E3C53B23CF64E7633DCD7294B6EFEACF807C29FBC99AA76FEE7B1F33FF59333034780';
wwv_flow_imp.g_varchar2_table(156) := '00C8C0A0A5CB90AD4E04E8711EF2C56BA5F4A84FA5CB90E33A8E61DF80B4BFF60759F7F4CFD5C2DF1DD7B6692C3C81DCE2B21121503EFF73B645B5FB7777CB8617FE18D63FBDE94F6FFEA340201A02088068A851678480495E809CA21239EA5BBF95AC9C';
wwv_flow_imp.g_varchar2_table(157) := '7C5B51EB5DF5BCAC79F201E96D6FB1955F99E64C51F5189979CE7F4A9ECD2EA20AECDD228B6FFBB26538A671EEDF921106A1092000981D3111D8DCDA2F3D83C1B06DD8E95860B075976C78FC2ED9BB7E794CDCA81C5F0263E7CE97099FF94FC9B64916CA';
wwv_flow_imp.g_varchar2_table(158) := '35F75F2A4D9BD784855451E091BA127BBF0689EF2CA1B50F1240003027622230181892754D7D966D1C7DF503923371AEA55D3A1B74BEFE4759F9C4031264735F5A86C95B502873CEBD5E0A679D9896E3331D54C7CB8FCB8A27FE27ACB9DE563353E5FC77';
wwv_flow_imp.g_varchar2_table(159) := '6593F3DF942B761F2680006056C44C402706D24703C395E2CA1A997BC32F24CB9B79EF2B87FBBB65F3AFBE2BBBDE5E1213ABFCC222A9185D27DEBC02F17A7324DBE31597FAE9569BD95C5E67E56F0FAAFD1301756A22E81B543F7D12181C10DF409FB434';
wwv_flow_imp.g_varchar2_table(160) := 'EC90FEBEDE98384F3CF67419FBA9AB33F2B553B06DB7BC76FB7F88DF17FEDF535D698E54E43BE734444C1382CA21092000981C31131852C702F586C0A0FE439832F3E4CF48F527AF8EB9BF64361068DF232B162D949E96C6A8BAD58B7E75DD3829AEAE93';
wwv_flow_imp.g_varchar2_table(161) := '9CC292A8DA705A255F4FA7B4EFDD29CDBBB6497F6F746240E7113878C1A2CC4A49ADCED76E7AE80AD9B57E55D890EB5CFFFADD3F0502B1124000C44A90FA2304DAD4B1C09D16C702F555A5475FFBB078EB0FCA086AC1B60679E3DECB5596BEB688C6EBF1';
wwv_flow_imp.g_varchar2_table(162) := '7A64D4B8C95236BA5E2DFADC891011BC0F180F74B54BFB9E6DB267FB16090602113555545D2B872CB85F5CA5A322AA972AE3EE254FC89B8F3F60D93DC7FE2C11616048000160080A336B029B5AFAA5D7177E436059CD6899A37203A4FB196EFFDEADF2E6';
wwv_flow_imp.g_varchar2_table(163) := '0357CA4077A7B5E3FFB2C82B2890DA4933A4AC76BC64659395CD189C81E170D02F6D0D5B65D7A6B5EA5541F873F1EF6D4E1F179CB7F00171578F37E825752643EAD1FFEBDFFB920C0E84CFAD51A936FE8D61E35FEA0265B39E1100360B682ADDD11B02D7';
wwv_flow_imp.g_varchar2_table(164) := '37F78D640A0C57669C7A8ED47C62412A871AB66F7FD37679E3BECB65B0A7CB688C6E8F5BC64E9D2595F55344ADFC4675308A8EC0703020CDDBD7CBAE8D6B25180C2F36F7F79053582CF3AE7E483CD5E3A2EB34D1B5D43F98F50F5E2E7B36AE0EDB93DB95';
wwv_flow_imp.g_varchar2_table(165) := '2533D4C63FF6FD253A20CE691F01E09C5827C5D3BDDD3E69541FAB72F455F749CEA4C3ACCCA5DAFE0F0000170E4944415492FE7B7FE36679E38185C68B7FE5A8D1327ECE5192E5F6267DAC4EEE3038D82F9B962F91AE36B33C0C2322403D09F08C9A9476';
wwv_flow_imp.g_varchar2_table(166) := 'D83A5EFAB5AC78F221CB7171DB9F25220C22248000881018E6D604F4B140FD34205CC957295DE75DFF53C92EAAB46E304916917EF31F3F7D96544D9CA946C751AC2485E8FDDD0C0FC9EE75CBA561EB26A3EED3F14980BF619DBC76F7A5EA6946F87F2F25';
wwv_flow_imp.g_varchar2_table(167) := '796E195FE6AC93224641C5282602088098F051F94004FAD43E808D6A3F8055A9558FCDA75EFEA0BA2B20F5EFCB2359FCB3D421ECE9871D23855563AC5CE4F74920D0B17BAB6C5CB1D4A8A7741201C3BD1DF2D65DE74B777B6BD8B1EB33FFFAD1BF9B67FF';
wwv_flow_imp.g_varchar2_table(168) := '4631C6C89C0002C09C15961110D0AF01F4EB00AB72D0C7BE2055FFEF722BB384FE3E92C5DFEDF5CA8C234E14BDB98C923E04FA3B9A65FD1B8BD5F979EB3997162240BDF7DFF8D0026958BFD212E284F25C29CE755BDA61008148092000222586BD31818D';
wwv_flow_imp.g_varchar2_table(169) := '2D7DD2E70BFF68533776E4E5774ADEF4638CDB8DA76124EFFCBDB9B972D0D127893BAF309E43A0AD3811F0F775CB9AD79E333A25906A11D0FACC8F64D5533FB7F49C74BF96883088810002200678540D4FC0171C5669827B2D4F05E4AAE373877FFD27E2';
wwv_flow_imp.g_varchar2_table(170) := '2A4FEE2375BDF82FBB6F81F8FAACAFF0D58BFF8CA34E126F3E8B7F3ACF7B1DCBB5AFFD33AD45C0C0C6A5F2FA83D75AFEBBF0BAB3647A5581E8FC1914082482000220115469F35D02EDFD01D9D16E7D6EBB62EC44997DCD8F4492B49B9EC5DFBE93349D45';
wwv_flow_imp.g_varchar2_table(171) := '40B0B34996DE719E0CF659DF9FC14D7FF69DA3E9E21902205D2261E3716C5302A0530901ABA273B8D79FF34D2BB3987FEFDFB34996DEBF40FC0639E73D39B932533DF6E79B7FCCD893DA8016016B5EFDA7F8D51D035625994704577FFF2BD2B26DBDD590';
wwv_flow_imp.g_varchar2_table(172) := '4692FDE8A43F140824920002209174697B8480BE22607D73AFF80216198294ED41677E45AA4EB2BE073D5AB47CF38F965CE6D54BAB27014343B2F1D16F48C34AEB0BA58A735D32A13CF32ECDCABC19C2881100CC81A41030CD12A80773E8053749F1DC53';
wwv_flow_imp.g_varchar2_table(173) := 'E33E2E16FFB8234DFB06231601094A16B4FDF1DB64EB92BF59F2F2A86C7FD3C9F667C90983F8104000C48723AD181030B93068A41975F0F9C82BEF95BC49871AB46A66C2E26FC6C98E56918800FDAAE7F0AB1F8C6BC6C096177E29AB7FF7B0255ABDD96F';
wwv_flow_imp.g_varchar2_table(174) := '6A65BEE8DBFE281048060104403228D3C7BB0476760CA89B03ADF703B872F2E4A8AFFD503C351362A6A717FFA5F75DC13BFF9849666E0391EC09F0E417C81157FF4F5C4440CFEA17E58D47FECB085C5D698E54E4F3DEDF08164671218000880B461A3125';
wwv_flow_imp.g_varchar2_table(175) := 'A02F0ADAA0F2030CF8ADF303E41497CB11D7A9E381C5D1A70B66F1378D8CFDED922D02FAB7AF56C273810C1B5C5A5496EF96FA5252FDDA7F16A697870880F48A8723461350BB0237A85B03FD2A4F8055291A3D4EE65EF343C9CE2DB032FDD0EF79EC1F31';
wwv_flow_imp.g_varchar2_table(176) := '32DB5748D6EB007FCB4E79EDAEAF4870C0FAB85F618E4B2655B0E9CFF6932F0D1D4400A461509C3024BD29503F09509BA32D4BC5D4B932FBB2BB23CA11E0DFB35196DDBF90243F96749D6710B108B86A9178464F3606155067FDDFF8FE5765A0BDC9B24E';
wwv_flow_imp.g_varchar2_table(177) := '9E7ADF3F59BDF727CDBF252A0C124000019000A8346946A05FBD06D0E982F56B01AB523661A61201F748B6411A5EBEF95BD1E4F7118B00C38D8181D606253C17C86087F535C57AC7BF4EF6E362F56742A68800022045E0E9761F81AE81806C6DB34ED6A2';
wwv_flow_imp.g_varchar2_table(178) := '6D4B6AC7CB9C2BEE17575179487C912CFE24F971F62C8C644F80C9E900FFDE2D6AF1BF527C3D5D9660F50D7F7AC77F8E9B1DFF96B0304818010440C2D0D2B02901E3E381AAC1828A1A99BBE07E71577CF8DE8048167F72FB9B46C7DE76F17A12E0DBB556';
wwv_flow_imp.g_varchar2_table(179) := '963D788DD149138EFBD97B4E65927708804C8A968DC7DAD2EB9786CE41230FBD852532EFF2BBC55B37FD5D7B167F2374181D8040AC226060CB7259F6D0D725E8B39EBF7AF19FAC36FCE57B5DC402022927800048790818C07E027BBB7DD2A83E26C59D93';
wwv_flow_imp.g_varchar2_table(180) := '23875DFA3DC99B3C4F58FC4D8861138E40B422A06FDD1275CEFF46190A58E7B6D08BFF4495E257EFFAA740201D082000D2210A8CE15D02BBBB06A5B9C76F4C64F6A72F95F5CFFC527CBD5CE96B0C0DC303128848041414C9D4533E2FABFFA06EB0342CE3';
wwv_flow_imp.g_varchar2_table(181) := 'CB73A524D76D688D1904124F00019078C6F4102101D36C819134CB86BF486839D736928D819150AA2FCB95B23C16FF4898619B78020880C433A6872808E8FD007A5F403C0A1BFEE241D1396D44F224C08A8A7EEC3F4E2DFE7CF3B722C5EF53410001900A';
wwv_flow_imp.g_varchar2_table(182) := 'EAF4694440EF07D0FB0262292CFEB1D0736EDD788800BDF8EB6B7D8B78E7EFDC8994E69E2300D23C404E1F5E738F4F767745270258FC9D3E7B62F33F1611A0177F9DDEB780DDFEB10581DA0925800048285E1A8F0781488E08BEB7BF433EF271F118640E';
wwv_flow_imp.g_varchar2_table(183) := '8CC71869C39E0402FD3DB2FCF9BF44E49C4EF233B9225F749A5F0A04D2990002209DA3C3D8DE25D0A932066E6F1F304A1BBCBF525955B54C38E418717972200981880904FD83B275C512696FB6CEE9BFBF719DDE577FF327C35FC4B8A990020208801440';
wwv_flow_imp.g_varchar2_table(184) := 'A7CBE808F4F982B245A50D0EAADB044D8B57E50B983CF7682928AF31AD821D04A4B76DAF6C5AFEAAF806AD93FBECC7A5BFF14F548BBF9BDCFECCA00C218000C8904031CC7D047CEA0AE1CDAD7DE20B988B005DAF6EF234193D658E48168F65994B61080C';
wwv_flow_imp.g_varchar2_table(185) := '0FC99E8D2B65D7A6F511612ACE75C9F8B23CD1EFFE2910C8140208804C8914E37C97807E02A02F10EA554F0422290525A532E5D0F96A5F404124D5B07508015F5FB7FAD6BF447A3B3B22F2B8BAD023A38B79CD1411348CD3820002202DC2C020A2211069';
wwv_flow_imp.g_varchar2_table(186) := 'D640DD87CBED9289B3E749E9E8F1D174491D9B1268DFBD55B6AE7A5382417351A9BFED8F5767FC8BC9EE67D359617FB71000F68FB1AD3D8C6673A006523DA65EEA0F9A27596E8FADF9E05C7802C3019F6C5BFD86B4ECDE19112ABDC96F824AEDCB66BF88';
wwv_flow_imp.g_varchar2_table(187) := 'B0619C6604100069161086133981C1C090DA1CD81FF1BE006F8E57C64E9B23E56326AABD01BCBC8D9C7C06D7181E96B6862DB263DDDBE2F7459671B244A5F4AD2FCD15F6FA6570FC19FA0801040013C11604F4C1801D1D03D2D96F7D2BDB071D2E282E91';
wwv_flow_imp.g_varchar2_table(188) := 'F1B3E6497E69A52D58E0447802FD1DCDB2557DEBEFEDEA8A18D598921CA92CE0A951C4E0A8909604100069191606152D81D63EBFE87B04D417BC884B755DBD8C997AB0B873F323AE4B85F4271018E8955DEBDF96E686C81EF76BCFF4F97E7D956F2EC97D';
wwv_flow_imp.g_varchar2_table(189) := 'D23FD08CD0980002C0181586994260C03F245BDB237F25A0FDCB7665CBD82933A56AFC747562907BDB3325E6E1C6391C0C48D3B675EA68DF5A190A0E45EC923EE2374E1DF1E3917FC4E8A890E6041000691E2086171D01FD4A405F2BDC11C52B01DD634E';
wwv_flow_imp.g_varchar2_table(190) := '5EBE8C9F798814D78C8D6E00D44A0B025D8DDB65DBDAB765B0BF3FAAF1F0C83F2A6C54CA100208800C0914C38C8E409B7A25A02F138A247BE07B7BCA2F2C923AF544A064D438360A461782E4D752C97CDA776F93DD9BD74A5F4F4F54FDE77BB34736FAB1';
wwv_flow_imp.g_varchar2_table(191) := 'CB3F2A7C54CA100208800C0914C38C9E805EFC1BBA06A5BD2FF20D82FB7BCDCDCF57D904674859ED04FD9E20FAC1503371048602D2DAB0551AD4A3FE68BFF1EB8B7C4617B1D12F7141A2E57422800048A76830968412D09903F5498148D308BF7750FA6E';
wwv_flow_imp.g_varchar2_table(192) := '813193A649C5D8C992E5623778420366D8F870C02F2D3B37C9EE2DEB54EEFEE8AE8ED65DE9E37D756A973FB9FC0DC16396F1041000191F421C88944063B74F9A7A7C519D14D8DF97C7ABD2BF4E982AD5F553248BDB06230D415CEC877C03D2B47D83ECDE';
wwv_flow_imp.g_varchar2_table(193) := 'BA418201F30C7E1FECDCEBCE92312A952F19FDE212161AC9200208800C0A16438D1F81807A2DA05309C7F25A408F469F1AA81A3D562AC74E94FCB22AF53724148A5F940ED0923ADFD9DBBE575A766D55D9FB76C9D050E4BBFAF7B7CAE3FE84468AC63380';
wwv_flow_imp.g_varchar2_table(194) := '0002200382C4101347406711DCD93118F1C542071A91DE2750533F5165169C20EE1C7209C4336A81FE9E91F7FB7B776C91C18181989AD6491F75329F51EA5D3F47FB624249E50C278000C8F00032FCF810D0770AE82702B1EC0F78EF48CAAA6AA47AEC04';
wwv_flow_imp.g_varchar2_table(195) := '29AEAE63D3609421D2E7F73BF7EE94A69D5BA5B3B539CA56DE5FAD54BDE7D737F77955621F0A049C4E0001E0F41980FFEF23A03309EE89E1D8E00771BADC6EA9AE1B2F65A3EAA4A0BC06DA1604868782D2DFDE24AD8DBB54C6BEED31BDDB7F6F5785392E';
wwv_flow_imp.g_varchar2_table(196) := 'A9550B7F1E99FC9883107897000280C900810F10D069849B7B7DB2576D148CE115F387B8EAAB884BAB46497975AD14558D1697370FF68A4060B04FBA9B774BDBDEDDD2D1BC37A6F7FA1F04AA53F7EA85BF4809000A0420F07E0208006604044210D0F903';
wwv_flow_imp.g_varchar2_table(197) := 'B40868E9F5C774622014E0C29252A9A8A995122508728ACA9D93684829ACBECE969145BF552DFAD15CCA633569F5CEFE9A42AF94E77354D38A15BF772E01048073638FE78604745A619D51501F1DF407A3B865C8A01F8FD7AB9E0ED4485169B9E4975448';
wwv_flow_imp.g_varchar2_table(198) := '6E5199CA33E036A899FE26C341BF0C74B54B4F67AB74B7B78E7CCB0F06A24FCA14CE639DB7BFB2C0CB37FEF49F168C300D082000D220080C217308E8CD82CD3DFEB89C1AB0F23ABFA8584ACA2AD435C51552A03E390525E9FF9440BDC31FE8E994DECE36';
wwv_flow_imp.g_varchar2_table(199) := 'E9EB6891AE0EF5B3BBDBCAD5987EAF77F597A9CD7DD5EA1B3FA97B6342496587114000382CE0B81B1F02FAC641BD61B0ADDF1FD77D0256A32BA9A894BCFC422506D427AF40BCFFFAB8927CECD03FD0277E75BDEE605F8FF8FAF7FDECEFED91AEB6562B17';
wwv_flow_imp.g_varchar2_table(200) := 'E2F67BFD7EBF423DE2D78BBF8BF37C71E34A43CE218000704EACF1344104DAD58D83FA1541CF60F4D9E8E231347D71516E4181E4E6158A37575D5FEBF18A3E85E0727B54C222B7FAB8D4C7F3EFFFAF7EAFCB905F6D765447EE822AA5EE907A5C3FA41ECF';
wwv_flow_imp.g_varchar2_table(201) := 'EFFFFF41FDF77EBFF8D4823FA016F981DEDE91853E554527EF29CBF38C2CFCECE84F5514E8D72E0410007689247EA49C804FED0FE8504F04B420D04F0828F121A01FF1EB5DFC7AE1D7E7F8291080407C082000E2C3915620F03E028881D826C4FE45BF54';
wwv_flow_imp.g_varchar2_table(202) := '2DFA25B9EAE905797B62034A6D081C800002806901810413D0E986BBD4E6C12EF58A20D5AF0912EC6A4CCDEBF7F87A177F718E7BE4621E16FD9870521902960410009688308040FC08E82385DD834A0CFC4B10041274AC307E234E6C4BF9DEEC77177CDE';
wwv_flow_imp.g_varchar2_table(203) := 'E9279635AD43E083041000CC0908A490807E3AD0E3DBF764A057FD4C549E8114BAF86ED7FAB1BE5EE40BBC2E29D41FF54D9F6FF9E91019C6E054020800A7461EBFD39280DE3BD0A39E10F4AB4D84034A1CE84FA63E25D0C7F4F4B9FC3CF5C9FFD7A2AF45';
wwv_flow_imp.g_varchar2_table(204) := '00050210480F020880F48803A380404802FAB5817E52D0EF0F8A1608FACFFA49812FB8EF67AA8A3E92E775658FDCACE7513F73D44FBDE0EFFFA46A5CF40B0108981140009871C20A02694B408B00BF16034A2904D447DF61A07FEEFFB3FA950CA9FCFB5A';
wwv_flow_imp.g_varchar2_table(205) := '48BCF7A7BEF44817BD9067ABAFE6FA71FC7B7FEA4D79EEF77CF6FFFFFD0B3E8FEFD3764A303008181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B0840000210808011';
wwv_flow_imp.g_varchar2_table(206) := '01048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F20000108400002460410004698308200042000';
wwv_flow_imp.g_varchar2_table(207) := '0108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F';
wwv_flow_imp.g_varchar2_table(208) := '200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC8100042000010818114000';
wwv_flow_imp.g_varchar2_table(209) := '1861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080';
wwv_flow_imp.g_varchar2_table(210) := 'BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF1060210';
wwv_flow_imp.g_varchar2_table(211) := '80000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B08400002108080110104801126';
wwv_flow_imp.g_varchar2_table(212) := '8C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B00';
wwv_flow_imp.g_varchar2_table(213) := '02C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F2000010840';
wwv_flow_imp.g_varchar2_table(214) := '00024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C20802';
wwv_flow_imp.g_varchar2_table(215) := '1080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC';
wwv_flow_imp.g_varchar2_table(216) := '154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF10602108000042060';
wwv_flow_imp.g_varchar2_table(217) := '4400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108';
wwv_flow_imp.g_varchar2_table(218) := '400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C4';
wwv_flow_imp.g_varchar2_table(219) := '1B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F20000108400002460410';
wwv_flow_imp.g_varchar2_table(220) := '0046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420';
wwv_flow_imp.g_varchar2_table(221) := '602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC8100';
wwv_flow_imp.g_varchar2_table(222) := '0420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F6228000B0573CF106021080000420604400016084';
wwv_flow_imp.g_varchar2_table(223) := '092308400002108080BD082000EC154FBC81000420000108181140001861C208021080000420602F0208007BC5136F200001084000024604100046983082000420000108D88B0002C05EF1C41B084000021080801101048011268C20000108400002F622';
wwv_flow_imp.g_varchar2_table(224) := '8000B0573CF106021080000420604400016084092308400002108080BD082000EC154FBC810004200001081811F8FF9CE9EFA5A95BEDAA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119813425999864807452)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/js_api_whatsapp_inetgration_min_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636C617373206170695F77686174736170705F616C6C5F73797374656D7B73746174696320676574436F756E74727943616C6C696E67436F646528297B7472797B636F6E737420653D496E746C2E4461746554696D65466F726D617428292E7265736F6C';
wwv_flow_imp.g_varchar2_table(2) := '7665644F7074696F6E7328292E74696D655A6F6E653B72657475726E7B22416D65726963612F4E65775F596F726B223A222B31222C22416D65726963612F4C6F735F416E67656C6573223A222B31222C224575726F70652F4C6F6E646F6E223A222B3434';
wwv_flow_imp.g_varchar2_table(3) := '222C224575726F70652F5061726973223A222B3333222C22417369612F526979616468223A222B393636222C22417369612F4475626169223A222B393731222C22417369612F42616768646164223A222B393634222C22417369612F546F6B796F223A22';
wwv_flow_imp.g_varchar2_table(4) := '2B3831222C22417369612F5368616E67686169223A222B3836222C224166726963612F436169726F223A222B3230222C224166726963612F4A6F68616E6E657362757267223A222B3237222C22417369612F4164656E223A222B393637227D5B655D7C7C';
wwv_flow_imp.g_varchar2_table(5) := '222B303030227D63617463682865297B72657475726E20636F6E736F6C652E6572726F7228224572726F7220646574656374696E6720636F756E74727920636F64653A222C65292C222B303030227D7D7374617469632073656E644D6573736167652865';
wwv_flow_imp.g_varchar2_table(6) := '2C61297B6C657420743D746869732E676574436F756E74727943616C6C696E67436F646528293B652E7374617274735769746828222B22297C7C28653D742B65293B636F6E7374206F3D6E657720486561646572733B6F2E617070656E642822436F6E74';
wwv_flow_imp.g_varchar2_table(7) := '656E742D54797065222C226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656422293B636F6E737420733D6E65772055524C536561726368506172616D733B732E617070656E642822746F6B656E222C22666C3574717339';
wwv_flow_imp.g_varchar2_table(8) := '686F39687A767A343422292C732E617070656E642822746F222C65292C732E617070656E642822626F6479222C61293B6665746368282268747470733A2F2F6170692E756C7472616D73672E636F6D2F696E7374616E63653135353937322F6D65737361';
wwv_flow_imp.g_varchar2_table(9) := '6765732F63686174222C7B6D6574686F643A22504F5354222C686561646572733A6F2C626F64793A732C72656469726563743A22666F6C6C6F77227D292E7468656E2828653D3E652E74657874282929292E7468656E2828653D3E636F6E736F6C652E6C';
wwv_flow_imp.g_varchar2_table(10) := '6F6728224D6573736167652053656E743A222C652929292E63617463682828653D3E636F6E736F6C652E6572726F7228224572726F723A222C652929297D7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119821611321286677989)
,p_file_name=>'js/api_whatsapp_inetgration.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/js_api_whatsapp_inetgration_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '0A2F2A2A0A202A20436C61737320202020203A206170695F77686174736170705F616C6C5F73797374656D0A202A20417574686F72202020203A20456E672E204D616C656B204D6F68616D6D65640A202A20437265617465642020203A20323032352D30';
wwv_flow_imp.g_varchar2_table(2) := '362D30310A202A20507572706F73652020203A2050726F7669646573205768617473417070206D6573736167696E672066756E6374696F6E73206261736564206F6E207573657227732074696D657A6F6E6520616E6420556C7472614D7367204150492E';
wwv_flow_imp.g_varchar2_table(3) := '0A202A2F0A636C617373206170695F77686174736170705F616C6C5F73797374656D207B0A202020202F2A0A20202020202A2046756E6374696F6E203A20676574436F756E74727943616C6C696E67436F64650A20202020202A20507572706F73652020';
wwv_flow_imp.g_varchar2_table(4) := '3A2044657465726D696E6573207468652075736572277320636F756E74727920636F6465206261736564206F6E2074696D65207A6F6E652E0A20202020202A2F0A2020202073746174696320676574436F756E74727943616C6C696E67436F6465282920';
wwv_flow_imp.g_varchar2_table(5) := '7B0A2020202020202020747279207B0A202020202020202020202020636F6E73742074696D655A6F6E65203D20496E746C2E4461746554696D65466F726D617428292E7265736F6C7665644F7074696F6E7328292E74696D655A6F6E653B0A0A20202020';
wwv_flow_imp.g_varchar2_table(6) := '2020202020202020636F6E73742074696D655A6F6E65546F43616C6C696E67436F6465203D207B0A2020202020202020202020202020202022416D65726963612F4E65775F596F726B223A20222B31222C0A202020202020202020202020202020202241';
wwv_flow_imp.g_varchar2_table(7) := '6D65726963612F4C6F735F416E67656C6573223A20222B31222C0A20202020202020202020202020202020224575726F70652F4C6F6E646F6E223A20222B3434222C0A20202020202020202020202020202020224575726F70652F5061726973223A2022';
wwv_flow_imp.g_varchar2_table(8) := '2B3333222C0A2020202020202020202020202020202022417369612F526979616468223A20222B393636222C0A2020202020202020202020202020202022417369612F4475626169223A20222B393731222C0A2020202020202020202020202020202022';
wwv_flow_imp.g_varchar2_table(9) := '417369612F42616768646164223A20222B393634222C0A2020202020202020202020202020202022417369612F546F6B796F223A20222B3831222C0A2020202020202020202020202020202022417369612F5368616E67686169223A20222B3836222C0A';
wwv_flow_imp.g_varchar2_table(10) := '20202020202020202020202020202020224166726963612F436169726F223A20222B3230222C0A20202020202020202020202020202020224166726963612F4A6F68616E6E657362757267223A20222B3237222C0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(11) := '2022417369612F4164656E223A20222B393637222C0A2020202020202020202020207D3B0A0A20202020202020202020202072657475726E2074696D655A6F6E65546F43616C6C696E67436F64655B74696D655A6F6E655D207C7C20222B303030223B0A';
wwv_flow_imp.g_varchar2_table(12) := '20202020202020207D20636174636820286572726F7229207B0A202020202020202020202020636F6E736F6C652E6572726F7228224572726F7220646574656374696E6720636F756E74727920636F64653A222C206572726F72293B0A20202020202020';
wwv_flow_imp.g_varchar2_table(13) := '202020202072657475726E20222B303030223B0A20202020202020207D0A202020207D0A0A202020202F2A0A20202020202A2046756E6374696F6E203A2073656E644D6573736167650A20202020202A20507572706F736520203A2053656E6473206120';
wwv_flow_imp.g_varchar2_table(14) := '5768617473417070206D657373616765207573696E6720556C7472614D7367204150492E0A20202020202A2F0A202020207374617469632073656E644D6573736167652870686F6E654E756D6265722C206D657373616765426F647929207B0A20202020';
wwv_flow_imp.g_varchar2_table(15) := '202020206C657420636F756E747279436F6465203D20746869732E676574436F756E74727943616C6C696E67436F646528293B0A0A2020202020202020696620282170686F6E654E756D6265722E7374617274735769746828222B222929207B0A202020';
wwv_flow_imp.g_varchar2_table(16) := '20202020202020202070686F6E654E756D626572203D20636F756E747279436F6465202B2070686F6E654E756D6265723B0A20202020202020207D0A0A2020202020202020636F6E7374206D7948656164657273203D206E657720486561646572732829';
wwv_flow_imp.g_varchar2_table(17) := '3B0A20202020202020206D79486561646572732E617070656E642822436F6E74656E742D54797065222C20226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656422293B0A0A2020202020202020636F6E73742075726C65';
wwv_flow_imp.g_varchar2_table(18) := '6E636F646564203D206E65772055524C536561726368506172616D7328293B0A202020202020202075726C656E636F6465642E617070656E642822746F6B656E222C2022666C3574717339686F39687A767A343422293B202F2F205265706C6163652077';
wwv_flow_imp.g_varchar2_table(19) := '69746820736563757265206D6574686F6420696E2070726F64756374696F6E0A202020202020202075726C656E636F6465642E617070656E642822746F222C2070686F6E654E756D626572293B0A202020202020202075726C656E636F6465642E617070';
wwv_flow_imp.g_varchar2_table(20) := '656E642822626F6479222C206D657373616765426F6479293B0A0A2020202020202020636F6E737420726571756573744F7074696F6E73203D207B0A2020202020202020202020206D6574686F643A2027504F5354272C0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(21) := '686561646572733A206D79486561646572732C0A202020202020202020202020626F64793A2075726C656E636F6465642C0A20202020202020202020202072656469726563743A2027666F6C6C6F77270A20202020202020207D3B0A0A20202020202020';
wwv_flow_imp.g_varchar2_table(22) := '206665746368282268747470733A2F2F6170692E756C7472616D73672E636F6D2F696E7374616E63653135353937322F6D657373616765732F63686174222C20726571756573744F7074696F6E73290A2020202020202020202020202E7468656E287265';
wwv_flow_imp.g_varchar2_table(23) := '73706F6E7365203D3E20726573706F6E73652E746578742829290A2020202020202020202020202E7468656E28726573756C74203D3E20636F6E736F6C652E6C6F6728224D6573736167652053656E743A222C20726573756C7429290A20202020202020';
wwv_flow_imp.g_varchar2_table(24) := '20202020202E6361746368286572726F72203D3E20636F6E736F6C652E6572726F7228274572726F723A272C206572726F7229293B0A202020207D0A7D0A0A0A0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119821719663297361764)
,p_file_name=>'js/api_whatsapp_inetgration.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813417271776807439)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15683095423346
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813417514816807440)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15683095423396
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813417838297807440)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15683095423407
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813418147321807440)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15683095423411
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813418459034807440)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15683095423424
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813418758029807441)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15683095423433
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813419076251807441)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15683095423446
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813419366201807441)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15683095423453
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813419635904807442)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15683095423487
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813419971581807442)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15683095423495
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813420278847807442)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15683095423499
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813420544223807442)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15683095423503
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813420842197807443)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15683095423510
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(119813421109628807443)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15683095423516
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(119813428839731807456)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15683095424134
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(119813428905681807456)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15683095424157
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(119813429058308807456)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15683095424160
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/customer_auth
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(119817371933364344697)
,p_name=>'Customer_Auth'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Customer'
,p_attribute_02=>'A'
,p_version_scn=>15683102277393
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/security/authorizations/owner_restaurant_auth
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(119817595207119037753)
,p_name=>'Owner_Restaurant_Auth'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Owner of restaurant'
,p_attribute_02=>'A'
,p_version_scn=>15683102885499
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(119813428419540807455)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15683095424101
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(119813428695699807456)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15683095424118
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(119813428720641807456)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15683095424123
);
end;
/
prompt --application/shared_components/security/app_access_control/customer
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(119816159149725326077)
,p_static_id=>'CUSTOMER'
,p_name=>'Customer'
,p_version_scn=>15683101252478
);
end;
/
prompt --application/shared_components/security/app_access_control/owner_of_restaurant
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(119817290256130335049)
,p_static_id=>'OWNER_OF_RESTAURANT'
,p_name=>'Owner of restaurant'
,p_version_scn=>15683101655950
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(119813429849913807457)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_version_scn=>15683095424169
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(119813430156560807458)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15683105545618
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813624044350808493)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15683095450638
);
end;
/
prompt --application/shared_components/user_interface/lovs/customers_return_data
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813444136609807647)
,p_lov_name=>'CUSTOMERS.RETURN_DATA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMERS.FIRST_NAME || '' '' ||  CUSTOMERS.LAST_NAME || '' '' || CUSTOMERS.PHONE_NUMBER AS FULL_DATA ,',
'    CUSTOMERS.CUSTOMER_ID as CUSTOMER_ID ',
' from CUSTOMERS CUSTOMERS'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'FULL_DATA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15683096271394
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813517672802807743)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15683095434213
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813631506223808500)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(119813631506223808500)||'.'
,p_location=>'STATIC'
,p_version_scn=>15683095451029
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813631854972808500)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813653109242808839)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(119813653109242808839)||'.'
,p_location=>'STATIC'
,p_version_scn=>15683095458718
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813653461417808839)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813653818718808839)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813654215904808840)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813665531983808848)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(119813665531983808848)||'.'
,p_location=>'STATIC'
,p_version_scn=>15683095459030
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813665818441808849)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813666270903808849)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813666677625808849)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813667001700808849)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/status_orders
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119815456799831943694)
,p_lov_name=>'STATUS_ORDERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORDER_STATUS_LOOKUP.DISPLAY_VALUE as DISPLAY_VALUE,',
'    ORDER_STATUS_LOOKUP.RETURN_VALUE as RETURN_VALUE ',
' from ORDER_STATUS_LOOKUP ORDER_STATUS_LOOKUP'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15683100309925
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813542598222808408)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15683095448934
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813518219220807746)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(119813518219220807746)||'.'
,p_location=>'STATIC'
,p_version_scn=>15683095434274
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813518504232807746)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(119813590430322808460)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(119813590430322808460)||'.'
,p_location=>'STATIC'
,p_version_scn=>15683095449959
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813590729990808460)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(119813591177087808460)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(119813430422262807458)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(119813916078686809536)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(119813422135610807444)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119813422340229807444)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119813459599880807662)
,p_short_name=>'Add Data Orders'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119813471632738807690)
,p_short_name=>'Add Data Restaurants'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119813483759168807703)
,p_short_name=>'Add Data Customers'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119813891832191808875)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119814938691438210763)
,p_parent_id=>wwv_flow_imp.id(119813422340229807444)
,p_short_name=>'adding and Referesh Oders'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(119823466719653799304)
,p_parent_id=>wwv_flow_imp.id(119813422340229807444)
,p_short_name=>'Details of all orders'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(119813423045996807445)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2597873239612181258
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813421517557807443)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15683095423521
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426130573807453)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424062
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426285633807453)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424069
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426349762807453)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424072
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426531609807453)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424035
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426875952807453)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424079
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813426938386807453)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095424088
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813916240158809536)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095476191
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(119813916555165809536)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15683095476195
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(119813421834118807443)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15683095423535
);
end;
/
prompt --application/shared_components/security/authentications/open_door_creadentials
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(119818174703752389569)
,p_name=>'Open Door Creadentials'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15683107625515
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'App Manamgements Novifications Automatic'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813441025991807474)
,p_plug_name=>'App Manamgements Novifications Automatic'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813504564130807728)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(119813503008477807727)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Add Data Orders'
,p_alias=>'ADD-DATA-ORDERS'
,p_step_title=>'Add Data Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813454174483807656)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORDERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Add Data Orders'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813454256371807656)
,p_name=>'Add Data Orders'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,:P6_ORDER_ID:\#ORDER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813454256371807656
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813454991842807658)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Order ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813455387380807658)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(119813444136609807647)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813455780542807659)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813456101139807659)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(119815456799831943694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813456568744807659)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813456941496807660)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813457342423807660)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813484460006807705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198134845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_ID:ORDER_DATE:STATUS:TOTAL_AMOUNT:CREATED_AT'
,p_sort_column_1=>'CUSTOMER_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813459032791807662)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813457817978807660)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813454174483807656)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813458102091807661)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(119813454174483807656)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813458667876807661)
,p_event_id=>wwv_flow_imp.id(119813458102091807661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813454174483807656)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Order'
,p_alias=>'ORDER'
,p_page_mode=>'MODAL'
,p_step_title=>'Order'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(119813429058308807456)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813443316709807645)
,p_plug_name=>'Order'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORDERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813449677896807652)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813450083600807652)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813449677896807652)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813451434859807654)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813449677896807652)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813451857297807654)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119813449677896807652)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813452246574807654)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119813449677896807652)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813443618185807646)
,p_name=>'P3_ORDER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order ID'
,p_source=>'ORDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813444098527807647)
,p_name=>'P3_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMERS.RETURN_DATA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMERS.FIRST_NAME || '' '' ||  CUSTOMERS.LAST_NAME || '' '' || CUSTOMERS.PHONE_NUMBER AS FULL_DATA ,',
'    CUSTOMERS.CUSTOMER_ID as CUSTOMER_ID ',
' from CUSTOMERS CUSTOMERS'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813444756966807648)
,p_name=>'P3_ORDER_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Date'
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813445542866807648)
,p_name=>'P3_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Ready;1,No Ready;0'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813445988020807649)
,p_name=>'P3_TOTAL_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'0',
''))
,p_prompt=>'Total Amount'
,p_source=>'TOTAL_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813446394300807649)
,p_name=>'P3_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813447144982807650)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_item_source_plug_id=>wwv_flow_imp.id(119813443316709807645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119813445299830807648)
,p_validation_name=>'P3_ORDER_DATE must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P3_ORDER_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(119813444756966807648)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119813446862585807650)
,p_validation_name=>'P3_CREATED_AT must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P3_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(119813446394300807649)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813450177738807652)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813450083600807652)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813450917383807653)
,p_event_id=>wwv_flow_imp.id(119813450177738807652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813453193039807655)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(119813443316709807645)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Order'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813453193039807655
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813453537290807655)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>119813453537290807655
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813452683292807655)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(119813443316709807645)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Order'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813452683292807655
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Add Data Restaurants'
,p_alias=>'ADD-DATA-RESTAURANTS'
,p_step_title=>'Add Data Restaurants'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can insert, update, and delete data directly within this interactive grid.<br>',
'  Insert a new row by clicking the Add Row button.<br>',
'  Double click into a cell, or click the <strong>Edit</strong> button to update data values, similar to editing data in a spreadsheet.</p>',
'',
'<p>Use the Row Actions menu ( <span class="fa fa-bars" aria-hidden="true"></span> ) at the top of the report to duplicate, delete, refresh or revert selected rows.<br> ',
'  Use the Row Actions menu on individual rows to also access the single row view or add a new row.</p>',
'',
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define an additi'
||'onal view of the data using the chart option.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive grid back to the default settings.</p>'))
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813461448861807673)
,p_plug_name=>'Restaurants'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'RESTAURANTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Add Data Restaurants'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813462795214807675)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813463353454807676)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813464430973807679)
,p_name=>'RESTAURANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESTAURANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Restaurant ID'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813465408405807680)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813466479964807681)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813467439324807682)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813468405366807683)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created At'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813469401188807684)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(119813461961612807674)
,p_internal_uid=>119813461961612807674
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_update_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_delete_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(119813462347374807675)
,p_interactive_grid_id=>wwv_flow_imp.id(119813461961612807674)
,p_static_id=>'1198134624'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(119813462582667807675)
,p_report_id=>wwv_flow_imp.id(119813462347374807675)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813463775408807677)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(119813463353454807676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813464834594807680)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(119813464430973807679)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813465874030807681)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(119813465408405807680)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813466868928807682)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(119813466479964807681)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813467856282807682)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(119813467439324807682)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813468882387807683)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(119813468405366807683)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813469898505807684)
,p_view_id=>wwv_flow_imp.id(119813462582667807675)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(119813469401188807684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813471121789807689)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813470491769807685)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(119813461448861807673)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Add Data Restaurants - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813470491769807685
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Add Data Customers'
,p_alias=>'ADD-DATA-CUSTOMERS'
,p_step_title=>'Add Data Customers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can insert, update, and delete data directly within this interactive grid.<br>',
'  Insert a new row by clicking the Add Row button.<br>',
'  Double click into a cell, or click the <strong>Edit</strong> button to update data values, similar to editing data in a spreadsheet.</p>',
'',
'<p>Use the Row Actions menu ( <span class="fa fa-bars" aria-hidden="true"></span> ) at the top of the report to duplicate, delete, refresh or revert selected rows.<br> ',
'  Use the Row Actions menu on individual rows to also access the single row view or add a new row.</p>',
'',
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define an additi'
||'onal view of the data using the chart option.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive grid back to the default settings.</p>'))
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813472785554807692)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Add Data Customers'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813474017381807694)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813474585549807694)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813475542026807695)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Customer ID'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813476515325807697)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813477511907807697)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813478568276807698)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813479508615807699)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813480591556807700)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created At'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(119813481511455807701)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(119813473222642807693)
,p_internal_uid=>119813473222642807693
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_update_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_delete_authorization_scheme=>wwv_flow_imp.id(119813429058308807456)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(119813473648201807693)
,p_interactive_grid_id=>wwv_flow_imp.id(119813473222642807693)
,p_static_id=>'1198134737'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(119813473864588807693)
,p_report_id=>wwv_flow_imp.id(119813473648201807693)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813474978167807695)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(119813474585549807694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813475991709807696)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(119813475542026807695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813476929931807697)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(119813476515325807697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813477906511807698)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(119813477511907807697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813478940811807698)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(119813478568276807698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813479974755807699)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(119813479508615807699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813480984659807700)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(119813480591556807700)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119813481910491807701)
,p_view_id=>wwv_flow_imp.id(119813473864588807693)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(119813481511455807701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813483267403807702)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813482517632807702)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(119813472785554807692)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Add Data Customers - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813482517632807702
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'adding and Referesh Oders'
,p_alias=>'ADDING-AND-REFERESH-ODERS'
,p_step_title=>'adding and Referesh Oders'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/api_whatsapp_inetgration.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119814938145922210762)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119814940066752210950)
,p_plug_name=>'adding and Referesh Oders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORDERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119814947183094210958)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119814946176928210957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119814947530698210958)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119814946729593210958)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119814947855514210958)
,p_branch_action=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814940368480210950)
,p_name=>'P6_ORDER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Id'
,p_source=>'ORDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814940799968210951)
,p_name=>'P6_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMERS.RETURN_DATA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMERS.FIRST_NAME || '' '' ||  CUSTOMERS.LAST_NAME || '' '' || CUSTOMERS.PHONE_NUMBER AS FULL_DATA ,',
'    CUSTOMERS.CUSTOMER_ID as CUSTOMER_ID ',
' from CUSTOMERS CUSTOMERS'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814941131865210952)
,p_name=>'P6_ORDER_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Order Date'
,p_source=>'ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814942024845210953)
,p_name=>'P6_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_ORDERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORDER_STATUS_LOOKUP.DISPLAY_VALUE as DISPLAY_VALUE,',
'    ORDER_STATUS_LOOKUP.RETURN_VALUE as RETURN_VALUE ',
' from ORDER_STATUS_LOOKUP ORDER_STATUS_LOOKUP'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814942472672210954)
,p_name=>'P6_TOTAL_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_prompt=>'Total Amount'
,p_source=>'TOTAL_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814942887205210954)
,p_name=>'P6_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119814943672260210955)
,p_name=>'P6_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_item_source_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119819722201763185801)
,p_name=>'PHONE_NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119819722302944185802)
,p_name=>'BODY_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(119814940066752210950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119814941643068210953)
,p_validation_name=>'P6_ORDER_DATE must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P6_ORDER_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(119814941131865210952)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119814943326032210955)
,p_validation_name=>'P6_CREATED_AT must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P6_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(119814942887205210954)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119819722603631185805)
,p_name=>'Send Message Whatsapp'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119819722787576185806)
,p_event_id=>wwv_flow_imp.id(119819722603631185805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Main',
'$( document ).ready(function() {',
'try {',
'    // Get values from APEX page items',
'    const phoneNumber = apex.item("PHONE_NUMBER").getValue();',
'    const bodyMessage = apex.item("BODY_MESSAGE").getValue();',
'',
'    // Validate inputs before sending',
'    if (phoneNumber && bodyMessage) {',
'        ',
'        // Send the message using the WhatsApp API',
'        api_whatsapp_all_system.sendMessage(phoneNumber, bodyMessage);',
'',
'        // Debug: Log the phone number and message content',
'        console.log("Sending to:", phoneNumber);',
'        console.log("Message:", bodyMessage);',
'    } else {',
'        console.warn("Phone number or message is missing.");',
'    }',
'} catch (error) {',
'    console.warn("An error occurred while sending the message.");',
'}    ',
'});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119814948780012210959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(119814940066752210950)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form adding and Referesh Oders'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119814948780012210959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119819722553949185804)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Details Order After processings '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    get_data_for_send_whatsapp_message (',
'        p_order_id => :P6_ORDER_ID,',
'        p_phone_number => :PHONE_NUMBER,',
'        p_message_body => :BODY_MESSAGE',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119819722553949185804
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119814948347287210959)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(119814940066752210950)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form adding and Referesh Oders'
,p_internal_uid=>119814948347287210959
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Details of all orders'
,p_alias=>'DETAILS-OF-ALL-ORDERS'
,p_step_title=>'Details of all orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119823466232445799299)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119823466916416799304)
,p_name=>'Details of all orders'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'VW_DAILY_ORDERS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823467427566799570)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823467808899799570)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823468209333799570)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Customer Email'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823468663539799571)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_PHONE'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Phone'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823469092582799571)
,p_query_column_id=>5
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823469496487799571)
,p_query_column_id=>6
,p_column_alias=>'STATUS_ORDER'
,p_column_display_sequence=>6
,p_column_heading=>'Status Order'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119823469802502799571)
,p_query_column_id=>7
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Total Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'App Manamgements Novifications Automatic - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813433478658807464)
,p_plug_name=>'App Manamgements Novifications Automatic'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813435765062807468)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119813433478658807464)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813434126267807466)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813433478658807464)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813434555589807467)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813433478658807464)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813434971329807467)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813433478658807464)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813435360026807468)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813433478658807464)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813437950825807470)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813437950825807470
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813438426132807470)
,p_page_process_id=>wwv_flow_imp.id(119813437950825807470)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813438950076807470)
,p_page_process_id=>wwv_flow_imp.id(119813437950825807470)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813436017910807469)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813436017910807469
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813436554360807469)
,p_page_process_id=>wwv_flow_imp.id(119813436017910807469)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813437033928807469)
,p_page_process_id=>wwv_flow_imp.id(119813436017910807469)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813437597572807470)
,p_page_process_id=>wwv_flow_imp.id(119813436017910807469)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813439896685807471)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813439896685807471
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813439460493807471)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>119813439460493807471
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813891304750808874)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(119813422135610807444)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813897998918808879)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813898355918808879)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(119813897998918808879)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(119813892099956808875)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(119813426531609807453)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813898764268808879)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(119813897998918808879)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(119813892708152808875)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(119813426938386807453)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813899127329808880)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(119813897998918808879)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(119813893496090808876)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813899514599808880)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813899973375808880)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(119813899514599808880)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813900784405808881)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(119813899973375808880)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813901106029808881)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(119813899973375808880)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813901961176808884)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813902316060808884)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813902718733808884)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813907693529809210)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(119813899973375808880)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(119813896197687808877)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813908063101809210)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(119813899514599808880)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813908427204809211)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(119813908063101809210)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813909186534809214)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813909513504809214)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813915607556809535)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(119813908063101809210)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(119813897294612808878)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813900389916808880)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813899973375808880)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813906745838809209)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813900389916808880)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813907214264809210)
,p_event_id=>wwv_flow_imp.id(119813906745838809209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813901106029808881)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426531609807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813504955190807729)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813505125185807729)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813505705543807730)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813505705543807730
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813506424074807733)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813506859477807733)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813507235042807733)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813507618052807734)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813508055706807734)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813508459323807735)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813508849001807735)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813511626260807738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198135117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813513273982807739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813504955190807729)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813512556612807739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813505125185807729)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119813514063618807740)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813513684962807740)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>119813513684962807740
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426938386807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813514300509807740)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813514436831807740)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813516827120807743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813514300509807740)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813515451990807742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813514300509807740)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119813517204262807743)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813517588169807743)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813514436831807740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813518164149807746)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813514436831807740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(119813518219220807746)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813515562122807742)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813515451990807742)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813516251662807742)
,p_event_id=>wwv_flow_imp.id(119813515562122807742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813519321578807747)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>119813519321578807747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813519759801807747)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>119813519759801807747
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813520038799807747)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(119813520123198807747)
,p_region_id=>wwv_flow_imp.id(119813520038799807747)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(119813522248569807749)
,p_chart_id=>wwv_flow_imp.id(119813520123198807747)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813523499313807750)
,p_chart_id=>wwv_flow_imp.id(119813520123198807747)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813522884807807749)
,p_chart_id=>wwv_flow_imp.id(119813520123198807747)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813520218205807747)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(119813520315374807747)
,p_region_id=>wwv_flow_imp.id(119813520218205807747)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(119813527292004807752)
,p_chart_id=>wwv_flow_imp.id(119813520315374807747)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813527807294807753)
,p_chart_id=>wwv_flow_imp.id(119813520315374807747)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813528423013807753)
,p_chart_id=>wwv_flow_imp.id(119813520315374807747)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813520417600807747)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(119813520506205807747)
,p_region_id=>wwv_flow_imp.id(119813520417600807747)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(119813524770266807751)
,p_chart_id=>wwv_flow_imp.id(119813520506205807747)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813525398303807751)
,p_chart_id=>wwv_flow_imp.id(119813520506205807747)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(119813525912967807751)
,p_chart_id=>wwv_flow_imp.id(119813520506205807747)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813520693239807747)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813529570568807756)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813529990906807757)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813520784689807747)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813535275194808082)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813535642372808082)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813520859593807747)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813540735560808407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813520038799807747)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813541124525808407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813520218205807747)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813541569376808408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813520417600807747)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813541974030808408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813520693239807747)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813520908727807747)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813520859593807747)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813521034490807747)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813543522218808410)
,p_event_id=>wwv_flow_imp.id(119813521034490807747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813520038799807747)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813544002870808410)
,p_event_id=>wwv_flow_imp.id(119813521034490807747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813520417600807747)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813544579286808411)
,p_event_id=>wwv_flow_imp.id(119813521034490807747)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813520218205807747)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813545047229808411)
,p_event_id=>wwv_flow_imp.id(119813521034490807747)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813520693239807747)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813545592026808411)
,p_event_id=>wwv_flow_imp.id(119813521034490807747)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813520784689807747)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813578608986808443)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813579717808808443)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813579717808808443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813580376586808447)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813580788553808447)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813581171717808448)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813581564487808448)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813581997325808449)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813582388134808449)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813582740012808450)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813583113886808451)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813586369249808456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198135864'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813578793922808443)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813578950114808443)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(119813579049830808443)
,p_region_id=>wwv_flow_imp.id(119813578950114808443)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(119813589997710808460)
,p_chart_id=>wwv_flow_imp.id(119813579049830808443)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813587224332808457)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813578608986808443)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813579168066808443)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813578793922808443)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(119813590430322808460)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813579385479808443)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813578793922808443)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813578815376808443)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813588505434808459)
,p_event_id=>wwv_flow_imp.id(119813578815376808443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813578608986808443)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813591988596808461)
,p_event_id=>wwv_flow_imp.id(119813578815376808443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813578608986808443)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813571652015808436)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813572206781808436)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813572206781808436
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813572979204808438)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813573387648808438)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813573727822808439)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813574169052808439)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813574540617808439)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813574902191808440)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813577435922808442)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198135775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813578367786808443)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813571652015808436)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813557458337808422)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813558032683808422)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813558032683808422
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813558714168808424)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813559140197808425)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813559522007808425)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813559984756808425)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813560331361808426)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813560710693808426)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813561107372808426)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813561567669808427)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813561909459808427)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813562313266808428)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813562740836808428)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813563154060808428)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813563596129808429)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813563918605808429)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813568936403808433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198135690'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813557504636808422)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813569802914808434)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813557458337808422)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813557348993808422)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813557504636808422)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813557604971808422)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813571165407808436)
,p_event_id=>wwv_flow_imp.id(119813557604971808422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813557458337808422)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813546006140808412)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813546687597808412)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813546687597808412
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813547349773808413)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813547734551808413)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813548129925808414)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813548547921808414)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813548945652808414)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813549430831808415)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813549833846808415)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813550257728808415)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813550630393808416)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813551061720808416)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813554755328808419)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198135548'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813546149044808412)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813555643871808420)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813546006140808412)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813545968378808412)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813546149044808412)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813546237860808412)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813556968136808422)
,p_event_id=>wwv_flow_imp.id(119813546237860808412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813546006140808412)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813592404535808462)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813593035132808462)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813593035132808462
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813593730456808464)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813594163691808465)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813594588792808465)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813594957502808465)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813595345819808466)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813595805753808466)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813596287785808466)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813596675185808467)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813597082236808467)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813600429334808470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198136005'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813601392399808471)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813592404535808462)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426285633807453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813601974918808471)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813604366635808474)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813604717729808476)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813605126039808476)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813605504472808476)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813605941987808477)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813602347442808472)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813601974918808471)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813602780237808472)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813601974918808471)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813603199585808473)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813601974918808471)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813603522365808473)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813601974918808471)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813603961942808473)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813603961942808473
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813608194384808479)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813608238219808479)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813609468671808480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813608238219808479)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813609704548808480)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813608238219808479)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119813611165094808481)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813611468030808482)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813608194384808479)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813609847650808480)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813609704548808480)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813610548593808481)
,p_event_id=>wwv_flow_imp.id(119813609847650808480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813611868853808482)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>119813611868853808482
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813612225877808482)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813613002450808482)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813613002450808482
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813613751599808485)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813614189184808485)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813614528479808486)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813616114046808487)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198136162'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813617205567808488)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813612225877808482)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813617621253808488)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119813612225877808482)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813618087911808488)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119813612225877808482)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813612350762808482)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(119813612225877808482)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813618634823808489)
,p_event_id=>wwv_flow_imp.id(119813612350762808482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813612225877808482)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813619126934808489)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813619286698808489)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813622077362808492)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119813619286698808489)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813622415104808492)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119813619286698808489)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813620261327808490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813619286698808489)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813621614635808491)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813619286698808489)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813622702940808492)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_item_source_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813623149316808492)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_item_source_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813623594809808493)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_item_source_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813623942079808493)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_item_source_plug_id=>wwv_flow_imp.id(119813619126934808489)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119813625265147808496)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813620339112808490)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813620261327808490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813621063559808491)
,p_event_id=>wwv_flow_imp.id(119813620339112808490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813625584946808496)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(119813619126934808489)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813625584946808496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813625974896808496)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(119813619126934808489)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813625974896808496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813626333787808496)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813626333787808496
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813626797865808497)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813626899869808497)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813626904434808497)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813626797865808497)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813628985109808498)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813626797865808497)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119813630252043808499)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(119813626904434808497)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813630670391808499)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813626899869808497)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813631039665808500)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813626899869808497)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813631462268808500)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813626899869808497)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(119813631506223808500)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813629082506808498)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813628985109808498)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813629735505808499)
,p_event_id=>wwv_flow_imp.id(119813629082506808498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813632530623808501)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813626904434808497)
,p_internal_uid=>119813632530623808501
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426130573807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813627036439808497)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813627123493808497)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119813627369598808497)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(119813627123493808497)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813634564519808505)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(119813634939025808505)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813627468476808497)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(119813627123493808497)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813627528703808497)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813642288170808831)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813642981413808832)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813627633149808497)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813627036439808497)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813643670449808832)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813627036439808497)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813644037675808833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813627036439808497)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813645370889808834)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813627528703808497)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813645790066808834)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813627528703808497)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813646136452808834)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813627528703808497)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813644124897808833)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813644037675808833)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813644839909808833)
,p_event_id=>wwv_flow_imp.id(119813644124897808833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813646515958808835)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813627633149808497)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>119813646515958808835
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813646934880808835)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813646934880808835
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813647304556808835)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813647450171808835)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813647517771808835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813647450171808835)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813650523197808837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813647450171808835)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(119813658333584808842)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813651875572808838)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813647304556808835)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813652235884808838)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813647304556808835)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813652609629808838)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813647304556808835)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813653055939808839)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(119813647304556808835)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(119813653109242808839)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813654989582808840)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813647304556808835)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(119813657854549808842)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813650646549808837)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813650523197808837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813651318086808837)
,p_event_id=>wwv_flow_imp.id(119813650646549808837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813655336985808840)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813647517771808835)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>119813655336985808840
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813655879923808841)
,p_page_process_id=>wwv_flow_imp.id(119813655336985808840)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813656314132808841)
,p_page_process_id=>wwv_flow_imp.id(119813655336985808840)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813656824266808841)
,p_page_process_id=>wwv_flow_imp.id(119813655336985808840)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813657338355808842)
,p_page_process_id=>wwv_flow_imp.id(119813655336985808840)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813647911760808835)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813647842645808835)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813647911760808835)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813648035632808835)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813647842645808835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813659954802808844)
,p_event_id=>wwv_flow_imp.id(119813648035632808835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813649232043808835)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(119813672779752808853)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MALEK.M.EDRESI@GMAIL.COM'
,p_internal_uid=>119813672779752808853
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813673401160808856)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813673875265808857)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813674222059808857)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813674678169808857)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813675098301808858)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813675436284808858)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(119813653109242808839)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813675816931808858)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813676280475808859)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(119813665531983808848)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813676608129808859)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813677018086808859)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813677433571808860)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813677906863808860)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119813678375993808860)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119813682963500808865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1198136830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813683889983808866)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813649232043808835)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813649143103808835)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(119813649232043808835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813684517364808866)
,p_event_id=>wwv_flow_imp.id(119813649143103808835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119813649232043808835)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(119813428839731807456)
,p_required_patch=>wwv_flow_imp.id(119813426349762807453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813648515034808835)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813648600249808835)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813648728357808835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813648600249808835)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813661462860808845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119813648600249808835)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813648933529808835)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119813648600249808835)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813663083815808846)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813663491513808847)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813663845667808847)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813664209259808847)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813664673257808848)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813665077966808848)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813665475711808848)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(119813665531983808848)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813667782324808850)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(119813648515034808835)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813661550947808845)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119813661462860808845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813662217274808846)
,p_event_id=>wwv_flow_imp.id(119813661550947808845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813668270369808850)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813668270369808850
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813668539495808851)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813648728357808835)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>119813668539495808851
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813669065378808851)
,p_page_process_id=>wwv_flow_imp.id(119813668539495808851)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813669551457808851)
,p_page_process_id=>wwv_flow_imp.id(119813668539495808851)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813670010165808851)
,p_page_process_id=>wwv_flow_imp.id(119813668539495808851)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813670439029808852)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813648933529808835)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>119813670439029808852
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(119813670972742808852)
,p_page_process_id=>wwv_flow_imp.id(119813670439029808852)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813671438222808852)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(119813648933529808835)
,p_internal_uid=>119813671438222808852
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119813671876388808853)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>119813671876388808853
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813430422262807458)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(119813426875952807453)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813685404036808867)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(119813426875952807453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813686170264808868)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813686529473808868)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813686170264808868)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813916078686809536)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(119813916555165809536)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813921137632809541)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813921537754809541)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(119813922025794809541)
,p_region_id=>wwv_flow_imp.id(119813921537754809541)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813922595156809542)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(119813920183550809540)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(119813916078686809536)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(119813916240158809536)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813917508931809537)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119813917973852809538)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119813917251316809537)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119813918406470809538)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119813917973852809538)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119813918797344809539)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813919255266809539)
,p_event_id=>wwv_flow_imp.id(119813918797344809539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119813919718952809539)
,p_event_id=>wwv_flow_imp.id(119813918797344809539)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
