
![Picture](https://res.cloudinary.com/qunux/image/upload/v1594405830/configure-gitlab-ci-with-gcr_opt_ek4srf.png)

# This is a tag checker and image pusher
-----


There is the main template **.gitlab-ci.yml** file in the root of the catalogue. The file helps us integrate the code into folders with images.

Each folder contains the following file set:
* **.gitlab-ci.yml**
* **Dockerfile**
* **version.txt**

Each **.gitlab-ci.yml** file helps us to run through tags of our existing images in **GCR** with the help of [crane](https://github.com/google/go-containerregistry/tree/main/cmd/crane)
and push a new image of it does not exist. If it does the files can help to return the error`exit code 1`, and end the work.
Each image version is located in the file
**version.txt**. The version is assigned in turn.
