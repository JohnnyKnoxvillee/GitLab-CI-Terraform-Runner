
![Picture](https://miro.medium.com/v2/resize:fit:828/format:webp/1*eoVLBnjq42U71wFvFXOBCw.png)

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
