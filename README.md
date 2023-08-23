
![Picture](https://res.cloudinary.com/qunux/image/upload/v1594405830/configure-gitlab-ci-with-gcr_opt_ek4srf.png)

# This is a tag checker and image pusher
-----


There is the main template **.gitlab-ci.yml** file in the root of the catalogue. The file helps us integrate the code into folders with images.

Each folder contains the following file set:
* **.gitlab-ci.yml**
* **Dockerfile**
* **version.txt**

Each **.gitlab-ci.yml** file helps us to check tags of our existing images in **GCR** with the help of [crane](https://github.com/google/go-containerregistry/tree/main/cmd/crane)
and push a new image of it does not exist. If it does the files can help to return the error `exit code 1`, and end the work.
Each image version is located in the file
**version.txt**.

### Adding an Image to Google Container Registry
---
To add an image to the **Container Registry** manually, you need to create a new folder and a new file named **version.txt** with the corresponding image version. 
Push the image to this folder, and if this version doesn't exist yet, the pipeline will add the image to **GCR**. 
If the version already exists, you will receive an error with `exit code 1` and the pipeline will fail.
