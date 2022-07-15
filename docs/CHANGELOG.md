## [2.11.6](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.5...v2.11.6) (2022-07-15)


### Bug Fixes

* **AV-1172:** Default sorting fixes ([56ed47b](https://github.com/vrk-kpa/opendata-ckan/commit/56ed47b30d2bea8d9b489e85aa842db503b0a989))
* **AV-1174:** Added a check for auto sorting option ([2c2e4a1](https://github.com/vrk-kpa/opendata-ckan/commit/2c2e4a14fde04c792045d438c1ad3512864a3180))
* **AV-1174:** added default empty option to organization page ([5eb1c54](https://github.com/vrk-kpa/opendata-ckan/commit/5eb1c54cd072cab78dc75ac06aa7726815318c70))
* **AV-1174:** Added secondary sorting term to search based sorting ([82f5936](https://github.com/vrk-kpa/opendata-ckan/commit/82f593679bf053e4c76d0bacf80fc2fa8dedc1e8))
* **AV-1174:** Added the used default sorting option to the ones populated into the list ([86f3960](https://github.com/vrk-kpa/opendata-ckan/commit/86f3960665d4ad4f5602536222c7655c73518dcb))
* **AV-1174:** Adding default sorting for advanced search and dataset ([e0e877b](https://github.com/vrk-kpa/opendata-ckan/commit/e0e877b42477535557d9da6bf14275c0506284fe))
* **AV-1174:** flake8 ([39cb78c](https://github.com/vrk-kpa/opendata-ckan/commit/39cb78c9bdff7aab513f081358b7125b4ae3718c))

## [2.11.5](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.4...v2.11.5) (2022-06-30)


### Bug Fixes

* **AV-1701:** Bypass query_params for showcases search_form so that they wont be dropped off when sorting is changed. ([c68a2a7](https://github.com/vrk-kpa/opendata-ckan/commit/c68a2a7a0326c8ceb87f81dfdb4323b4be59b059))

## [2.11.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.3...v2.11.4) (2022-06-30)


### Bug Fixes

* **AV-1552:** Design implementation for organization forms ([1fc0bcf](https://github.com/vrk-kpa/opendata-ckan/commit/1fc0bcf77d3fcd6507d106b028900062385c9685))
* **AV-1552:** Hide some fields from non sysadmins on organization forms. ([d4a4ef5](https://github.com/vrk-kpa/opendata-ckan/commit/d4a4ef5d69f100502512f5e425b4d8062b70f61e))
* **AV-1552:** If existing settings for personal_datasets or public organization is set, it should be used for new fields ([f6032ae](https://github.com/vrk-kpa/opendata-ckan/commit/f6032aecb1e707ca6b98211834bae611737cbea1))
* **AV-1552:** Linter fixes ([c468ba7](https://github.com/vrk-kpa/opendata-ckan/commit/c468ba7a2ff35bbf155831ca0ab1c964ada18a6a))
* **AV-1552:** Update opendata-assets module ([39d9dcb](https://github.com/vrk-kpa/opendata-ckan/commit/39d9dcb632bdd60c549dd6c6ee2b555087c3887a))

## [2.11.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.2...v2.11.3) (2022-06-29)


### Bug Fixes

* **AV-762:** handle string group items ([a13b0c8](https://github.com/vrk-kpa/opendata-ckan/commit/a13b0c8f756f6e78c3937733a82a7c3a1f01b775))

## [2.11.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.1...v2.11.2) (2022-06-29)


### Bug Fixes

* **AV-1752:** Fix error with showcases indexing ([b241a31](https://github.com/vrk-kpa/opendata-ckan/commit/b241a31822c0b10d3282fc09cf762f680af32b84))

## [2.11.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.11.0...v2.11.1) (2022-06-29)


### Bug Fixes

* **AV-762:** Updated fuseki configuration documentation to README.md ([8d34d74](https://github.com/vrk-kpa/opendata-ckan/commit/8d34d74dd8451c0c7a0f033ce8692c0af1202b4c))

# [2.11.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.10.1...v2.11.0) (2022-06-29)


### Features

* **AV-762:** Added SPARQL support and fixed some edge case errors in DCAT serialization ([164bb69](https://github.com/vrk-kpa/opendata-ckan/commit/164bb6960f872be3a3638d170bed62d4c734679f))

## [2.10.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.10.0...v2.10.1) (2022-06-27)


### Bug Fixes

* **AV-1743:** Removed comment ([324de87](https://github.com/vrk-kpa/opendata-ckan/commit/324de87e3974505ecb310d562bffd1ebc486ae24))
* **AV-1743:** Updated dataset sorting ([c3c871f](https://github.com/vrk-kpa/opendata-ckan/commit/c3c871fee7b2bc9d9abae16778a86418f8415b2e))
* **AV-1743:** Updated dataset sorting flake fix ([95da883](https://github.com/vrk-kpa/opendata-ckan/commit/95da883a8b19f137b0a5a466c17dea6a5cfd4a55))

# [2.10.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.5...v2.10.0) (2022-06-23)


### Bug Fixes

* **AV-1743:** Remove extra_translation from organization_show as it broke calls without flask request, and it is not needed anymore ([e516f73](https://github.com/vrk-kpa/opendata-ckan/commit/e516f73afedca9d3bbe727b868f8aea50abfbd91))
* flake8 ([acc0efb](https://github.com/vrk-kpa/opendata-ckan/commit/acc0efb3c2ec65fb5195d7620a7732a1221f0936))


### Features

* **AV-1743:** Add producer_type to solr and facets ([800e029](https://github.com/vrk-kpa/opendata-ckan/commit/800e0293add11ab6cc5c7e7e0c3422fee1217641))

## [2.9.5](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.4...v2.9.5) (2022-06-22)


### Bug Fixes

* Do not index coupled resources ([1e36c66](https://github.com/vrk-kpa/opendata-ckan/commit/1e36c6654df5d88f4d31f9f7328a920c673d5b11))

## [2.9.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.3...v2.9.4) (2022-06-14)


### Bug Fixes

* **AV-1704:** Update localizations ([37c32cd](https://github.com/vrk-kpa/opendata-ckan/commit/37c32cd9dd5bae2c7d6c479882127447acb3c3fb))

## [2.9.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.2...v2.9.3) (2022-06-14)


### Bug Fixes

* **AV-1750:** Removed sorting showcases by rating ([328a3d9](https://github.com/vrk-kpa/opendata-ckan/commit/328a3d94d2979ddaa0a70969f91eff094531f4c0))

## [2.9.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.1...v2.9.2) (2022-06-14)


### Bug Fixes

* **AV-1323:** Lint-fixes ([24e1716](https://github.com/vrk-kpa/opendata-ckan/commit/24e1716cacc86a1c81be8cb55cb9f01e48e28b4d))
* **AV-1323:** Update dcat catalogs publisher- description-, issued- and spatial- metadata ([a62466e](https://github.com/vrk-kpa/opendata-ckan/commit/a62466ef8a72b38c5b5d93a825817d0eb17287c3))

## [2.9.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.9.0...v2.9.1) (2022-06-14)


### Bug Fixes

* **AV-1744:** Removed sort by source from dataset and advanced search ([6ddc057](https://github.com/vrk-kpa/opendata-ckan/commit/6ddc0576c94ccb5155e4ebe0a528afc5983e5db4))

# [2.9.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.8.0...v2.9.0) (2022-06-10)


### Bug Fixes

* **AV-1384:** Update submodule commit ([1cf50f8](https://github.com/vrk-kpa/opendata-ckan/commit/1cf50f8138664bdd3378040ebb78c0513b174fae))
* **AV-1506:** Fixed texts in apiset resource list and apiset form ([dbc01f7](https://github.com/vrk-kpa/opendata-ckan/commit/dbc01f763b0e84fc98572c0c35b65e8fd5ca3994))


### Features

* **AV-1384:** Add support for related categories in apisets ([a6eb442](https://github.com/vrk-kpa/opendata-ckan/commit/a6eb4427103b80759e030f65753978e2c3ef453f))

# [2.8.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.7.4...v2.8.0) (2022-06-10)


### Bug Fixes

* **AV-1383:** Fix linter issues ([532dbdf](https://github.com/vrk-kpa/opendata-ckan/commit/532dbdfc357851d40706f79d6898c0de12a00020))
* **AV-1383:** Still some linter fixes ([72cdbed](https://github.com/vrk-kpa/opendata-ckan/commit/72cdbed60622ea95ea9fb9e30f5abfe4af28dc08))
* **AV-1383:** Update translation sources ([1b6d26a](https://github.com/vrk-kpa/opendata-ckan/commit/1b6d26a8038f9f371960341edd4fbb5ef85ad3bf))


### Features

* **AV-1383:** Add support for associating showcases with apisets. ([70ceee5](https://github.com/vrk-kpa/opendata-ckan/commit/70ceee5b604561c9d8c0d436a2ae6ea39b4ad229))

## [2.7.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.7.3...v2.7.4) (2022-06-10)


### Bug Fixes

* **AV-1549:** added new translations and changed styling ([935732f](https://github.com/vrk-kpa/opendata-ckan/commit/935732fedc8eb2cd8a4b8de73801a07b26c68942))
* **AV-1549:** advanced search fixes ([462eaf7](https://github.com/vrk-kpa/opendata-ckan/commit/462eaf7a431c7a950c6cf0451d3364f7f276d35d))
* **AV-1549:** updated styling ([1cdd485](https://github.com/vrk-kpa/opendata-ckan/commit/1cdd4851e00dae38b7824042f672d2c0145ef209))

## [2.7.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.7.2...v2.7.3) (2022-06-08)


### Bug Fixes

* **AV-1640:** Fix migration of organization approval ([992ac81](https://github.com/vrk-kpa/opendata-ckan/commit/992ac81c3d106fc876989ef2b02245795e2e28ad))

## [2.7.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.7.1...v2.7.2) (2022-06-07)


### Bug Fixes

* **AV-1670:** Move ckan to data path ([6a08d7d](https://github.com/vrk-kpa/opendata-ckan/commit/6a08d7d85a16f21742750f351331b96f129afbc0))
* **AV-1670:** Re-enable development server ([9fa164d](https://github.com/vrk-kpa/opendata-ckan/commit/9fa164da9ac41bf56200dd807a337b474da7e3cc))

## [2.7.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.7.0...v2.7.1) (2022-06-06)


### Bug Fixes

* **AV-1675:** Convert CC0-1.0 license_id in sixodp-harvester ([4f0de82](https://github.com/vrk-kpa/opendata-ckan/commit/4f0de82915e9b144f249895cd9b6a767ac9010e2))

# [2.7.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.6.3...v2.7.0) (2022-06-03)


### Features

* **AV-1528:** assets submodule update ([1350f0b](https://github.com/vrk-kpa/opendata-ckan/commit/1350f0be8769d15810027df11f894f16db37bd68))
* **AV-1528:** Implementing the resource page ([9222aa9](https://github.com/vrk-kpa/opendata-ckan/commit/9222aa945b64fefef7b824e4283a1abcc6392f87))

## [2.6.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.6.2...v2.6.3) (2022-06-02)


### Bug Fixes

* **AV-1734:** Remove report metadata translation during generation ([eb6e2fb](https://github.com/vrk-kpa/opendata-ckan/commit/eb6e2fbac0ea1ef9b1b3308a7788288d22c8f8ff))

## [2.6.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.6.1...v2.6.2) (2022-06-02)


### Bug Fixes

* **AV-1704:** Updated translations ([f49f633](https://github.com/vrk-kpa/opendata-ckan/commit/f49f633c931a459458467656f972f4512f3ba760))

## [2.6.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.6.0...v2.6.1) (2022-06-02)


### Bug Fixes

* **AV-1695:** fix search result text to also work for other types of datasets ([197ec50](https://github.com/vrk-kpa/opendata-ckan/commit/197ec50d46d9c4e7560668edbed0445391715867))
* **AV-1695:** fix search result text to also work for other types of datasets ([b02be0f](https://github.com/vrk-kpa/opendata-ckan/commit/b02be0f6d908eb7851004bdf11326db511cb10a3))
* **AV-1695:** fix search result text to also work for other types of datasets ([b1a3da4](https://github.com/vrk-kpa/opendata-ckan/commit/b1a3da401bc474390e865e278ea2584ab8be2eec))
* **AV-1695:** revert change that is not needed ([5536800](https://github.com/vrk-kpa/opendata-ckan/commit/5536800b4301a30da8bd4e5c52e1542c9c5c8792))
* **AV-1695:** solve merge conflicts ([33fd407](https://github.com/vrk-kpa/opendata-ckan/commit/33fd4076d1e89349c6c77d52e4a900ac41438be0))

# [2.6.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.5.0...v2.6.0) (2022-06-01)


### Bug Fixes

* **AV-1551:** Update assets ([c7a220e](https://github.com/vrk-kpa/opendata-ckan/commit/c7a220e5aca3ed5ea7ea092aa7009f7cdd5addc5))
* Fix wrong template used due to migration failure ([c0c85cc](https://github.com/vrk-kpa/opendata-ckan/commit/c0c85ccb934acfdd9acf267a33266c7dc000b0ec))


### Features

* **AV-1551:** New member page layouts ([2781877](https://github.com/vrk-kpa/opendata-ckan/commit/27818773beb6e7acfcc0f61fda00309635579724))
* **AV-1551:** Style organization about page ([176f732](https://github.com/vrk-kpa/opendata-ckan/commit/176f73245af51584660eb7bbd942b6404ed8e8d5))

# [2.5.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.4.2...v2.5.0) (2022-05-30)


### Features

* **AV-1551:** New organization page layout ([433ea60](https://github.com/vrk-kpa/opendata-ckan/commit/433ea6070c7a0ab4e6fbdb5ba4b2fd009ee9e6ec))
* **AV-1551:** Update assets ([bcd4930](https://github.com/vrk-kpa/opendata-ckan/commit/bcd4930c36f4825608f2c6e2fce548f290b34901))

## [2.4.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.4.1...v2.4.2) (2022-05-25)


### Bug Fixes

* **AV-1496:** Add provider-, acces-right- and terms of service-infos in apiset view ([b24fcb1](https://github.com/vrk-kpa/opendata-ckan/commit/b24fcb17d5318d9315e68b76455f66536bf04b39))
* **AV-1506:** Extract new translations ([447ca76](https://github.com/vrk-kpa/opendata-ckan/commit/447ca76befdad38f43ae5038b8ce977184e88999))
* **AV-1506:** Fix some texts in templates to match with design ([5f37631](https://github.com/vrk-kpa/opendata-ckan/commit/5f37631dc7458d40c9c8062a8cb8afdfb9936730))
* **AV-1715:** Fix showcases broken layout when there's query parameters ([d6c034d](https://github.com/vrk-kpa/opendata-ckan/commit/d6c034db29e411f80d90d1c495d9b2b0ec255a0e))
* **AV-1727:** Fix dict merge to use python3 compatible syntax ([fcfbd82](https://github.com/vrk-kpa/opendata-ckan/commit/fcfbd824137c49ce02e65fe427bc798a6c361050))

## [2.4.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.4.0...v2.4.1) (2022-05-19)


### Bug Fixes

* Remove extra character from template ([b173c2e](https://github.com/vrk-kpa/opendata-ckan/commit/b173c2e3717f5dea01b0e385a3e51a2c893689e3))

# [2.4.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.6...v2.4.0) (2022-05-19)


### Bug Fixes

* **AV-1507:** Fix undefined checkbox form-macro in drag-n-drop uploader ([9554372](https://github.com/vrk-kpa/opendata-ckan/commit/955437292054eabd60e8230ea067854f7a59d82b))
* flake8 ([73f3e8a](https://github.com/vrk-kpa/opendata-ckan/commit/73f3e8a6b4fdc988f2600e2409715749c25542bb))


### Features

* Add browser javascript to sentry ([ee25515](https://github.com/vrk-kpa/opendata-ckan/commit/ee25515ef1942d5f5f04eb308d8fddc973104ef0))

## [2.3.6](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.5...v2.3.6) (2022-05-19)


### Bug Fixes

* **AV-1507:** Fix submodules lint error ([5077808](https://github.com/vrk-kpa/opendata-ckan/commit/5077808c0f6ea38f1d2a6948894786a8d4a358c9))
* **AV-1507:** Implement add api form design ([a0e4f31](https://github.com/vrk-kpa/opendata-ckan/commit/a0e4f311f3a206a3512cfcd37ff56ea37e0ce303))
* **AV-1507:** Revert resource form back to use ckan default ui ([8ce9e1c](https://github.com/vrk-kpa/opendata-ckan/commit/8ce9e1cb1ef6db25045842d276116ff23ccd499c))
* **AV-1507:** Update submodule commits ([ef4d937](https://github.com/vrk-kpa/opendata-ckan/commit/ef4d937ba312454b7fcb667e1d07a2dd42f330ee))

## [2.3.5](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.4...v2.3.5) (2022-05-19)


### Bug Fixes

* **AV-1663:** Add pagination for showcase list ([3888ece](https://github.com/vrk-kpa/opendata-ckan/commit/3888ece0ea238b66ed0ba9221f2fd13008360167))

## [2.3.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.3...v2.3.4) (2022-05-18)


### Bug Fixes

* **AV-1708:** Fix cloudstorage file handling ([32f6cee](https://github.com/vrk-kpa/opendata-ckan/commit/32f6cee5281ace34376c48bae7bcdcd317604b4d))

## [2.3.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.2...v2.3.3) (2022-05-18)


### Bug Fixes

* **AV-1712:** Fix crash when viewing invalid geoview resources ([7e1c0c0](https://github.com/vrk-kpa/opendata-ckan/commit/7e1c0c0741ab6801c1d450b45c1ff965bc1890cf))

## [2.3.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.1...v2.3.2) (2022-05-17)


### Bug Fixes

* Logged in users should not get cached pages ([fa10a53](https://github.com/vrk-kpa/opendata-ckan/commit/fa10a536bbdca9bdef67689ae16ee77ea66e3c74))

## [2.3.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.3.0...v2.3.1) (2022-05-16)


### Bug Fixes

* **AV-1710:** Use named route instead controller+action for post-recommend redirect ([637f5d2](https://github.com/vrk-kpa/opendata-ckan/commit/637f5d295bf960de61eb3830303151ecf0c67c40))

# [2.3.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.7...v2.3.0) (2022-05-13)


### Bug Fixes

* **AV-1496:** Update opendata-assets commit ([5cd7eaa](https://github.com/vrk-kpa/opendata-ckan/commit/5cd7eaa6a8d86e6b8e5c773c1d1e743694120f20))


### Features

* **AV-1496:** Implement apisets single api views. Also minor changes to make templates using apisets templates based on dataset type ([0ca4b68](https://github.com/vrk-kpa/opendata-ckan/commit/0ca4b6825ddc469a94296114913c581bf3617c78))

## [2.2.7](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.6...v2.2.7) (2022-05-13)


### Bug Fixes

* **AV-1680:** Fix migration issues in cloudstorage ([a31d652](https://github.com/vrk-kpa/opendata-ckan/commit/a31d6522d28e08bb66c4e7ad68861e90561c8f36))
* Futureproof version check in cloudstorage ([e12ad3b](https://github.com/vrk-kpa/opendata-ckan/commit/e12ad3b360c1fccff564b23dd7101ae5fdf75cf3))
* Init matomo and cloudstorage databases based on env vars ([920744a](https://github.com/vrk-kpa/opendata-ckan/commit/920744a6e999910c715b61196ad0cac570f4f4ea))

## [2.2.6](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.5...v2.2.6) (2022-05-12)


### Bug Fixes

* **AV-1707:** Fix a non-admin logged in user causing an error in statistics ([bceff00](https://github.com/vrk-kpa/opendata-ckan/commit/bceff00e094c838d3c432c976da31b108b4c6db1))

## [2.2.5](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.4...v2.2.5) (2022-05-12)


### Bug Fixes

* **AV-1706:** Fix UnboundLocalError when a linked user is requested by user name and not found ([98377fe](https://github.com/vrk-kpa/opendata-ckan/commit/98377fea3b8f9c3a4eba4ee0081e4233d6850a90))
* **AV-1706:** Refactor to not reuse the user variable ([7f12217](https://github.com/vrk-kpa/opendata-ckan/commit/7f12217cdd6240acb0a9fd94d7fa3c206b0b4864))

## [2.2.4](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.3...v2.2.4) (2022-05-12)


### Bug Fixes

* **AV-1586:** Improve ckanext-matomo CKAN 2.8 compatibility ([c5e4ce2](https://github.com/vrk-kpa/opendata-ckan/commit/c5e4ce2e30228964ad16310ca607d884c3afc3c7))
* **AV-1705:** Fix permissions related organization tree error ([5570416](https://github.com/vrk-kpa/opendata-ckan/commit/55704169103ad3535a01c3d678b850028a9f1dc5))

## [2.2.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.2...v2.2.3) (2022-05-11)


### Bug Fixes

* **AV-1693:** Fix issue in header nav dropdowns with changing horizontal spacing on hover ([7464018](https://github.com/vrk-kpa/opendata-ckan/commit/7464018a2a93beb46c1b1dbce2dbd5ce44f431e5))
* **AV-1693:** Update assets-commit ([ac9988f](https://github.com/vrk-kpa/opendata-ckan/commit/ac9988fda89ce7b6dcdd74ffc8358ca5b6089c20))

## [2.2.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.1...v2.2.2) (2022-05-11)


### Bug Fixes

* **AV-1699:** Fix matomo reports and fetching ([8d7a059](https://github.com/vrk-kpa/opendata-ckan/commit/8d7a059a242daf441c3b50526166c373de7a4706))

## [2.2.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.2.0...v2.2.1) (2022-05-09)


### Bug Fixes

* **AV-1676:** Use solr as a ckanext.spatial.search_backend to prevent issues with postgis ([e62762f](https://github.com/vrk-kpa/opendata-ckan/commit/e62762f0349829b7e0e8e60a3369ff825c7c6b17))

# [2.2.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.1.3...v2.2.0) (2022-05-09)


### Features

* **AV-1704:** Update translations ([bbc26ac](https://github.com/vrk-kpa/opendata-ckan/commit/bbc26ac4306b183ad3634c51e73a5a88bd671c7a))

## [2.1.3](https://github.com/vrk-kpa/opendata-ckan/compare/v2.1.2...v2.1.3) (2022-05-04)


### Bug Fixes

* **AV-1698:** Add ckan 2.9 support for ckanext-disqus ([040b1bf](https://github.com/vrk-kpa/opendata-ckan/commit/040b1bfbd8d4714bcfd0d1f09bc3cf9d130125fb))
* **AV-1698:** Update submodule commit after pr-merge in there ([d852d36](https://github.com/vrk-kpa/opendata-ckan/commit/d852d36364fd9c595aa443134de77b0c42c41c8d))

## [2.1.2](https://github.com/vrk-kpa/opendata-ckan/compare/v2.1.1...v2.1.2) (2022-05-04)


### Bug Fixes

* **AV-1697:** Update ckanext-report from upstream. ([2cea3af](https://github.com/vrk-kpa/opendata-ckan/commit/2cea3af22621215dd7d32580f439622326e0d330))

## [2.1.1](https://github.com/vrk-kpa/opendata-ckan/compare/v2.1.0...v2.1.1) (2022-05-04)


### Bug Fixes

* **AV-1668:** Include organizations without translated titles in organization_tree_list ([f0a8757](https://github.com/vrk-kpa/opendata-ckan/commit/f0a875744f2861906c283b2f5ef2d4251e349c73))

# [2.1.0](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.16...v2.1.0) (2022-05-03)


### Features

* **AV-1690:** Convert package keywords to lowercase ([ac1dfee](https://github.com/vrk-kpa/opendata-ckan/commit/ac1dfeedcf1f357f2e8365e5993c69d8090ca150))

## [2.0.16](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.15...v2.0.16) (2022-04-29)


### Bug Fixes

* DataStore link in resource edit page ([22f2ad1](https://github.com/vrk-kpa/opendata-ckan/commit/22f2ad1ff5183c78da102aed4d2e154952565d0c))
* spatial query draw icon ([7e1c41b](https://github.com/vrk-kpa/opendata-ckan/commit/7e1c41b90e4e2dfb6d8be87896aed24e2d7a9f7b))

## [2.0.15](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.14...v2.0.15) (2022-04-20)


### Bug Fixes

* Align organization form buttons ([1c9ae36](https://github.com/vrk-kpa/opendata-ckan/commit/1c9ae3672a7c1e1266a26698a481d4735e59cd54))
* Use suomifi buttons in organization form ([17de611](https://github.com/vrk-kpa/opendata-ckan/commit/17de6118a9646473363ffc126adc476bc4f3dbfa))

## [2.0.14](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.13...v2.0.14) (2022-04-19)


### Bug Fixes

* fix incorrectly sized resource icons ([621a268](https://github.com/vrk-kpa/opendata-ckan/commit/621a2683cdf2271f169e6c6868ec11c6d0580bd9))

## [2.0.13](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.12...v2.0.13) (2022-04-14)


### Bug Fixes

* ckanext-spatial styles ([971aa6f](https://github.com/vrk-kpa/opendata-ckan/commit/971aa6ffb6505a43611cad1fe1fcf7999f536006))

## [2.0.12](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.11...v2.0.12) (2022-04-13)


### Bug Fixes

* ckanext-spatial/ckanext-geoview maps ([cb29a4d](https://github.com/vrk-kpa/opendata-ckan/commit/cb29a4d57dae48c57fac5b74b957f871570e7583))
* matomo report route names ([160d487](https://github.com/vrk-kpa/opendata-ckan/commit/160d4874a05831d22a63a1138d5b7fa3d3c53721))
* showcase filter list CKAN 2.9 compatibility ([9f78088](https://github.com/vrk-kpa/opendata-ckan/commit/9f7808884e129f3346048941a7f9a32d64c5fb38))

## [2.0.11](https://github.com/vrk-kpa/opendata-ckan/compare/v2.0.10...v2.0.11) (2022-04-05)


### Bug Fixes

* flake8 style fixes to ckanext-harvest ([b030c08](https://github.com/vrk-kpa/opendata-ckan/commit/b030c0809cc003ed5728412f758bd58ff4afc928))
* Handle removed harvest sources gracefully in harvest_source_list ([07ecf56](https://github.com/vrk-kpa/opendata-ckan/commit/07ecf569c0d1b8847ab8e3a1d816ed4b8b6b107e))
* Modify showcase package form to enable multipart file uploads ([684f49a](https://github.com/vrk-kpa/opendata-ckan/commit/684f49aa81d4671795300f87c840f9e5a363f45a))
* Skip reminder notifications for packages the user is not authorized to view ([2e5c873](https://github.com/vrk-kpa/opendata-ckan/commit/2e5c873e807772f08b300d6a07443dc1e6d7ea84))

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
