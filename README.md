# qbee-ci-cd-example
CI/CD example for qbee.io. Code for both Github and Gitlab is present.

There are 4 vars that need to set under Settings -> CI/CD in GitLab:
﻿
- QBEE_USER=<your-username>
- QBEE_PW=<your-password>
- QBEE_GROUP_ID_DEV=<group-id-for-dev>
- QBEE_GROUP_ID_PROD=<group-id-for-prod>

Regular commits will be deployed to QBEE_GROUP_ID_DEV, while tags will be deployed to QBEE_GROUP_ID_PROD. 
Remember to use git tag names that correspond to the Debian package format for version.

This will hopefully get you started with CI/CD using GitLab and qbee. For questions please feel free to take contact.

See also here for a Github blog post.

https://qbee.io/misc/building-and-provisioning-deb-packages-via-ci-cd/
