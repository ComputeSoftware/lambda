#!/bin/bash

set -euo pipefail

clojure -Spom
clojure -A:jar

mvn deploy:deploy-file -Dfile=lib.jar -DrepositoryId=clojars -Durl=https://clojars.org/repo -DpomFile=pom.xml
rm lib.jar