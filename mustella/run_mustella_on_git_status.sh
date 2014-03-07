#!/bin/bash
################################################################################
##
##  Licensed to the Apache Software Foundation (ASF) under one or more
##  contributor license agreements.  See the NOTICE file distributed with
##  this work for additional information regarding copyright ownership.
##  The ASF licenses this file to You under the Apache License, Version 2.0
##  (the "License"); you may not use this file except in compliance with
##  the License.  You may obtain a copy of the License at
##
##      http://www.apache.org/licenses/LICENSE-2.0
##
##  Unless required by applicable law or agreed to in writing, software
##  distributed under the License is distributed on an "AS IS" BASIS,
##  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##  See the License for the specific language governing permissions and
##  limitations under the License.
##
################################################################################
##
## run_mustella_on_git_status.sh - runs git status, then runs 
## mini_run.sh -changes and runs mini_run-failures if there are failures
## mpte: does not build the sdk.  Assumes you did that already

cd ..

git status >gitstatus.txt
cd ./mustella/utilities/MustellaTestChooser/src
"$AIR_HOME/bin/adl" -runtime "$AIR_HOME/runtimes/air/win" MustellaTestChooser-app.xml -- -file
cd ../../../..
if [ -s mustella/changes.txt ]
then
    cd mustella
    sh ./test_changes.sh
    cd ..
fi

