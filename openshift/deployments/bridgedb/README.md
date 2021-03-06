BridgeDb service to allow mapping gene and protein identifiers. 

There will be multiple versions of this docker image:

Version 1 (docker image tag: 2.3.0) currently contains identifier mappings for metabolites and a large variety of species, containing all the identifier mapping files available.

Version 2 (tag: orn-v2) contains identifier mappings for Homo sapiens, Mus musculus and Rattus norvegicus, as well as metabolite identifier mappings. This will be the lighter version of the image with only the identifiers of the most used organisms. It also has configurations for resource limits, and readiness and liveness probes.

## Deploying

*To deploy*:
```
$ ./bridgedb-deploy.sh 
deploymentconfig "bridgedb" created
service "bridgedb" created
route "bridgedb-app" created
route "bridgedb-swagger" created
```

The image tag to be used can be specified with the `IMAGE_TAG` parameter.

The base hostname that is used can be specified with the `ROUTES_BASENAME` parameter that is determined by the 
`$OS_ROUTES_BASENAME` environment variable that is automatically sourced from the file `../setenv.sh`.


*To undeploy*:
```
$ ./bridgedb-undeploy.sh 
deploymentconfig "bridgedb" deleted
route "bridgedb-app" deleted
route "bridgedb-swagger" deleted
service "bridgedb" deleted
```

