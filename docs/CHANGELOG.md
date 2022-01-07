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
