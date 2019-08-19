# This file has been generated by dapp2nix 1.1.0, do not edit.

{ solidityPackage, solc, dapp2 }:

let
  inherit (builtins) map listToAttrs attrNames attrValues;
  mapAttrs = if (builtins ? mapAttrs)
    then builtins.mapAttrs
    else f: attrs:
      listToAttrs (map
        (name: { inherit name; value = f name attrs."${name}"; })
        (attrNames attrs));

  defaults = {
    inherit solc;
    test-hevm = dapp2.test-hevm;
    doCheck = true;
  };

  package = spec: let
    spec' = defaults // (removeAttrs spec [ "repo'" "src'" ]);
    deps = map (spec:
      package (spec // { inherit (spec') solc test-hevm doCheck; })
    ) (attrValues spec'.deps);
  in solidityPackage (spec' // { inherit deps; });

  packageSpecs = mapAttrs (_: package);

  specs = rec {
    ds-auth_f783169 = rec {
      name = "ds-auth";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-auth-f783169-source";
        url = "https://github.com/dapphub/ds-auth";
        rev = "f783169408c278f85e26d77ba7b45823ed9503dd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-chief_ea05ee0 = rec {
      name = "ds-chief";
      deps = {
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-chief-ea05ee0-source";
        url = "https://github.com/dapphub/ds-chief";
        rev = "ea05ee0413a8b3852142664a6c04d6e4923be426";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-exec_c53aab4 = rec {
      name = "ds-exec";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-exec-c53aab4-source";
        url = "https://github.com/dapphub/ds-exec";
        rev = "c53aab4ba91645b30b0644972ef016b5ee606ca8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-guard_4678e1c = rec {
      name = "ds-guard";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-guard-4678e1c-source";
        url = "https://github.com/dapphub/ds-guard";
        rev = "4678e1c74fce1542f1379f11325d7bfbbb897344";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-math_784079b = rec {
      name = "ds-math";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-math-784079b-source";
        url = "https://github.com/dapphub/ds-math";
        rev = "784079b72c4d782b022b3e893a7c5659aa35971a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-note_beef816 = rec {
      name = "ds-note";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-note-beef816-source";
        url = "https://github.com/dapphub/ds-note";
        rev = "beef8166f2184a4bac3d02abdb944647fd735060";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-pause_81fd9d4 = rec {
      name = "ds-pause";
      deps = {
        ds-chief = ds-chief_ea05ee0;
        ds-proxy = ds-proxy_379f5e2;
        ds-spell = ds-spell_c908b78;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-pause-81fd9d4-source";
        url = "https://github.com/dapphub/ds-pause";
        rev = "81fd9d43e56615267a10e29710716342bcca0ce3";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-proxy_379f5e2 = rec {
      name = "ds-proxy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-proxy-379f5e2-source";
        url = "https://github.com/dapphub/ds-proxy";
        rev = "379f5e2fc0a6ed5a7a96d3f211cc5ed8761baf00";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-roles_0138372 = rec {
      name = "ds-roles";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-roles-0138372-source";
        url = "https://github.com/dapphub/ds-roles";
        rev = "01383725a4240000c0e274e55bdcf251570fd486";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-spell_c908b78 = rec {
      name = "ds-spell";
      deps = {
        ds-exec = ds-exec_c53aab4;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-spell-c908b78-source";
        url = "https://github.com/dapphub/ds-spell";
        rev = "c908b7807f08661b4eca97adff6d9561d0116244";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-stop_6e2bda6 = rec {
      name = "ds-stop";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-stop-6e2bda6-source";
        url = "https://github.com/dapphub/ds-stop";
        rev = "6e2bda69cb3cbf25a475491d9bc22969adb05993";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-test_a4e4005 = rec {
      name = "ds-test";
      deps = {
      };
      repo' = {
        name = "ds-test-a4e4005-source";
        url = "https://github.com/dapphub/ds-test";
        rev = "a4e40050b809705b15867939f5829540c50cb84f";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-thing_5e49fcb = rec {
      name = "ds-thing";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-math = ds-math_784079b;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-thing-5e49fcb-source";
        url = "https://github.com/dapphub/ds-thing";
        rev = "5e49fcbdf4ef8ccd241423ed114576f51c42f1e0";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-token_cee36a1 = rec {
      name = "ds-token";
      deps = {
        ds-math = ds-math_784079b;
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-token-cee36a1-source";
        url = "https://github.com/dapphub/ds-token";
        rev = "cee36a14685b3f93ffa0332853d3fcd943fe96a5";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_d2107c1 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-d2107c1-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "d2107c1751f086aed3c38a2f433d6945444af7d6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_f307171 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-f307171-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "f3071713afbd583991637f8cfab5e0d29466dffd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-weth_dfada5b = rec {
      name = "ds-weth";
      deps = {
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-weth-dfada5b-source";
        url = "https://github.com/dapphub/ds-weth";
        rev = "dfada5bca7a00046c1ddc37c0c43106a8c0a4e5a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-cdp-manager_be03749 = rec {
      name = "dss-cdp-manager";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_85a3ce7;
      };
      repo' = {
        name = "dss-cdp-manager-be03749-source";
        url = "https://github.com/makerdao/dss-cdp-manager";
        rev = "be0374987c1f2053aa98c43e684503227816c057";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_85a3ce7 = rec {
      name = "dss-deploy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-guard = ds-guard_4678e1c;
        ds-pause = ds-pause_81fd9d4;
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-weth = ds-weth_dfada5b;
        dss = dss_526fa6a;
        esm = esm_e0a85d6;
      };
      repo' = {
        name = "dss-deploy-85a3ce7-source";
        url = "https://github.com/makerdao/dss-deploy";
        rev = "85a3ce73977b5b840fe9e5446bcb8b012131d484";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-proxy-actions_86db44d = rec {
      name = "dss-proxy-actions";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-cdp-manager = dss-cdp-manager_be03749;
        proxy-registry = proxy-registry_59e077f;
      };
      repo' = {
        name = "dss-proxy-actions-86db44d-source";
        url = "https://github.com/makerdao/dss-proxy-actions";
        rev = "86db44d72ab004da2db0250d731d2dfc69e57521";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss_526fa6a = rec {
      name = "dss";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-value = ds-value_f307171;
      };
      repo' = {
        name = "dss-526fa6a-source";
        url = "https://github.com/makerdao/dss";
        rev = "526fa6afb9ea771f846b895ae0aee361876f2bdb";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    erc20_f322aac = rec {
      name = "erc20";
      deps = {
      };
      repo' = {
        name = "erc20-f322aac-source";
        url = "https://github.com/dapphub/erc20";
        rev = "f322aaca414db343337814097d2af43214bee96c";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    esm_e0a85d6 = rec {
      name = "esm";
      deps = {
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "esm-e0a85d6-source";
        url = "https://github.com/makerdao/esm";
        rev = "e0a85d6215cec2a7786c1dcaee188a3ff393710d";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    gov-polling-generator_d08e43e = rec {
      name = "gov-polling-generator";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "gov-polling-generator-d08e43e-source";
        url = "https://github.com/makerdao/gov-polling-generator";
        rev = "d08e43ee1a8d6daac3fc0bc4aee5a0c92f62c2e8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    line-spell_d63225a = rec {
      name = "line-spell";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_85a3ce7;
      };
      repo' = {
        name = "line-spell-d63225a-source";
        url = "https://github.com/makerdao/line-spell";
        rev = "d63225a9602385b3876b6229283576c48578a5f4";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    median_a5f39fa = rec {
      name = "median";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "median-a5f39fa-source";
        url = "https://github.com/makerdao/median";
        rev = "a5f39fab14f3b3bcd9576072da59984af8952606";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    multicall_b8771d9 = rec {
      name = "multicall";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "multicall-b8771d9-source";
        url = "https://github.com/makerdao/multicall";
        rev = "b8771d9fe2b1429ae95cae622c4d880fd897562a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    osm_504c474 = rec {
      name = "osm";
      deps = {
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        ds-value = ds-value_d2107c1;
      };
      repo' = {
        name = "osm-504c474-source";
        url = "https://github.com/makerdao/osm";
        rev = "504c47437916e29d918a9d1f40eb1f7595f3e9ce";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    proxy-registry_59e077f = rec {
      name = "proxy-registry";
      deps = {
        ds-proxy = ds-proxy_379f5e2;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "proxy-registry-59e077f-source";
        url = "https://github.com/makerdao/proxy-registry";
        rev = "59e077f30133b059e1319a4830985da54dd2ee4b";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    scd-mcd-migration_e5d38b9 = rec {
      name = "scd-mcd-migration";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-cdp-manager = dss-cdp-manager_be03749;
      };
      repo' = {
        name = "scd-mcd-migration-e5d38b9-source";
        url = "https://github.com/makerdao/scd-mcd-migration";
        rev = "e5d38b9029a3426190d2d8967860937258a4c600";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-medians_2352489 = rec {
      name = "testchain-medians";
      deps = {
        ds-test = ds-test_a4e4005;
        median = median_a5f39fa;
      };
      repo' = {
        name = "testchain-medians-2352489-source";
        url = "https://github.com/makerdao/testchain-medians";
        rev = "23524894915202452f5bb39e7c1d4375a4482c4f";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-pause-proxy-actions_de2cdf9 = rec {
      name = "testchain-pause-proxy-actions";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_85a3ce7;
      };
      repo' = {
        name = "testchain-pause-proxy-actions-de2cdf9-source";
        url = "https://github.com/makerdao/testchain-pause-proxy-actions";
        rev = "de2cdf98a370cae89b9e307a5530b2f5fe13e9ac";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    token-faucet_d7349d1 = rec {
      name = "token-faucet";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "token-faucet-d7349d1-source";
        url = "https://github.com/makerdao/token-faucet";
        rev = "d7349d13f6cd83e8d0aa21e93544988fab0b6b24";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    vote-proxy_6fdbee3 = rec {
      name = "vote-proxy";
      deps = {
        ds-chief = ds-chief_ea05ee0;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "vote-proxy-6fdbee3-source";
        url = "https://github.com/makerdao/vote-proxy";
        rev = "6fdbee3ac48bb915e715668374c1deba95cdb6f6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy-scripts = rec {
      name = "dss-deploy-scripts";
      deps = {
        ds-guard = ds-guard_4678e1c;
        dss-deploy = dss-deploy_85a3ce7;
        dss-proxy-actions = dss-proxy-actions_86db44d;
        gov-polling-generator = gov-polling-generator_d08e43e;
        line-spell = line-spell_d63225a;
        multicall = multicall_b8771d9;
        osm = osm_504c474;
        scd-mcd-migration = scd-mcd-migration_e5d38b9;
        testchain-medians = testchain-medians_2352489;
        testchain-pause-proxy-actions = testchain-pause-proxy-actions_de2cdf9;
        token-faucet = token-faucet_d7349d1;
        vote-proxy = vote-proxy_6fdbee3;
      };
      src' = ../.;
      src = ../src;
    };
    this = dss-deploy-scripts;
  };
in {
  inherit package packageSpecs specs;
  this = package specs.this;
  deps = packageSpecs specs.this.deps;
  version = "1.1.0";
}
