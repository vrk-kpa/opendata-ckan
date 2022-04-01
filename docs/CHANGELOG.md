## [2.0.10](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.9...v2.0.10) (2022-04-01)


### Bug Fixes

* downgrade sixodp_harvester object errors to warnings in log ([1467f36](https://github.com/vrk-kpa/opendata-ckan/commit/1467f363c361f098a9642a01f5853ff686838c63))
* Parse matomo stats resource ids correctly to avoid database issues ([8c03003](https://github.com/vrk-kpa/opendata-ckan/commit/8c0300362d86d7d95c68eedb9537506efa92bec6))
* work around CKAN API's organization list limit in organization filters ([ca8dc06](https://github.com/vrk-kpa/opendata-ckan/commit/ca8dc0664220a6e13972577f2850a8fd8677c122))

## [2.0.9](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.8...v2.0.9) (2022-03-31)


### Bug Fixes

* remove double-encoding of unicode string ([5b1e063](https://github.com/vrk-kpa/opendata-ckan/commit/5b1e063fce270af6f02a4de15b81adae646e9f4c))
* show correct organization counts in organization list filters ([83234a0](https://github.com/vrk-kpa/opendata-ckan/commit/83234a03f37b13ea27705046d7495eac25022f90))

## [2.0.8](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.7...v2.0.8) (2022-03-31)


### Bug Fixes

* ckanext-matomo/ckanext-statistics cooperation fixes ([a4f7166](https://github.com/vrk-kpa/opendata-ckan/commit/a4f716610b9b07b34fa99df27c515627ba33b9b3))
* determining dataset age when timezone is not provided ([e3339d4](https://github.com/vrk-kpa/opendata-ckan/commit/e3339d4056fb4d2a77d5d5b1629930bfccc87322))
* disable benign uWSGI write errors ([27adb41](https://github.com/vrk-kpa/opendata-ckan/commit/27adb41e935105ee012c9297b5ba295ccd4d1b7d))

## [2.0.7](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.6...v2.0.7) (2022-03-30)


### Bug Fixes

* ckanext-matomo python3 compatibility fixes ([433ec28](https://github.com/vrk-kpa/opendata-ckan/commit/433ec28b33b44ada88b6da9723a20056af82f130))
* migrate ckanext-spatial customizations ([3cc3d4d](https://github.com/vrk-kpa/opendata-ckan/commit/3cc3d4d83c0824dc5e172eb08e6488361c4fa8e8))
* paging of organization list with dataset filtering ([de4aa76](https://github.com/vrk-kpa/opendata-ckan/commit/de4aa7697263af0c840c5510b99b2105135e4384))
* remove extra parameter from send_stuck_runs_report cli command ([54b94a8](https://github.com/vrk-kpa/opendata-ckan/commit/54b94a884485304d8113903a4081e807b0f3af9a))
* use iso8601 for determining dataset age ([f46872a](https://github.com/vrk-kpa/opendata-ckan/commit/f46872a504bf7964129a09df7f220fec0140b4d4))
* ytp_recommendation webassets typo ([2fa4853](https://github.com/vrk-kpa/opendata-ckan/commit/2fa48532fb5f439fb93c99da68cfc9124c3bbf3a))

## [2.0.6](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.5...v2.0.6) (2022-03-28)


### Bug Fixes

* disable ckanext-reminder snippets in dataset views pending migration ([9375a88](https://github.com/vrk-kpa/opendata-ckan/commit/9375a8826191601e937e7a8ae12d6a89c99b11ca))

## [2.0.5](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.4...v2.0.5) (2022-03-28)


### Bug Fixes

* Update README to trigger build ([50c0917](https://github.com/vrk-kpa/opendata-ckan/commit/50c0917d63340b3ef3908cf73c49f0c8e6be20aa))

## [2.0.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.3...v2.0.4) (2022-03-28)


### Bug Fixes

* tag list route name, advanced search link translation ([b489437](https://github.com/vrk-kpa/opendata-ckan/commit/b4894373a2441c443477091c68d5c1a112b81c0e))

## [2.0.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.2...v2.0.3) (2022-03-18)


### Bug Fixes

* Upgrade ckan database ([a3e5e1c](https://github.com/vrk-kpa/opendata-ckan/commit/a3e5e1c6551a1241fe2df3fc7280f3cc75c3f469))

## [2.0.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.1...v2.0.2) (2022-03-10)


### Bug Fixes

* Update licence year to trigger build ([17b207f](https://github.com/vrk-kpa/opendata-ckan/commit/17b207f94167c9ce578d71a0991c150051d55108))

## [2.0.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.0...v2.0.1) (2022-03-10)


### Bug Fixes

* Disable archiver for now ([2d1dae1](https://github.com/vrk-kpa/opendata-ckan/commit/2d1dae10c5a8ff0dd7af7b85ed240923e0f533cc))
* disable non-working cli commands ([0f89454](https://github.com/vrk-kpa/opendata-ckan/commit/0f894548f55a6f58d47e02e38cea78c9a6a20067))
* Fix relative import ([3dc31ac](https://github.com/vrk-kpa/opendata-ckan/commit/3dc31ac01f84dc8fd14dc48e46b6e85832729e3e))
* use assets instead of resources ([41e2178](https://github.com/vrk-kpa/opendata-ckan/commit/41e21781534fd3c4cc9140a8c480ea3ad46a7fea))
* Use correct ckan path for scripts ([747c8a8](https://github.com/vrk-kpa/opendata-ckan/commit/747c8a83134537d5bd29f8b9e972b5293a7907b7))

# [2.0.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.6.1...v2.0.0) (2022-03-09)


### Features

* Merge pull request [#36](https://github.com/vrk-kpa/opendata-ckan/issues/36) from vrk-kpa/ckan-2.9 ([63fd6cb](https://github.com/vrk-kpa/opendata-ckan/commit/63fd6cb3cd18a3fcb3cace95a0721503778a9466))


### BREAKING CHANGES

* Upgrade to ckan 2.9.5

## [1.6.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.6.0...v1.6.1) (2022-03-09)


### Bug Fixes

* spatial search expanded map bug ([4741530](https://github.com/vrk-kpa/opendata-ckan/commit/4741530f8387a678cd1a088cfc85f43e5ecfe27f))

# [1.6.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.11...v1.6.0) (2022-03-04)


### Bug Fixes

* **AV-1509:** Merge pull request [#22](https://github.com/vrk-kpa/opendata-ckan/issues/22) from vrk-kpa/AV-1509--facet-filters-WCAB-fix ([3873ab4](https://github.com/vrk-kpa/opendata-ckan/commit/3873ab4babfdbd64cbdd8bb1a91070acf5f5431d))


### Features

* **AV-1361:** Merge pull request [#29](https://github.com/vrk-kpa/opendata-ckan/issues/29) from vrk-kpa/AV-1361--spatial-search ([e782037](https://github.com/vrk-kpa/opendata-ckan/commit/e78203746a6620dfe16a0cb00f5672dbf7c1a4e2))

## [1.5.11](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.10...v1.5.11) (2022-03-02)


### Bug Fixes

* **AV-1414:** Use also url_type in comparison for resources action text ([c821ce9](https://github.com/vrk-kpa/opendata-ckan/commit/c821ce9f274df717e641ee0db4b28c7371718893))
* **AV-1588:** Don't use REMOTE_ADDR as fallback ([5f3f2c4](https://github.com/vrk-kpa/opendata-ckan/commit/5f3f2c44a3f6a92e692422ccd15bd13895232208))
* **AV-1588:** Make recommendation feature to use original client ip instead of proxy servers ([ce3a6be](https://github.com/vrk-kpa/opendata-ckan/commit/ce3a6be53244fd9cc076cb786aa6e478cc923df2))
* **AV-1589:** Reposition recommend button and text ([19ccbb3](https://github.com/vrk-kpa/opendata-ckan/commit/19ccbb35fd9c591b94df50225660f18af5178bef))
* **AV-1618:** Export translations for showcase ([cbf449f](https://github.com/vrk-kpa/opendata-ckan/commit/cbf449f02905d5817e213307a5297c71c6708460))

## [1.5.10](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.9...v1.5.10) (2022-02-28)


### Bug Fixes

* **AV-1530:** Replace inline-css on error pages ([23859b6](https://github.com/vrk-kpa/opendata-ckan/commit/23859b64917db21b4eb59269e490e28eb98ec741))
* **AV-1530:** Update also submodule ([6cbd45c](https://github.com/vrk-kpa/opendata-ckan/commit/6cbd45c78104571d82711ab95f7cd326a4eab70d))

## [1.5.9](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.8...v1.5.9) (2022-02-25)


### Bug Fixes

* **AV-1550:** Flake8-fix ([002a20d](https://github.com/vrk-kpa/opendata-ckan/commit/002a20d491616571898d6080f448801c2a70c3a4))
* **AV-1550:** Implementation of new design for organization list. Also fixes for issues that was broken by new changes ([d1dfc08](https://github.com/vrk-kpa/opendata-ckan/commit/d1dfc08ddc9f37e1c0d154eb3370ab90e9b50c6c))

## [1.5.8](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.7...v1.5.8) (2022-02-18)


### Bug Fixes

* **AV-1644:** Fixed dataset descriptions font-size. Also fixed issue with show more-buttons top margin when description is long enough ([3f607da](https://github.com/vrk-kpa/opendata-ckan/commit/3f607da58575680ee549b031959e0ae4ce704a9f))
* **AV-1644:** Update assets ([2a96f14](https://github.com/vrk-kpa/opendata-ckan/commit/2a96f140419ade36107eb540fa1519909c32fe8b))
* **AV-1644:** Update assets ([dd92882](https://github.com/vrk-kpa/opendata-ckan/commit/dd92882d38e3ed472e3082367e981720d2e03290))

## [1.5.7](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.6...v1.5.7) (2022-02-18)


### Bug Fixes

* **AV-1618:** Minor fixes to make tests working. Also remove store icons from template as those doesn't exist in new design ([07f2ac2](https://github.com/vrk-kpa/opendata-ckan/commit/07f2ac2fd2dfad488e03b718646904a5e8e72b21))

## [1.5.6](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.5...v1.5.6) (2022-02-10)


### Bug Fixes

* **AV-1618:** Minor fixes on dataset-lists main title and resource page ([3c2d7b3](https://github.com/vrk-kpa/opendata-ckan/commit/3c2d7b34b9fa79d7366448a590faac93e696432b))
* **AV-1618:** Showcase list layout fixed, single showcase fixes started ([71db9ff](https://github.com/vrk-kpa/opendata-ckan/commit/71db9ff3929e62fb617bc2e06210e128327e2d72))
* **AV-1618:** Showcase list layout styles matched with newest design ([ada2758](https://github.com/vrk-kpa/opendata-ckan/commit/ada2758148093f15a5fae0beb4a0cb00a4e2e6ab))

## [1.5.5](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.4...v1.5.5) (2022-02-03)


### Bug Fixes

* **AV-1415:** Push, translate and pull transifex translations ([760038c](https://github.com/vrk-kpa/opendata-ckan/commit/760038c6120f915b174ab47368db5ab0f5b19907))
* **AV-1531:** Implement new design for dataset list, also fix issues in multiple other layouts ([06edbdf](https://github.com/vrk-kpa/opendata-ckan/commit/06edbdfb10a7b7b43e3e1f99c377dad965379698))
* Update assets ([bfdac75](https://github.com/vrk-kpa/opendata-ckan/commit/bfdac75350076455792147c49d680a95a79906fe))

## [1.5.4](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.3...v1.5.4) (2022-02-03)


### Bug Fixes

* **AV-1414:** Show text "Download" instead of "Open" for downloadable resources in datasets resource-list. ([2986b15](https://github.com/vrk-kpa/opendata-ckan/commit/2986b15ca98b6d25b291154c43619191d3ea88c7))

## [1.5.3](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.2...v1.5.3) (2022-01-27)


### Bug Fixes

* search-index rebuild add ignore errors flag ([cebfb53](https://github.com/vrk-kpa/opendata-ckan/commit/cebfb5325e6c717251afb8ebd78a9b255f9ee566))

## [1.5.2](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.1...v1.5.2) (2022-01-27)


### Bug Fixes

* remove --only-missing flag from search-index rebuild cmd during init ([91aa2d7](https://github.com/vrk-kpa/opendata-ckan/commit/91aa2d73f28bf1492a9f25982463c95b13f7e2a6))

## [1.5.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.5.0...v1.5.1) (2022-01-26)


### Bug Fixes

* **AV-1096:** Replace get_original_method with chained_action ([48e4caf](https://github.com/vrk-kpa/opendata-ckan/commit/48e4caf1a87e8c884f0e87386e06d8cfc94abec2))

# [1.5.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.4.1...v1.5.0) (2022-01-25)


### Features

* **AV-1614:** simplify volume setup, decreases startup time ([640d284](https://github.com/vrk-kpa/opendata-ckan/commit/640d2844b0611c88e806dc19d662191573a1c0e1))

## [1.4.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.4.0...v1.4.1) (2022-01-21)


### Bug Fixes

* **AV-1569:** add missing production.ini vars for ckanext-ytp_recommendation ([dee13b2](https://github.com/vrk-kpa/opendata-ckan/commit/dee13b203dbaca547436fa3ee34147aa41c70241))
* **AV-1569:** update build scripts and configs from main repo ([846565c](https://github.com/vrk-kpa/opendata-ckan/commit/846565cadb64d2875b58873dad1204d5e5938856))
* **AV-1569:** update modules from main repo + fix line endings to LF ([b538f39](https://github.com/vrk-kpa/opendata-ckan/commit/b538f3966dfbd01333c02b909e7b284879b2877c))
* **AV-1569:** update submodules ([57bb900](https://github.com/vrk-kpa/opendata-ckan/commit/57bb90034cb47a9bd3846f9f18f3844efe6f19e1))

# [1.4.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.3.1...v1.4.0) (2022-01-21)


### Features

* update ckan from 2.8.8 to 2.8.10 ([3b88112](https://github.com/vrk-kpa/opendata-ckan/commit/3b88112f3f4a28ab3883946bd22d89195d815b1a))

## [1.3.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.3.0...v1.3.1) (2022-01-20)


### Bug Fixes

* remove EFS migration procedure from init_filesystems.sh ([304d5a9](https://github.com/vrk-kpa/opendata-ckan/commit/304d5a99d571aa30489c76b4dec597447fe9560f))

# [1.3.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.8...v1.3.0) (2022-01-12)


### Features

* add optional integration to dynatrace ([50907df](https://github.com/vrk-kpa/opendata-ckan/commit/50907dfa267d3a6a052353f0b80dad07de8f908b))

## [1.2.8](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.7...v1.2.8) (2022-01-07)


### Bug Fixes

* adjust crond job script filenames to be more clear ([5f3db93](https://github.com/vrk-kpa/opendata-ckan/commit/5f3db932c63ee416691517731494c35e046161de))
* set supervisord/crond entrypoint script to wait for ckan initialization ([0b00752](https://github.com/vrk-kpa/opendata-ckan/commit/0b007523a31160d935b912ad19caba34eb9bd9a3))

## [1.2.7](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.6...v1.2.7) (2022-01-07)


### Bug Fixes

* adjust solr reindex command args on init (only-missing) ([5f0199e](https://github.com/vrk-kpa/opendata-ckan/commit/5f0199e53b6c1af7ccb89afc81dbabfcfd8bac3e))
* install and configure supervisord, runs via crond entrypoint ([443b4bf](https://github.com/vrk-kpa/opendata-ckan/commit/443b4bf7aa036c5f595da5f8061c584920550794))

## [1.2.6](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.5...v1.2.6) (2022-01-04)


### Bug Fixes

* necessary structural changes for using opendata-frontend as a submodule ([04c77ca](https://github.com/vrk-kpa/opendata-ckan/commit/04c77caf5ebd2e84acc337c1e6b19545f38f9842))

## [1.2.5](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.4...v1.2.5) (2022-01-03)


### Bug Fixes

* correct command for solr index refresh on init ([ce964eb](https://github.com/vrk-kpa/opendata-ckan/commit/ce964eb83f597050cd7c219a9c325429bce172ac))

## [1.2.4](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.3...v1.2.4) (2022-01-03)


### Bug Fixes

* **AV-1569:** update ckanext-cloudstorage to latest master commit ([38dce3b](https://github.com/vrk-kpa/opendata-ckan/commit/38dce3be87f9ce0c8aef88079b9f490878443fbb))

## [1.2.3](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.2...v1.2.3) (2021-12-31)


### Bug Fixes

* correct archiver cache_url_root & user_agent_string ([0f95c80](https://github.com/vrk-kpa/opendata-ckan/commit/0f95c804c7341c5300b13f8cf3c7b7165f4fddb9))

## [1.2.2](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.1...v1.2.2) (2021-12-31)


### Bug Fixes

* **AV-1569:** correct issues with embedded drupal component auth state ([302f590](https://github.com/vrk-kpa/opendata-ckan/commit/302f5901aaa9216d52ce8167ba28539d228905d4))
* **AV-1569:** improve init_filesystems script ([9dcbc2d](https://github.com/vrk-kpa/opendata-ckan/commit/9dcbc2d20a9ab7a0d21103fcbeefd6a9dd93745a))
* **ci:** simplify release job to mitigate random AWS OIDC problems ([c442d11](https://github.com/vrk-kpa/opendata-ckan/commit/c442d11d2d826b393a8701678b0fbd20a16a83e7))

## [1.2.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.2.0...v1.2.1) (2021-12-30)


### Bug Fixes

* **AV-1569:** add missing ckan patch and compile ckanext-matomo translations ([d22e361](https://github.com/vrk-kpa/opendata-ckan/commit/d22e361c6d3722c432be385ec2c478c155c0ff5a))
* **AV-1569:** do the botocore/boto/boto3 installation in base stage ([f73f2ba](https://github.com/vrk-kpa/opendata-ckan/commit/f73f2bab16eca89132f7ef3af93152ad4f8b22eb))
* **AV-1569:** fix ckanext-ytp_main drupal API call URL config param ([8cb739f](https://github.com/vrk-kpa/opendata-ckan/commit/8cb739f0d054985e0ecc67232d91ab19293c163f))
* **AV-1569:** install botocore/boto/boto3 manually to fix ckanext-cloudstorage issues ([eaa2f1c](https://github.com/vrk-kpa/opendata-ckan/commit/eaa2f1cc88859e20f62a197c5d07ff6e64b2c6a5))
* **AV-1569:** update modules from main repo + fix line endings to LF ([3fa066a](https://github.com/vrk-kpa/opendata-ckan/commit/3fa066afa93316f7410ca5d47a112597c0167d19))
* **AV-1569:** update submodules ([49b9b00](https://github.com/vrk-kpa/opendata-ckan/commit/49b9b0083192cc35557f254072f0ca9dcd27451a))
* **AV-1569:** update submodules ([941f50b](https://github.com/vrk-kpa/opendata-ckan/commit/941f50b8f423dc53b716295fa45210ab70587d6e))

# [1.2.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.1.1...v1.2.0) (2021-12-29)


### Features

* **AV-1563:** refactor project structure ([f9d2e4b](https://github.com/vrk-kpa/opendata-ckan/commit/f9d2e4b2016f0b1e95d75095c7a1a6e8a8e043f3))

## [1.1.1](https://github.com/vrk-kpa/opendata-ckan/compare/v1.1.0...v1.1.1) (2021-12-09)


### Bug Fixes

* rename CKAN_IMAGE_VERSION to CKAN_IMAGE_TAG ([d2f284d](https://github.com/vrk-kpa/opendata-ckan/commit/d2f284d70a18e6641e64297d76fca2ba62853bff))

# [1.1.0](https://github.com/vrk-kpa/opendata-ckan/compare/v1.0.0...v1.1.0) (2021-12-03)


### Features

* AV-1487: Local development environment ([#2](https://github.com/vrk-kpa/opendata-ckan/issues/2)) ([62cdf18](https://github.com/vrk-kpa/opendata-ckan/commit/62cdf189bfec735fe188bc83aa2d26f15a5ad1a1))

# 1.0.0 (2021-12-02)


### Bug Fixes

* **ci:** initial workflow setup for test, build, push, release ([88b39a8](https://github.com/vrk-kpa/opendata-ckan/commit/88b39a85681f13c2f77024f19779c7045e328f5e))
* **ci:** semantic-release based test/build/release workflows ([cb763fb](https://github.com/vrk-kpa/opendata-ckan/commit/cb763fb1fec2eb7a6a8753b22571bf40979de893))


### Features

* initial commit ([a3f6e28](https://github.com/vrk-kpa/opendata-ckan/commit/a3f6e28a0b7bbf28395bda487a16358416ff23b5))
